#! /bin/sh
###########################################################################
# shell script file to update the cloud mask
#
# Modified on 10/16/2012 by Gail Schmidt, USGS EROS
# - obtain the pixel size from the HDF metadata and pass it to the cmrbv1.0
#   executable vs. hard coding the pixel size to 28.5
#
# Modified on 3/11/2013 by Gail Schmidt, USGS EROS
# - need to be able to process Polar Stereographic projections
# - utilize a geo_xy.ERROR file to flag and catch errors in the geo2xy and
#   xy2geo processing
###########################################################################
lndsr_inp=$1
echo "Processing metadata file: '$lndsr_inp'"

# where is this executable?
exe_dir=`echo $0 | sed -e "s|/[^/]*$||"`
echo "lndsrbm.ksh exe_dir: '$exe_dir'"

if test -z "$lndsr_inp"
then
  echo "FAIL  : no input filename"
  echo "USAGE : lndsrbm.ksh lndsr.*.txt"
  exit
fi
if test ! -f "$lndsr_inp"
then
  echo "FAIL  : '$lndsr_inp' not a valid file"
  echo "USAGE : lndsrbm.ksh lndsr.*.txt"
  exit
fi

# find lndsr*.hdf file
filein=`grep SR_FILE $lndsr_inp | awk '{print $3}'`
if test ! -f "$filein"
then
  echo "FAIL  : can't find '$filein'"
  exit
fi

# find lndth*.hdf file
fileth=`grep TEMP_FILE $lndsr_inp | awk '{print $3}'`
if test ! -f "$fileth"
then
  echo "FAIL  : can't find '$fileth'"
  exit
fi

# find REANALYSIS ancillary file 
fileanc=`grep PRWV_FIL $lndsr_inp | awk '{print $3}'`
if test ! -f "$fileanc"
  then
    echo "FAIL  : no ancillary file '$fileanc'"
    exit
fi

echo "using ancillary data '$fileanc'"

case=`basename $filein .hdf`
case="$case.txt"

# append thermal band to lndsr*.hdf file
echo "appending thermal file $fileth to lndsr file $filein"
$exe_dir/lndapp -sr $filein -th $fileth

# work with metadata (ncdump will be in the local directory)
$exe_dir/ncdump -h $filein > tmp.meta

# compute lat,long of the center of the scene
cat tmp.meta | grep Coordinate >tmp.updatecm
lon1=`grep WestBoundingCoordinate tmp.updatecm | awk '{print $3}'`
lon2=`grep EastBoundingCoordinate tmp.updatecm | awk '{print $3}'`
lat1=`grep NorthBoundingCoordinate tmp.updatecm | awk '{print $3}'`
lat2=`grep SouthBoundingCoordinate tmp.updatecm | awk '{print $3}'`
echo "West bound: '$lon1' East bound: '$lon2' North bound: '$lat1' South bound: '$lat2'"
lonc=`echo $lon1 $lon2 | awk '{print ($1+$2)/2.}'`
latc=`echo $lat1 $lat2 | awk '{print ($1+$2)/2.}'`
echo "Center long: '$lonc' Center lat: '$latc'"
ygrib=`echo $latc | awk '{print int((90.-$1)*73/180.)}'` 
xgrib=`echo $lonc | awk '{print int((180.+$1)*144/360.)}'` 
echo "ygrib: '$ygrib' xgrib: '$xgrib'"
$exe_dir/SDSreader3.0 -f $fileanc -w "$ygrib $xgrib 1 1" -v >tmp.dumpfileanc
grep SDS tmp.dumpfileanc | grep air | awk '{print $8}' | tr -d "," | awk '{print ($1*0.01)+512.81}' >tmp.airtemp

