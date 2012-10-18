      subroutine   tm(iwa)
      real s,wlinf,wlsup
      common /sixs_ffu/ s(1501),wlinf,wlsup
      real sr(6,1501),wli(6),wls(6)
      integer iwa,l,i
 
c    1st spectral band of thematic mapper
 
      data (sr(1,l),l=1,1501)/  72*0.,
     a .0030, .0085, .0140, .0255, .0370, .0500, .0630, .2010,
     a .3390, .5030, .6670, .6935, .7200, .7525, .7850, .8030,
     a .8210, .8370, .8530, .8780, .9030, .9135, .9240, .9355,
     a .9470, .9625, .9780, .9835, .9890, .9860, .9830, .9060,
     a .8290, .7815, .7340, .5265, .3190, .1995, .0800, .0630,
     a .0460, .0380, .0300, .0230, .0160, .0120, .0080, .0065,
     a .0050, .0045, .0040, .0035, .0030,
     a1376*0./
c
c    2nd spectral band of thematic mapper
      data (sr(2,l),l=1,1501)/ 100*0.,
     a .0010, .0055, .0100, .0165, .0230, .0305, .0380, .1010,
     a .1640, .2710, .3780, .4750, .5720, .6150, .6580, .6945,
     a .7310, .7575, .7840, .8105, .8370, .8510, .8650, .8770,
     a .8890, .8965, .9040, .9055, .9070, .9070, .9070, .9095,
     a .9120, .9310, .9500, .9685, .9870, .9951, .9980, .9705,
     a .9430, .8655, .7880, .6250, .4620, .3330, .2040, .1505,
     a .0970, .0745, .0520, .0440, .0360, .0285, .0210, .0165,
     a .0120, .0090, .0060, .0030, .0000,
     a1340*0./
c
c    3rd spectral band of thematic mapper
 
      data (sr(3,l),l=1,1501)/ 132*0.,
     a .0020, .0020, .0020, .0020, .0020, .0030, .0040, .0060,
     a .0080, .0140, .0200, .0290, .0380, .0730, .1080, .2020,
     a .2960, .3840, .4720, .5245, .5770, .6625, .7480, .7830,
     a .8180, .8430, .8680, .8845, .9010, .9030, .9050, .9055,
     a .9060, .9200, .9340, .9520, .9700, .9815, .9930,1.0000,
     a .9980, .9770, .9560, .8715, .7870, .5775, .3680, .2435,
     a .1190, .0920, .0650, .0555, .0460, .0385, .0310, .0255,
     a .0200, .0160, .0120, .0090, .0060, .0055, .0050, .0040,
     a .0030,
     a1304*0./
c
c    4th spectral band of thematic mapper
 
      data (sr(4,l),l=1,1501)/ 192*0.,
     a .0020, .0035, .0050, .0060, .0070, .0080, .0090, .0140,
     a .0190, .0260, .0330, .0520, .0710, .1035, .1360, .2055,
     a .2750, .3615, .4480, .5505, .6530, .7410, .8290, .8795,
     a .9300, .9520, .9740, .9870,1.0000, .9955, .9910, .9855,
     a .9800, .9685, .9570, .9465, .9360, .9260, .9160, .9165,
     a .9170, .9180, .9190, .9195, .9200, .9215, .9230, .9240,
     a .9250, .9160, .9070, .8965, .8860, .8835, .8810, .8825,
     a .8840, .8825, .8810, .8705, .8600, .8410, .8220, .8030,
     a .7840, .7715, .7590, .7370, .7150, .5905, .4660, .3385,
     a .2110, .1440, .0770, .0540, .0310, .0230, .0150, .0115,
     a .0080, .0070, .0060, .0050, .0040, .0030, .0020, .0010,
     a .0000,
     a1220*0./
