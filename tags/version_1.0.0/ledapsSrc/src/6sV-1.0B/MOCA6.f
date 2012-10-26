      subroutine    moca6(a,inu)
       real a(8)
       real acr(8,256)
       integer inu,j,k,i
c     carbon monoxide (15300 - 17870 cm-1)
c
       data ((acr(k,j),k=1,8),j=  1,  8) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15300e+05, 0.15310e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15310e+05, 0.15320e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15320e+05, 0.15330e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15330e+05, 0.15340e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15340e+05, 0.15350e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15350e+05, 0.15360e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15360e+05, 0.15370e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15370e+05, 0.15380e+05/
       data ((acr(k,j),k=1,8),j=  9, 16) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15380e+05, 0.15390e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15390e+05, 0.15400e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15400e+05, 0.15410e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15410e+05, 0.15420e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15420e+05, 0.15430e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15430e+05, 0.15440e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15440e+05, 0.15450e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15450e+05, 0.15460e+05/
       data ((acr(k,j),k=1,8),j= 17, 24) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15460e+05, 0.15470e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15470e+05, 0.15480e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15480e+05, 0.15490e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15490e+05, 0.15500e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15500e+05, 0.15510e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15510e+05, 0.15520e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15520e+05, 0.15530e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15530e+05, 0.15540e+05/
       data ((acr(k,j),k=1,8),j= 25, 32) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15540e+05, 0.15550e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15550e+05, 0.15560e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15560e+05, 0.15570e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15570e+05, 0.15580e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15580e+05, 0.15590e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15590e+05, 0.15600e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15600e+05, 0.15610e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15610e+05, 0.15620e+05/
       data ((acr(k,j),k=1,8),j= 33, 40) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15620e+05, 0.15630e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15630e+05, 0.15640e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15640e+05, 0.15650e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15650e+05, 0.15660e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15660e+05, 0.15670e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15670e+05, 0.15680e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15680e+05, 0.15690e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15690e+05, 0.15700e+05/
       data ((acr(k,j),k=1,8),j= 41, 48) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15700e+05, 0.15710e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15710e+05, 0.15720e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15720e+05, 0.15730e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15730e+05, 0.15740e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15740e+05, 0.15750e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15750e+05, 0.15760e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15760e+05, 0.15770e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15770e+05, 0.15780e+05/
       data ((acr(k,j),k=1,8),j= 49, 56) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15780e+05, 0.15790e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15790e+05, 0.15800e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15800e+05, 0.15810e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15810e+05, 0.15820e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15820e+05, 0.15830e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15830e+05, 0.15840e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15840e+05, 0.15850e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15850e+05, 0.15860e+05/
       data ((acr(k,j),k=1,8),j= 57, 64) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15860e+05, 0.15870e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15870e+05, 0.15880e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15880e+05, 0.15890e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15890e+05, 0.15900e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15900e+05, 0.15910e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15910e+05, 0.15920e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15920e+05, 0.15930e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15930e+05, 0.15940e+05/
       data ((acr(k,j),k=1,8),j= 65, 72) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15940e+05, 0.15950e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15950e+05, 0.15960e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15960e+05, 0.15970e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15970e+05, 0.15980e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15980e+05, 0.15990e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15990e+05, 0.16000e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16000e+05, 0.16010e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16010e+05, 0.16020e+05/
       data ((acr(k,j),k=1,8),j= 73, 80) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16020e+05, 0.16030e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16030e+05, 0.16040e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16040e+05, 0.16050e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16050e+05, 0.16060e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16060e+05, 0.16070e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16070e+05, 0.16080e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16080e+05, 0.16090e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16090e+05, 0.16100e+05/
       data ((acr(k,j),k=1,8),j= 81, 88) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16100e+05, 0.16110e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16110e+05, 0.16120e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16120e+05, 0.16130e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16130e+05, 0.16140e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16140e+05, 0.16150e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16150e+05, 0.16160e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16160e+05, 0.16170e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16170e+05, 0.16180e+05/
       data ((acr(k,j),k=1,8),j= 89, 96) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16180e+05, 0.16190e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16190e+05, 0.16200e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16200e+05, 0.16210e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16210e+05, 0.16220e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16220e+05, 0.16230e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16230e+05, 0.16240e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16240e+05, 0.16250e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16250e+05, 0.16260e+05/
       data ((acr(k,j),k=1,8),j= 97,104) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16260e+05, 0.16270e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16270e+05, 0.16280e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16280e+05, 0.16290e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16290e+05, 0.16300e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16300e+05, 0.16310e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16310e+05, 0.16320e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16320e+05, 0.16330e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16330e+05, 0.16340e+05/
       data ((acr(k,j),k=1,8),j=105,112) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16340e+05, 0.16350e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16350e+05, 0.16360e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16360e+05, 0.16370e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16370e+05, 0.16380e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16380e+05, 0.16390e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16390e+05, 0.16400e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16400e+05, 0.16410e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16410e+05, 0.16420e+05/
       data ((acr(k,j),k=1,8),j=113,120) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16420e+05, 0.16430e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16430e+05, 0.16440e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16440e+05, 0.16450e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16450e+05, 0.16460e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16460e+05, 0.16470e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16470e+05, 0.16480e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16480e+05, 0.16490e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16490e+05, 0.16500e+05/
       data ((acr(k,j),k=1,8),j=121,128) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16500e+05, 0.16510e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16510e+05, 0.16520e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16520e+05, 0.16530e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16530e+05, 0.16540e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16540e+05, 0.16550e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16550e+05, 0.16560e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16560e+05, 0.16570e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16570e+05, 0.16580e+05/
       data ((acr(k,j),k=1,8),j=129,136) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16580e+05, 0.16590e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16590e+05, 0.16600e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16600e+05, 0.16610e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16610e+05, 0.16620e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16620e+05, 0.16630e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16630e+05, 0.16640e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16640e+05, 0.16650e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16650e+05, 0.16660e+05/
       data ((acr(k,j),k=1,8),j=137,144) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16660e+05, 0.16670e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16670e+05, 0.16680e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16680e+05, 0.16690e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16690e+05, 0.16700e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16700e+05, 0.16710e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16710e+05, 0.16720e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16720e+05, 0.16730e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16730e+05, 0.16740e+05/
       data ((acr(k,j),k=1,8),j=145,152) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16740e+05, 0.16750e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16750e+05, 0.16760e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16760e+05, 0.16770e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16770e+05, 0.16780e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16780e+05, 0.16790e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16790e+05, 0.16800e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16800e+05, 0.16810e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16810e+05, 0.16820e+05/
       data ((acr(k,j),k=1,8),j=153,160) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16820e+05, 0.16830e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16830e+05, 0.16840e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16840e+05, 0.16850e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16850e+05, 0.16860e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16860e+05, 0.16870e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16870e+05, 0.16880e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16880e+05, 0.16890e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16890e+05, 0.16900e+05/
       data ((acr(k,j),k=1,8),j=161,168) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16900e+05, 0.16910e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16910e+05, 0.16920e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16920e+05, 0.16930e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16930e+05, 0.16940e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16940e+05, 0.16950e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16950e+05, 0.16960e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16960e+05, 0.16970e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16970e+05, 0.16980e+05/
       data ((acr(k,j),k=1,8),j=169,176) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16980e+05, 0.16990e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.16990e+05, 0.17000e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17000e+05, 0.17010e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17010e+05, 0.17020e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17020e+05, 0.17030e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17030e+05, 0.17040e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17040e+05, 0.17050e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17050e+05, 0.17060e+05/
       data ((acr(k,j),k=1,8),j=177,184) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17060e+05, 0.17070e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17070e+05, 0.17080e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17080e+05, 0.17090e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17090e+05, 0.17100e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17100e+05, 0.17110e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17110e+05, 0.17120e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17120e+05, 0.17130e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17130e+05, 0.17140e+05/
       data ((acr(k,j),k=1,8),j=185,192) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17140e+05, 0.17150e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17150e+05, 0.17160e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17160e+05, 0.17170e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17170e+05, 0.17180e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17180e+05, 0.17190e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17190e+05, 0.17200e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17200e+05, 0.17210e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17210e+05, 0.17220e+05/
       data ((acr(k,j),k=1,8),j=193,200) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17220e+05, 0.17230e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17230e+05, 0.17240e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17240e+05, 0.17250e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17250e+05, 0.17260e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17260e+05, 0.17270e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17270e+05, 0.17280e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17280e+05, 0.17290e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17290e+05, 0.17300e+05/
       data ((acr(k,j),k=1,8),j=201,208) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17300e+05, 0.17310e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17310e+05, 0.17320e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17320e+05, 0.17330e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17330e+05, 0.17340e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17340e+05, 0.17350e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17350e+05, 0.17360e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17360e+05, 0.17370e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17370e+05, 0.17380e+05/
       data ((acr(k,j),k=1,8),j=209,216) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17380e+05, 0.17390e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17390e+05, 0.17400e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17400e+05, 0.17410e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17410e+05, 0.17420e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17420e+05, 0.17430e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17430e+05, 0.17440e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17440e+05, 0.17450e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17450e+05, 0.17460e+05/
       data ((acr(k,j),k=1,8),j=217,224) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17460e+05, 0.17470e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17470e+05, 0.17480e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17480e+05, 0.17490e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17490e+05, 0.17500e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17500e+05, 0.17510e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17510e+05, 0.17520e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17520e+05, 0.17530e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17530e+05, 0.17540e+05/
       data ((acr(k,j),k=1,8),j=225,232) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17540e+05, 0.17550e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17550e+05, 0.17560e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17560e+05, 0.17570e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17570e+05, 0.17580e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17580e+05, 0.17590e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17590e+05, 0.17600e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17600e+05, 0.17610e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17610e+05, 0.17620e+05/
       data ((acr(k,j),k=1,8),j=233,240) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17620e+05, 0.17630e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17630e+05, 0.17640e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17640e+05, 0.17650e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17650e+05, 0.17660e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17660e+05, 0.17670e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17670e+05, 0.17680e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17680e+05, 0.17690e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17690e+05, 0.17700e+05/
       data ((acr(k,j),k=1,8),j=241,248) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17700e+05, 0.17710e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17710e+05, 0.17720e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17720e+05, 0.17730e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17730e+05, 0.17740e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17740e+05, 0.17750e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17750e+05, 0.17760e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17760e+05, 0.17770e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17770e+05, 0.17780e+05/
       data ((acr(k,j),k=1,8),j=249,256) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17780e+05, 0.17790e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17790e+05, 0.17800e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17800e+05, 0.17810e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17810e+05, 0.17820e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17820e+05, 0.17830e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17830e+05, 0.17840e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17840e+05, 0.17850e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.17850e+05, 0.17860e+05/
c
      do i=1,8
      a(i)=acr(i,inu)
      enddo
c
      return
      end
