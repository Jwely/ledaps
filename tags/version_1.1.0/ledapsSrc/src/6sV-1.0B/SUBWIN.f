      subroutine   subwin

      real z5(34),p5(34),t5(34),wh5(34),wo5(34)
      real z,p,t,wh,wo
      common /sixs_atm/z(34),p(34),t(34),wh(34),wo(34)
      integer i
c
c     model: subarctique winter mc clatchey
c
      data(z5(i),i=1, 34)/
     1    0.,    1.,    2.,    3.,    4.,    5.,    6.,    7.,    8.,
     2    9.,   10.,   11.,   12.,   13.,   14.,   15.,   16.,   17.,
     3   18.,   19.,   20.,   21.,   22.,   23.,   24.,   25.,   30.,
     4   35.,   40.,   45.,   50.,   70.,  100.,99999./
      data (p5(i),i=1,34) /
     a1.013e+03,8.878e+02,7.775e+02,6.798e+02,5.932e+02,5.158e+02,
     a4.467e+02,3.853e+02,3.308e+02,2.829e+02,2.418e+02,2.067e+02,
     a1.766e+02,1.510e+02,1.291e+02,1.103e+02,9.431e+01,8.058e+01,
     a6.882e+01,5.875e+01,5.014e+01,4.277e+01,3.647e+01,3.109e+01,
     a2.649e+01,2.256e+01,1.020e+01,4.701e+00,2.243e+00,1.113e+00,
     a5.719e-01,4.016e-02,3.000e-04,0.000e+00/
      data (t5(i),i=1,34) /
     a2.571e+02,2.591e+02,2.559e+02,2.527e+02,2.477e+02,2.409e+02,
     a2.341e+02,2.273e+02,2.206e+02,2.172e+02,2.172e+02,2.172e+02,
     a2.172e+02,2.172e+02,2.172e+02,2.172e+02,2.166e+02,2.160e+02,
     a2.154e+02,2.148e+02,2.141e+02,2.136e+02,2.130e+02,2.124e+02,
     a2.118e+02,2.112e+02,2.160e+02,2.222e+02,2.347e+02,2.470e+02,
     a2.593e+02,2.457e+02,2.100e+02,2.100e+02/
      data (wh5(i),i=1,34) /
     a1.200e+00,1.200e+00,9.400e-01,6.800e-01,4.100e-01,2.000e-01,
     a9.800e-02,5.400e-02,1.100e-02,8.400e-03,5.500e-03,3.800e-03,
     a2.600e-03,1.800e-03,1.000e-03,7.600e-04,6.400e-04,5.600e-04,
     a5.000e-04,4.900e-04,4.500e-04,5.100e-04,5.100e-04,5.400e-04,
     a6.000e-04,6.700e-04,3.600e-04,1.100e-04,4.300e-05,1.900e-05,
     a6.300e-06,1.400e-07,1.000e-09,0.000e+00/
      data (wo5(i),i=1,34) /
     a4.100e-05,4.100e-05,4.100e-05,4.300e-05,4.500e-05,4.700e-05,
     a4.900e-05,7.100e-05,9.000e-05,1.600e-04,2.400e-04,3.200e-04,
     a4.300e-04,4.700e-04,4.900e-04,5.600e-04,6.200e-04,6.200e-04,
     a6.200e-04,6.000e-04,5.600e-04,5.100e-04,4.700e-04,4.300e-04,
     a3.600e-04,3.200e-04,1.500e-04,9.200e-05,4.100e-05,1.300e-05,
     a4.300e-06,8.600e-08,4.300e-11,0.000e+00/
      do 1 i=1,34
      z(i)=z5(i)
      p(i)=p5(i)
      t(i)=t5(i)
      wh(i)=wh5(i)
      wo(i)=wo5(i)
    1 continue
      return
      end