c
c    5th spectral band of thematic mapper

      data (sr(5,l),l=1,565)/ 501*0., 
     b .0000, .0003, .0007, .0010, .0013, .0015, .0018, .0020,
     a .0038, .0055, .0073, .0090, .0123, .0155, .0188, .0220,
     a .0393, .0565, .0738, .0910, .1410, .1910, .2410, .2910,
     a .3617, .4325, .5032, .5740, .6383, .7025, .7668, .8310,
     a .8622, .8935, .9248, .9560, .9522, .9485, .9447, .9410,
     a .9417, .9425, .9433, .9440, .9505, .9570, .9635, .9700,
     a .9738, .9775, .9813, .9850, .9833, .9815, .9797, .9780,
     a .9747, .9715, .9682, .9650, .9682, .9715, .9747, .9780
     a /
      data (sr(5,l) , l=566,1501)/ 
     a .9793, .9805, .9818, .9830, .9837, .9845, .9852, .9860,
     a .9838, .9815, .9793, .9770, .9815, .9860, .9905, .9950,
     a .9963, .9975, .9988,1.0000, .9992, .9985, .9977, .9970,
     a .9912, .9855, .9797, .9740, .9697, .9655, .9613, .9570,
     a .9553, .9535, .9517, .9500, .9505, .9510, .9515, .9520,
     a .9370, .9220, .9070, .8920, .8260, .7600, .6940, .6280,
     a .5507, .4735, .3962, .3190, .2780, .2370, .1960, .1550,
     a .1340, .1130, .0920, .0710, .0643, .0575, .0508, .0440,
     a .0385, .0330, .0275, .0220, .0197, .0175, .0152, .0130,
     a .0120, .0110, .0100, .0090, .0077, .0065, .0052, .0040,
     a .0037, .0035, .0032, .0030, .0027, .0025, .0022, .0020,
     c .0015, .0010, .0005, .0000,
     a 844*0./
c
c    7th spectral band of thematic mapper
 
      data (sr(6,l),l=1,760)/ 680*0.,
     a .0000, .0005, .0010, .0015, .0020, .0025, .0030, .0035,
     a .0040, .0043, .0045, .0048, .0050, .0055, .0060, .0065,
     a .0070, .0075, .0080, .0085, .0090, .0103, .0115, .0128,
     a .0140, .0153, .0165, .0178, .0190, .0233, .0275, .0318,
     a .0360, .0400, .0440, .0480, .0520, .0563, .0605, .0648,
     a .0690, .0768, .0845, .0923, .1000, .1125, .1250, .1375,
     a .1500, .1753, .2005, .2258, .2510, .2870, .3230, .3590,
     a .3950, .4313, .4675, .5038, .5400, .5788, .6175, .6563,
     a .6950, .7345, .7740, .8135, .8530, .8737, .8945, .9152,
     a .9360, .9398, .9435, .9473, .9510, .9472, .9435, .9397/
      data (sr(6,l),l=761,1501)/ 
     a .9360, .9385, .9410, .9435, .9460, .9500, .9540, .9580,
     a .9620, .9693, .9765, .9838, .9910, .9930, .9950, .9970,
     a .9990,1.0000, .9988, .9975, .9960, .9952, .9945, .9937,
     a .9930, .9922, .9915, .9908, .9900, .9815, .9730, .9645,
     a .9560, .9525, .9490, .9455, .9420, .9370, .9320, .9270,
     a .9220, .9205, .9190, .9175, .9160, .9135, .9110, .9085,
     a .9060, .9020, .8980, .8940, .8900, .8730, .8560, .8390,
     a .8220, .8058, .7895, .7732, .7570, .7545, .7520, .7495,
     a .7470, .7623, .7775, .7928, .8080, .8245, .8410, .8575,
     a .8740, .8292, .7845, .7397, .6950, .6290, .5630, .4970,
     a .4310, .3747, .3185, .2622, .2060, .1735, .1410, .1085,
     a .0760, .0653, .0545, .0438, .0330, .0275, .0220, .0165,
     a .0110, .0097, .0085, .0072, .0060, .0045, .0030, .0015,
     a .0000,
     a 636*0./
      wli(1)=0.43
      wls(1)=0.56
      wli(2)=0.5
      wls(2)=0.6499999
      wli(3)=0.5799999
      wls(3)=0.74
      wli(4)=0.73
      wls(4)=.95
      wli(5)=1.5025
      wls(5)=1.89
      wli(6)=1.95
      wls(6)=2.41
      do 1 i=1,1501
      s(i)=sr(iwa,i)
    1 continue
      wlinf=wli(iwa)
      wlsup=wls(iwa)
      return
      end