sctest=`grep  AcquisitionDate tmp.meta | awk '{print $3}' | awk -F "T" '{print $2}' | tr -d '"'`
echo "acquisition time: '$sctest'"
if [ $sctest != "00:00:00.000000Z" ]
then
scenetime=`grep  AcquisitionDate tmp.meta | awk '{print $3}' | awk -F "T" '{print $2}' | awk -F : '{print $1+$2/60.}'`
else
scenetime=`echo 10.5 $lonc | awk '{print $1-$2/15.}'`
fi
scenetimet=`echo $scenetime | awk '{printf "%d\n", int($1*1000000)}'`
scenetime=`echo $scenetime | awk '{printf "%f\n", int($1*100000)/100000}'`
if [ $scenetimet -lt 0 ]
then
scenetime=`echo $scenetime | awk '{print $1+24}'`
echo "WARNING WE ASSUME THE DATE IS GMT IS IT?"
fi
echo "Scene time: '$scenetime'"
cat tmp.airtemp
tclear=`$exe_dir/comptemp $scenetime <tmp.airtemp`
echo "tclear: '$tclear'"

# remove the geo_xy.ERROR file if it exists.  it is used to flag errors with
# the xy2geo or geo2xy processing.
geoxy_ERROR_FILE="geo_xy.ERROR"
if test -f "$geoxy_ERROR_FILE"
then
  echo "Removing geoxy ERROR file: '$geoxy_ERROR_FILE'"
  rm $geoxy_ERROR_FILE
fi

# compute scene orientation
# get row and col of image center
ccol=`grep  "XDim_Grid =" tmp.meta | tail -1 | awk '{print $3/2}'`
crow=`grep  "YDim_Grid =" tmp.meta | tail -1 | awk '{print $3/2}'`
echo "Center col/row: '$ccol' '$crow'"

# compute lat,long of the center
str=`$exe_dir/xy2geo $filein $ccol $crow`
if test -f "$geoxy_ERROR_FILE"
then
  echo "Error running xy2geo"
  echo $str
  exit
fi
clat=`echo $str | awk '{print $9}'`
clon=`echo $str | awk '{print $7}'`
echo "Center lat/long: '$clat' '$clon'"

# compute lat,lon of the point 100 pixels north from the center 
cpcol=$ccol
cprow=`echo $crow | awk '{print $1-100}'`
str=`$exe_dir/xy2geo $filein $cpcol $cprow`
if test -f "$geoxy_ERROR_FILE"
then
  echo "Error running xy2geo"
  echo $str
  exit
fi
cplat=`echo $str | awk '{print $9}'`
cplon=`echo $str | awk '{print $7}'`

# now move to the longitude of the center of the image
cplon=$clon
# and compute the deviation in pixel
str=`$exe_dir/geo2xy $filein $cplon $cplat`
if test -f "$geoxy_ERROR_FILE"
then
  echo "Error running geo2xy"
  echo $str
  exit
fi
cscol=`echo $str | awk '{print $9}'`
csrow=`echo $str | awk '{print $7}'`
echo "cscol/csrow: '$cscol' '$csrow'"
deltay=`echo $csrow $crow | awk '{print $2-$1}'`
deltax=`echo $cscol $ccol | awk '{print $1-$2}'`
echo "delta x/y: '$deltax' '$deltay'"
adjnorth=`$exe_dir/compadjn $deltax $deltay`
echo "Northern adjustment: '$adjnorth'"
ts=`grep SolarZenith tmp.meta | awk '{print $3}' | sed -e "s/f//"`
fs=`grep SolarAzimuth tmp.meta | awk '{print $3}' | sed -e "s/f//"`

# get the pixel size
pixsize=`grep PixelSize tmp.meta | awk '{print $3}' | sed -e "s/f//"`
echo "Pixel size: '$pixsize'"

# write values needed for updating the cloud mask
echo $tclear $ts 0.0 $fs $adjnorth $pixsize
echo $tclear $ts 0.0 $fs $adjnorth $pixsize >anc-$case

# update the cloud mask
echo "Updating cloud mask"
$exe_dir/cmrbv1.0 $filein <anc-$case

rm -f tmp.airtemp tmp.dumpfileanc tmp.meta tmp.updatecm anc-$case
