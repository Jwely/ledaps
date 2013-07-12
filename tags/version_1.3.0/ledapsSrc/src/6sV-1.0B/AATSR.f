      subroutine aatsr(iwa)
c
c created: J. Nieke july/2003
c aatsr response function values 
c are based on version (ESA/Vega/H. Tait)
c v55_srf.txt, v659_srf.txt, v870_srf.txt, v16_srf.txt
c Values are interpolated to 2.5nm wavelenght intervals
c 
c
      real s,wlinf,wlsup
      common /sixs_ffu/ s(1501),wlinf,wlsup
      real sr(8,1501),wli(8),wls(8)
      integer iwa,l,i
c band 1 of AATSR  (0.525000 => 0.592500um)
      DATA (SR(1,L),L=1,1501)/ 111*0.,
     A 0.00114, 0.00120, 0.00109, 0.00373, 0.00495, 0.01321,
     A 0.03203, 0.08190, 0.25129, 0.69749, 0.97208, 1.00000,
     A 0.98655, 0.92234, 0.78359, 0.64632, 0.55174, 0.50241,
     A 0.41232, 0.23254, 0.10744, 0.05272, 0.02769, 0.01528,
     A 0.00970, 0.00540,0.00114, 
     A1363*0./
c band 2 of AATSR  (0.6275 => 0.6975um)
      DATA (SR(2,L),L=1,1501)/ 152*0.,
     A 0.00007, 0.00106, 0.00259, 0.00588, 0.01313, 0.03452,
     A 0.09925, 0.25868, 0.53662, 0.75311, 0.90226, 0.99149,
     A 1.00000, 0.96028, 0.90110, 0.76907, 0.47949, 0.21557,
     A 0.08929, 0.04225, 0.02272, 0.01292, 0.00778, 0.00473,
     A 0.00264, 0.00144, 0.00060, 0.00031, 
     A1321*0./
c band 3 of AATSR  (0.8325 => 0.9025um)
      DATA (SR(3,L),L=1,1501)/ 233*0.,
     A 0.00059, 0.00104, 0.00210, 0.00389, 0.00839, 0.01991,
     A 0.05815, 0.20311, 0.59432, 0.95300, 0.92949, 0.87362,
     A 0.91049, 1.00000, 0.99161, 0.79466, 0.46286, 0.20633,
     A 0.08993, 0.04324, 0.02196, 0.01186, 0.00674, 0.00372,
     A 0.00199, 0.00099, 0.00035, 0.00001, 0.00001,
     A1239*0./
c band 4 of AATSR  (1.4475 => 1.7775um)
      DATA (SR(4,L),L=1,1501)/ 479*0.,
     A 0.00001, 0.00001, 0.00000, 0.00000, 0.00000, 0.00000,
     A 0.00000, 0.00000, 0.00000, 0.00000, 0.00000, 0.00001,
     A 0.00003, 0.00007, 0.00010, 0.00016, 0.00018, 0.00019,
     A 0.00038, 0.00070, 0.00074, 0.00087, 0.00099, 0.00112,
     A 0.00144, 0.00178, 0.00210, 0.00252, 0.00314, 0.00381,
     A 0.00482, 0.00617, 0.00808, 0.01087, 0.01507, 0.02115,
     A 0.03014, 0.04352, 0.06372, 0.09368, 0.13303, 0.18172,
     A 0.23900, 0.29735, 0.36285, 0.43193, 0.50378, 0.57403,
     A 0.64865, 0.72474, 0.79732, 0.86795, 0.92477, 0.96695,
     A 0.99173, 1.00000, 0.99937, 0.99592, 0.98624, 0.97501,
     A 0.95695, 0.93594, 0.90325, 0.87127, 0.83451, 0.79304,
     A 0.75320, 0.70611, 0.65958, 0.60791, 0.55348, 0.49819,
     A 0.43767, 0.37291, 0.30937, 0.24880, 0.19559, 0.14848,
     A 0.10947, 0.07940, 0.05786, 0.04258, 0.03172, 0.02439,
     A 0.01898, 0.01500, 0.01187, 0.00984, 0.00810, 0.00664,
     A 0.00558, 0.00481, 0.00407, 0.00346, 0.00293, 0.00260, 
     A 0.00218, 0.00180, 0.00167, 0.00149, 0.00132, 0.00127,
     A 0.00118, 0.00083, 0.00056, 0.00049, 0.00048, 0.00048,
     A 0.00046, 0.00043, 0.00038, 0.00031, 0.00027, 0.00024,
     A 0.00024, 0.00023, 0.00024, 0.00024, 0.00024, 0.00025,
     A 0.00025, 0.00026, 0.00026, 0.00027, 0.00027, 0.00027,
     A 0.00028, 0.00028, 0.00028, 0.00029, 0.00029, 0.00028,
     A 0.00032, 
     A889*0./ 
c channel 1 lower and upper wavelength
      wli(1)=0.525
      wls(1)=0.5925
c channel 2 lower and upper wavelength
      wli(2)=0.6275
      wls(2)=0.6975
c channel 3 lower and upper wavelength
      wli(3)=0.8325
      wls(3)=0.9025
c channel 4 lower and upper wavelength
      wli(4)=1.4475
      wls(4)=1.7775


      do 1 i=1,1501
      s(i)=sr(iwa,i)
    1 continue

      wlinf=wli(iwa)
      wlsup=wls(iwa)
      return
      end    
