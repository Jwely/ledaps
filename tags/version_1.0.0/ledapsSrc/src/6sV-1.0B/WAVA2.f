      SUBROUTINE wava2(a,inu)
       real a(8)
       real acr(8,256)
       integer inu,j,k,i
C
C     WATER VAPOR (5060 - 7600 CM-1)
C
       DATA ((ACR(K,J),K=1,8),J=  1,  8) /
     A 0.32591E+00, 0.48473E+00, 0.10062E-01, 0.18245E-04, 0.11890E-01,
     A-0.12621E-04, 0.50600E+04, 0.50700E+04,
     A 0.73059E+00, 0.13181E+00, 0.10626E-01, 0.73795E-05, 0.11376E-01,
     A-0.17764E-04, 0.50700E+04, 0.50800E+04,
     A 0.39211E+00, 0.39522E+00, 0.14590E-01,-0.68376E-05, 0.16326E-01,
     A-0.31650E-04, 0.50800E+04, 0.50900E+04,
     A 0.23255E+01, 0.26901E+00, 0.92468E-02, 0.63821E-05, 0.83396E-02,
     A-0.12628E-04, 0.50900E+04, 0.51000E+04,
     A 0.19706E+01, 0.34245E+00, 0.56073E-02,-0.94265E-07, 0.59986E-02,
     A-0.10398E-04, 0.51000E+04, 0.51100E+04,
     A 0.28938E+01, 0.22738E+00, 0.22463E-01,-0.97912E-04, 0.21063E-01,
     A-0.88497E-04, 0.51100E+04, 0.51200E+04,
     A 0.11454E+01, 0.40811E+00, 0.89642E-02,-0.51753E-05, 0.89863E-02,
     A-0.19479E-04, 0.51200E+04, 0.51300E+04,
     A 0.29200E+01, 0.33384E+00, 0.14298E-01,-0.32571E-04, 0.12431E-01,
     A-0.35993E-04, 0.51300E+04, 0.51400E+04/
       DATA ((ACR(K,J),K=1,8),J=  9, 16) /
     A 0.63180E+01, 0.28323E+00, 0.99085E-02,-0.19400E-04, 0.60737E-02,
     A-0.16710E-04, 0.51400E+04, 0.51500E+04,
     A 0.14918E+02, 0.41681E+00, 0.12935E-01,-0.52738E-04, 0.10041E-01,
     A-0.40263E-04, 0.51500E+04, 0.51600E+04,
     A 0.10190E+02, 0.13237E+00, 0.11091E-01,-0.48728E-04, 0.81335E-02,
     A-0.27045E-04, 0.51600E+04, 0.51700E+04,
     A 0.14437E+02, 0.36156E+00, 0.94685E-02,-0.34308E-04, 0.67537E-02,
     A-0.24477E-04, 0.51700E+04, 0.51800E+04,
     A 0.34792E+02, 0.30287E+00, 0.73719E-02,-0.37632E-04, 0.51901E-02,
     A-0.28247E-04, 0.51800E+04, 0.51900E+04,
     A 0.21869E+02, 0.22075E+00, 0.69763E-02,-0.31715E-04, 0.41088E-02,
     A-0.17042E-04, 0.51900E+04, 0.52000E+04,
     A 0.94938E+02, 0.25888E+00, 0.46429E-02,-0.28823E-04, 0.34889E-02,
     A-0.23494E-04, 0.52000E+04, 0.52100E+04,
     A 0.18298E+02, 0.20311E+00, 0.50431E-02,-0.24681E-04, 0.28469E-02,
     A-0.17070E-04, 0.52100E+04, 0.52200E+04/
       DATA ((ACR(K,J),K=1,8),J= 17, 24) /
     A 0.69538E+02, 0.19126E+00, 0.21960E-02,-0.20268E-04, 0.68750E-03,
     A-0.17413E-04, 0.52200E+04, 0.52300E+04,
     A 0.40772E+02, 0.23521E+00, 0.18896E-02,-0.16920E-04, 0.59126E-03,
     A-0.13609E-04, 0.52300E+04, 0.52400E+04,
     A 0.13108E+03, 0.17928E+00, 0.15657E-03,-0.12114E-04,-0.17405E-02,
     A-0.83108E-05, 0.52400E+04, 0.52500E+04,
     A 0.69597E+02, 0.10896E+00,-0.15337E-02,-0.47461E-05,-0.27082E-02,
     A-0.15598E-05, 0.52500E+04, 0.52600E+04,
     A 0.15351E+03, 0.20025E+00,-0.22803E-02,-0.29253E-05,-0.43980E-02,
     A 0.28697E-05, 0.52600E+04, 0.52700E+04,
     A 0.26114E+01, 0.24878E+00,-0.82927E-03, 0.46226E-05,-0.11922E-03,
     A 0.10717E-04, 0.52700E+04, 0.52800E+04,
     A 0.48681E+02, 0.17500E+00,-0.37857E-02, 0.46902E-05,-0.36353E-02,
     A 0.11426E-04, 0.52800E+04, 0.52900E+04,
     A 0.77560E+02, 0.13557E+00,-0.37228E-02, 0.36212E-05,-0.41326E-02,
     A 0.15278E-04, 0.52900E+04, 0.53000E+04/
       DATA ((ACR(K,J),K=1,8),J= 25, 32) /
     A 0.60444E+02, 0.11510E+00,-0.47324E-02, 0.10254E-04,-0.36821E-02,
     A 0.14636E-04, 0.53000E+04, 0.53100E+04,
     A 0.15328E+02, 0.19998E+00,-0.12681E-02, 0.29898E-05,-0.46830E-03,
     A 0.20999E-05, 0.53100E+04, 0.53200E+04,
     A 0.87540E+02, 0.16972E+00,-0.41972E-02, 0.71961E-05,-0.37508E-02,
     A 0.70298E-05, 0.53200E+04, 0.53300E+04,
     A 0.19561E+03, 0.26284E+00,-0.23874E-02,-0.21407E-06,-0.37245E-02,
     A 0.46625E-05, 0.53300E+04, 0.53400E+04,
     A 0.16841E+03, 0.26546E+00, 0.24931E-03,-0.94775E-05,-0.16338E-02,
     A-0.62910E-05, 0.53400E+04, 0.53500E+04,
     A 0.93921E+02, 0.31129E+00, 0.28343E-02,-0.71173E-05, 0.26325E-02,
     A-0.11816E-04, 0.53500E+04, 0.53600E+04,
     A 0.25579E+02, 0.36877E+00, 0.72262E-02,-0.15821E-04, 0.60257E-02,
     A-0.21996E-04, 0.53600E+04, 0.53700E+04,
     A 0.13779E+03, 0.17089E+00,-0.46650E-02, 0.13962E-04,-0.26410E-02,
     A 0.17920E-04, 0.53700E+04, 0.53800E+04/
       DATA ((ACR(K,J),K=1,8),J= 33, 40) /
     A 0.84199E+02, 0.12293E+00,-0.39643E-02, 0.97938E-05,-0.17023E-02,
     A 0.15901E-04, 0.53800E+04, 0.53900E+04,
     A 0.14072E+03, 0.10478E+00,-0.41237E-02, 0.50169E-05,-0.43789E-02,
     A 0.17244E-04, 0.53900E+04, 0.54000E+04,
     A 0.56622E+02, 0.23084E+00,-0.25409E-02,-0.29811E-06,-0.27639E-02,
     A 0.76091E-05, 0.54000E+04, 0.54100E+04,
     A 0.18534E+03, 0.21363E+00,-0.28691E-02,-0.44392E-06,-0.42358E-02,
     A 0.66265E-05, 0.54100E+04, 0.54200E+04,
     A 0.96955E+02, 0.12223E+00,-0.52081E-03,-0.96057E-05,-0.16418E-02,
     A-0.19789E-05, 0.54200E+04, 0.54300E+04,
     A 0.11789E+03, 0.13571E+00,-0.14763E-02,-0.57081E-05,-0.24763E-02,
     A-0.17817E-06, 0.54300E+04, 0.54400E+04,
     A 0.19102E+03, 0.24199E+00, 0.69760E-03,-0.14228E-04,-0.14450E-02,
     A-0.75253E-05, 0.54400E+04, 0.54500E+04,
     A 0.22138E+02, 0.14268E+00, 0.12465E-02,-0.13898E-04, 0.20200E-02,
     A-0.84180E-05, 0.54500E+04, 0.54600E+04/
       DATA ((ACR(K,J),K=1,8),J= 41, 48) /
     A 0.95115E+02, 0.24823E+00, 0.35551E-02,-0.25604E-04, 0.12041E-02,
     A-0.18465E-04, 0.54600E+04, 0.54700E+04,
     A 0.62976E+02, 0.15811E+00, 0.50592E-02,-0.29507E-04, 0.29262E-02,
     A-0.21380E-04, 0.54700E+04, 0.54800E+04,
     A 0.29147E+02, 0.11805E+00, 0.84220E-02,-0.42987E-04, 0.67418E-02,
     A-0.36032E-04, 0.54800E+04, 0.54900E+04,
     A 0.51614E+02, 0.19818E+00, 0.58436E-02,-0.34600E-04, 0.39390E-02,
     A-0.28598E-04, 0.54900E+04, 0.55000E+04,
     A 0.23266E+02, 0.16790E+00, 0.11075E-01,-0.53480E-04, 0.84735E-02,
     A-0.46037E-04, 0.55000E+04, 0.55100E+04,
     A 0.10989E+02, 0.20302E+00, 0.63972E-02,-0.14524E-04, 0.42223E-02,
     A-0.20806E-04, 0.55100E+04, 0.55200E+04,
     A 0.10027E+02, 0.16542E+00, 0.13794E-01,-0.63320E-04, 0.11093E-01,
     A-0.55041E-04, 0.55200E+04, 0.55300E+04,
     A 0.93954E+01, 0.21952E+00, 0.13366E-01,-0.57474E-04, 0.98104E-02,
     A-0.46605E-04, 0.55300E+04, 0.55400E+04/
       DATA ((ACR(K,J),K=1,8),J= 49, 56) /
     A 0.42252E+01, 0.19874E+00, 0.16633E-01,-0.71210E-04, 0.13350E-01,
     A-0.60705E-04, 0.55400E+04, 0.55500E+04,
     A 0.62656E+01, 0.26354E+00, 0.98363E-02,-0.95486E-05, 0.79542E-02,
     A-0.24062E-04, 0.55500E+04, 0.55600E+04,
     A 0.16378E+01, 0.16463E+00, 0.13976E-01,-0.83427E-05, 0.12806E-01,
     A-0.35710E-04, 0.55600E+04, 0.55700E+04,
     A 0.19767E+01, 0.27227E+00, 0.14721E-01,-0.26094E-04, 0.12774E-01,
     A-0.45522E-04, 0.55700E+04, 0.55800E+04,
     A 0.58600E+00, 0.20958E+00, 0.12874E-01, 0.39258E-04, 0.11964E-01,
     A-0.15397E-04, 0.55800E+04, 0.55900E+04,
     A 0.73058E+00, 0.24104E+00, 0.25170E-01,-0.98784E-04, 0.21222E-01,
     A-0.85036E-04, 0.55900E+04, 0.56000E+04,
     A 0.13668E+01, 0.20354E+00, 0.74600E-02,-0.54501E-05, 0.10036E-01,
     A-0.27451E-04, 0.56000E+04, 0.56100E+04,
     A 0.70170E+00, 0.14013E+00, 0.54963E-02, 0.12171E-04, 0.10386E-01,
     A-0.57235E-05, 0.56100E+04, 0.56200E+04/
       DATA ((ACR(K,J),K=1,8),J= 57, 64) /
     A 0.97806E+00, 0.19171E+00, 0.21812E-02, 0.16431E-04, 0.66588E-02,
     A 0.95186E-05, 0.56200E+04, 0.56300E+04,
     A 0.29391E+00, 0.23855E+00, 0.90316E-02, 0.23604E-04, 0.12635E-01,
     A-0.66897E-05, 0.56300E+04, 0.56400E+04,
     A 0.15354E+00, 0.15176E+00, 0.57073E-02, 0.20000E-04, 0.14561E-01,
     A-0.40698E-05, 0.56400E+04, 0.56500E+04,
     A 0.80730E-01, 0.28405E+00, 0.14753E-01, 0.34390E-04, 0.18447E-01,
     A-0.17750E-04, 0.56500E+04, 0.56600E+04,
     A 0.86381E+00, 0.14813E+00, 0.29607E-02,-0.20586E-04, 0.28212E-02,
     A-0.12594E-04, 0.56600E+04, 0.56700E+04,
     A 0.22599E+00, 0.16383E+00, 0.84407E-02,-0.32709E-04, 0.11049E-01,
     A-0.16279E-04, 0.56700E+04, 0.56800E+04,
     A 0.30594E-02, 0.17069E+00, 0.34284E-01,-0.10113E-03, 0.35042E-01,
     A-0.11247E-03, 0.56800E+04, 0.56900E+04,
     A 0.38291E+00, 0.16459E+00, 0.96772E-02,-0.43054E-04, 0.87884E-02,
     A-0.32862E-04, 0.56900E+04, 0.57000E+04/
       DATA ((ACR(K,J),K=1,8),J= 65, 72) /
     A 0.17817E+00, 0.65371E-01, 0.44945E-02,-0.26954E-04, 0.44075E-02,
     A 0.71895E-06, 0.57000E+04, 0.57100E+04,
     A 0.73272E-02, 0.32673E+00, 0.18605E-01,-0.36631E-04, 0.21288E-01,
     A-0.50040E-04, 0.57100E+04, 0.57200E+04,
     A 0.33773E+00, 0.13375E+00, 0.60665E-02,-0.30734E-04, 0.46922E-02,
     A-0.25584E-04, 0.57200E+04, 0.57300E+04,
     A 0.83205E-01, 0.58895E-01, 0.83229E-02,-0.42023E-04, 0.99661E-02,
     A-0.29590E-04, 0.57300E+04, 0.57400E+04,
     A 0.17960E+00, 0.12050E+00, 0.65668E-02,-0.34750E-04, 0.44110E-02,
     A-0.27489E-04, 0.57400E+04, 0.57500E+04,
     A 0.74406E-01, 0.16592E+00, 0.12426E-01,-0.44049E-04, 0.12086E-01,
     A-0.48157E-04, 0.57500E+04, 0.57600E+04,
     A 0.29803E-01, 0.65159E-01, 0.11506E-01,-0.54589E-04, 0.12823E-01,
     A-0.51753E-04, 0.57600E+04, 0.57700E+04,
     A 0.13400E+00, 0.79723E-01, 0.11174E-01,-0.54130E-04, 0.10639E-01,
     A-0.47462E-04, 0.57700E+04, 0.57800E+04/
       DATA ((ACR(K,J),K=1,8),J= 73, 80) /
     A 0.27397E-01, 0.11303E+00, 0.70869E-02,-0.85837E-05, 0.87642E-02,
     A-0.24197E-04, 0.57800E+04, 0.57900E+04,
     A 0.48130E-01, 0.15280E+00, 0.17121E-01,-0.68541E-04, 0.16166E-01,
     A-0.71739E-04, 0.57900E+04, 0.58000E+04,
     A 0.98878E-01, 0.11702E+00, 0.11647E-01,-0.54757E-04, 0.95467E-02,
     A-0.49145E-04, 0.58000E+04, 0.58100E+04,
     A 0.11937E-02, 0.11746E+00, 0.29514E-01,-0.11780E-03, 0.26592E-01,
     A-0.10438E-03, 0.58100E+04, 0.58200E+04,
     A 0.21084E-01, 0.41603E-01, 0.18136E-01,-0.83736E-04, 0.16620E-01,
     A-0.75802E-04, 0.58200E+04, 0.58300E+04,
     A 0.41859E-01, 0.10038E+00, 0.11698E-01,-0.51084E-04, 0.91292E-02,
     A-0.38447E-04, 0.58300E+04, 0.58400E+04,
     A 0.42835E-02, 0.54158E-01, 0.20564E-01,-0.79064E-04, 0.16849E-01,
     A-0.61318E-04, 0.58400E+04, 0.58500E+04,
     A 0.39742E-01, 0.14212E+00, 0.15543E-01,-0.65164E-04, 0.12937E-01,
     A-0.60213E-04, 0.58500E+04, 0.58600E+04/
       DATA ((ACR(K,J),K=1,8),J= 81, 88) /
     A 0.44465E-02, 0.13575E+00, 0.18218E-01,-0.61185E-04, 0.17472E-01,
     A-0.61811E-04, 0.58600E+04, 0.58700E+04,
     A 0.13183E-01, 0.84879E-01, 0.18786E-01,-0.75902E-04, 0.15030E-01,
     A-0.67738E-04, 0.58700E+04, 0.58800E+04,
     A 0.36488E-02, 0.86695E-01, 0.23765E-01,-0.76455E-04, 0.19459E-01,
     A-0.60338E-04, 0.58800E+04, 0.58900E+04,
     A 0.18172E-01, 0.13595E+00, 0.16681E-01,-0.54016E-04, 0.14894E-01,
     A-0.60543E-04, 0.58900E+04, 0.59000E+04,
     A 0.24118E-02, 0.72933E-01, 0.25664E-01,-0.96848E-04, 0.26465E-01,
     A-0.10476E-03, 0.59000E+04, 0.59100E+04,
     A 0.14940E-01, 0.12070E+00, 0.17582E-01,-0.68945E-04, 0.16946E-01,
     A-0.69945E-04, 0.59100E+04, 0.59200E+04,
     A 0.14531E-02, 0.81478E-01, 0.25650E-01,-0.56688E-04, 0.20849E-01,
     A-0.52418E-04, 0.59200E+04, 0.59300E+04,
     A 0.40570E-02, 0.64725E-01, 0.24344E-01,-0.10574E-03, 0.21209E-01,
     A-0.92148E-04, 0.59300E+04, 0.59400E+04/
       DATA ((ACR(K,J),K=1,8),J= 89, 96) /
     A 0.59362E-03, 0.52682E-01, 0.23362E-01,-0.81930E-04, 0.18570E-01,
     A-0.76269E-04, 0.59400E+04, 0.59500E+04,
     A 0.21418E-02, 0.75485E-01, 0.23733E-01,-0.80625E-04, 0.21119E-01,
     A-0.85514E-04, 0.59500E+04, 0.59600E+04,
     A 0.33439E-02, 0.12209E+00, 0.22556E-01,-0.89730E-04, 0.19031E-01,
     A-0.85459E-04, 0.59600E+04, 0.59700E+04,
     A 0.14641E-02, 0.13608E+00, 0.15568E-01, 0.37809E-05, 0.16030E-01,
     A-0.29177E-04, 0.59700E+04, 0.59800E+04,
     A 0.63999E-03, 0.94011E-01, 0.27455E-01,-0.39873E-04, 0.19599E-01,
     A-0.36883E-04, 0.59800E+04, 0.59900E+04,
     A 0.13405E-02, 0.90254E-01, 0.29576E-01,-0.11767E-03, 0.26759E-01,
     A-0.11158E-03, 0.59900E+04, 0.60000E+04,
     A 0.17604E-02, 0.17547E+00, 0.17851E-01,-0.64948E-04, 0.16287E-01,
     A-0.56437E-04, 0.60000E+04, 0.60100E+04,
     A 0.11569E-02, 0.13348E+00, 0.26563E-01,-0.87926E-04, 0.23528E-01,
     A-0.91174E-04, 0.60100E+04, 0.60200E+04/
       DATA ((ACR(K,J),K=1,8),J= 97,104) /
     A 0.28575E-03, 0.78833E-01, 0.19053E-01,-0.18306E-04, 0.18303E-01,
     A-0.51186E-04, 0.60200E+04, 0.60300E+04,
     A 0.87532E-03, 0.16112E+00, 0.22556E-01,-0.33852E-04, 0.21206E-01,
     A-0.64336E-04, 0.60300E+04, 0.60400E+04,
     A 0.48531E-03, 0.54398E-01, 0.22035E-01,-0.97698E-04, 0.19943E-01,
     A-0.89334E-04, 0.60400E+04, 0.60500E+04,
     A 0.42083E-03, 0.13305E+00, 0.11783E-01, 0.60192E-04, 0.11910E-01,
     A 0.70965E-05, 0.60500E+04, 0.60600E+04,
     A 0.31283E-03, 0.10974E+00, 0.24828E-01,-0.35695E-04, 0.21926E-01,
     A-0.61020E-04, 0.60600E+04, 0.60700E+04,
     A 0.16917E-02, 0.14682E+00, 0.23913E-02, 0.19370E-04, 0.28143E-02,
     A 0.10914E-04, 0.60700E+04, 0.60800E+04,
     A 0.24107E-03, 0.56225E-01, 0.19103E-01,-0.58306E-05, 0.23050E-01,
     A-0.46373E-04, 0.60800E+04, 0.60900E+04,
     A 0.44079E-03, 0.73062E-01, 0.78845E-02,-0.38279E-04, 0.64841E-02,
     A-0.25252E-04, 0.60900E+04, 0.61000E+04/
       DATA ((ACR(K,J),K=1,8),J=105,112) /
     A 0.17156E-03, 0.84470E-01, 0.10336E-01, 0.10341E-03, 0.85994E-02,
     A 0.43979E-04, 0.61000E+04, 0.61100E+04,
     A 0.15736E-03, 0.47359E-01, 0.20348E-01,-0.31590E-04, 0.24132E-01,
     A-0.56992E-04, 0.61100E+04, 0.61200E+04,
     A 0.10666E-02, 0.13835E+00, 0.61165E-02,-0.87157E-05, 0.71462E-02,
     A-0.15000E-04, 0.61200E+04, 0.61300E+04,
     A 0.41402E-04, 0.71564E-01, 0.14541E-01,-0.30661E-04, 0.13703E-01,
     A-0.32448E-04, 0.61300E+04, 0.61400E+04,
     A 0.16673E-04, 0.33602E-01, 0.19118E-01,-0.88866E-04, 0.16523E-01,
     A-0.83641E-04, 0.61400E+04, 0.61500E+04,
     A 0.45173E-03, 0.19416E+00, 0.81406E-02,-0.46697E-05, 0.96975E-02,
     A-0.27594E-04, 0.61500E+04, 0.61600E+04,
     A 0.84192E-04, 0.84800E-01, 0.68868E-02, 0.20465E-04, 0.65557E-02,
     A-0.39158E-05, 0.61600E+04, 0.61700E+04,
     A 0.19983E-03, 0.34955E-01, 0.13243E-01,-0.48483E-04, 0.14163E-01,
     A-0.48663E-04, 0.61700E+04, 0.61800E+04/
       DATA ((ACR(K,J),K=1,8),J=113,120) /
     A 0.56540E-03, 0.92508E-01, 0.32982E-02,-0.28242E-06, 0.23537E-02,
     A-0.11797E-04, 0.61800E+04, 0.61900E+04,
     A 0.26602E-03, 0.14864E+00,-0.35881E-02, 0.84292E-05,-0.64288E-02,
     A 0.11323E-04, 0.61900E+04, 0.62000E+04,
     A 0.66332E-03, 0.82351E-01, 0.40475E-04,-0.91191E-05,-0.13832E-02,
     A-0.74330E-06, 0.62000E+04, 0.62100E+04,
     A 0.50890E-03, 0.13947E+00, 0.33620E-02,-0.31112E-05, 0.40780E-03,
     A 0.86176E-06, 0.62100E+04, 0.62200E+04,
     A 0.12815E-03, 0.87906E-01, 0.12262E-01,-0.40572E-04, 0.12020E-01,
     A-0.49984E-04, 0.62200E+04, 0.62300E+04,
     A 0.12854E-03, 0.12035E+00, 0.25735E-02,-0.15152E-04,-0.25291E-03,
     A-0.13133E-04, 0.62300E+04, 0.62400E+04,
     A 0.00000E+00, 0.00000E+00, 0.00000E+00, 0.00000E+00, 0.00000E+00,
     A 0.00000E+00, 0.62400E+04, 0.62500E+04,
     A 0.38748E-03, 0.88892E-01, 0.70553E-02,-0.29374E-04, 0.61982E-02,
     A-0.31937E-04, 0.62500E+04, 0.62600E+04/
       DATA ((ACR(K,J),K=1,8),J=121,128) /
     A 0.16711E-03, 0.96035E-01, 0.13535E-01,-0.59830E-04, 0.11956E-01,
     A-0.57292E-04, 0.62600E+04, 0.62700E+04,
     A 0.51664E-03, 0.11783E+00, 0.86933E-02,-0.27481E-04, 0.70865E-02,
     A-0.28728E-04, 0.62700E+04, 0.62800E+04,
     A 0.16130E-02, 0.21378E+00, 0.34321E-02,-0.15373E-04, 0.28098E-02,
     A-0.87169E-05, 0.62800E+04, 0.62900E+04,
     A 0.11040E-03, 0.50270E-01, 0.11461E-01,-0.52791E-04, 0.10667E-01,
     A-0.50501E-04, 0.62900E+04, 0.63000E+04,
     A 0.22339E-02, 0.16944E+00, 0.43566E-02,-0.18834E-04, 0.25925E-02,
     A-0.17523E-04, 0.63000E+04, 0.63100E+04,
     A 0.70293E-03, 0.10055E+00, 0.86229E-02,-0.35378E-04, 0.57065E-02,
     A-0.32557E-04, 0.63100E+04, 0.63200E+04,
     A 0.28050E-03, 0.12764E+00, 0.56648E-02, 0.74065E-04, 0.85368E-02,
     A 0.17469E-04, 0.63200E+04, 0.63300E+04,
     A 0.62308E-03, 0.89292E-01, 0.10110E-01,-0.28113E-04, 0.10994E-01,
     A-0.39797E-04, 0.63300E+04, 0.63400E+04/
       DATA ((ACR(K,J),K=1,8),J=129,136) /
     A 0.49924E-03, 0.15704E+00, 0.14233E-01,-0.53536E-04, 0.11904E-01,
     A-0.53159E-04, 0.63400E+04, 0.63500E+04,
     A 0.45485E-03, 0.22060E+00, 0.45598E-02,-0.21706E-05, 0.40803E-02,
     A-0.19834E-04, 0.63500E+04, 0.63600E+04,
     A 0.44859E-03, 0.31977E+00, 0.15688E-01,-0.30431E-04, 0.12918E-01,
     A-0.48166E-04, 0.63600E+04, 0.63700E+04,
     A 0.27811E-03, 0.13882E+00, 0.11781E-01,-0.20096E-04, 0.11797E-01,
     A-0.23760E-04, 0.63700E+04, 0.63800E+04,
     A 0.86844E-03, 0.25690E+00, 0.11839E-01,-0.64540E-05, 0.97827E-02,
     A-0.29934E-04, 0.63800E+04, 0.63900E+04,
     A 0.84205E-03, 0.26741E+00, 0.10125E-01,-0.92493E-05, 0.95070E-02,
     A-0.26314E-04, 0.63900E+04, 0.64000E+04,
     A 0.16976E-02, 0.15422E+00, 0.95094E-02, 0.19053E-04, 0.10682E-01,
     A-0.79536E-05, 0.64000E+04, 0.64100E+04,
     A 0.47975E-03, 0.94260E-01, 0.11121E-01,-0.47922E-04, 0.93837E-02,
     A-0.41295E-04, 0.64100E+04, 0.64200E+04/
       DATA ((ACR(K,J),K=1,8),J=137,144) /
     A 0.52022E-03, 0.16038E+00, 0.17528E-01,-0.37366E-04, 0.19737E-01,
     A-0.61655E-04, 0.64200E+04, 0.64300E+04,
     A 0.82574E-03, 0.16899E+00, 0.16228E-01,-0.57574E-04, 0.14443E-01,
     A-0.62197E-04, 0.64300E+04, 0.64400E+04,
     A 0.21296E-02, 0.24095E+00, 0.18574E-01,-0.57065E-04, 0.18731E-01,
     A-0.66716E-04, 0.64400E+04, 0.64500E+04,
     A 0.26201E-03, 0.11418E+00, 0.21012E-01,-0.67706E-04, 0.19337E-01,
     A-0.69411E-04, 0.64500E+04, 0.64600E+04,
     A 0.26631E-02, 0.29606E+00, 0.94001E-02, 0.32264E-04, 0.92032E-02,
     A-0.92228E-05, 0.64600E+04, 0.64700E+04,
     A 0.25496E-02, 0.13950E+00, 0.21960E-01,-0.91558E-04, 0.19725E-01,
     A-0.78434E-04, 0.64700E+04, 0.64800E+04,
     A 0.30217E-02, 0.24286E+00, 0.21221E-01,-0.49207E-04, 0.17707E-01,
     A-0.56279E-04, 0.64800E+04, 0.64900E+04,
     A 0.25925E-02, 0.22189E+00, 0.11972E-01,-0.35111E-04, 0.11532E-01,
     A-0.34767E-04, 0.64900E+04, 0.65000E+04/
       DATA ((ACR(K,J),K=1,8),J=145,152) /
     A 0.36908E-02, 0.17271E+00, 0.17079E-01,-0.62898E-04, 0.18276E-01,
     A-0.69468E-04, 0.65000E+04, 0.65100E+04,
     A 0.58412E-02, 0.27765E+00, 0.21239E-01,-0.82779E-04, 0.19328E-01,
     A-0.79739E-04, 0.65100E+04, 0.65200E+04,
     A 0.10097E-02, 0.36424E+00, 0.14201E-01, 0.14574E-04, 0.14137E-01,
     A-0.25464E-04, 0.65200E+04, 0.65300E+04,
     A 0.15531E-01, 0.36032E+00, 0.15962E-01,-0.55747E-04, 0.13807E-01,
     A-0.54878E-04, 0.65300E+04, 0.65400E+04,
     A 0.21827E-01, 0.16998E+00, 0.12887E-01,-0.53561E-04, 0.13686E-01,
     A-0.48168E-04, 0.65400E+04, 0.65500E+04,
     A 0.25524E-01, 0.44895E+00, 0.14216E-01,-0.31158E-04, 0.13867E-01,
     A-0.46536E-04, 0.65500E+04, 0.65600E+04,
     A 0.46252E-02, 0.14687E+00, 0.17426E-01,-0.71751E-04, 0.18048E-01,
     A-0.65015E-04, 0.65600E+04, 0.65700E+04,
     A 0.22064E-01, 0.27000E+00, 0.15309E-01,-0.58062E-04, 0.16735E-01,
     A-0.61409E-04, 0.65700E+04, 0.65800E+04/
       DATA ((ACR(K,J),K=1,8),J=153,160) /
     A 0.42593E-01, 0.28026E+00, 0.15131E-01,-0.60674E-04, 0.14017E-01,
     A-0.52957E-04, 0.65800E+04, 0.65900E+04,
     A 0.39072E-01, 0.14924E+00, 0.94106E-02,-0.40098E-04, 0.98574E-02,
     A-0.29732E-04, 0.65900E+04, 0.66000E+04,
     A 0.54808E-01, 0.37702E+00, 0.12248E-01,-0.21938E-04, 0.12749E-01,
     A-0.34984E-04, 0.66000E+04, 0.66100E+04,
     A 0.36908E-01, 0.16694E+00, 0.11325E-01,-0.41839E-04, 0.12369E-01,
     A-0.23977E-04, 0.66100E+04, 0.66200E+04,
     A 0.49128E-02, 0.31728E+00, 0.16178E-01,-0.87947E-05, 0.19507E-01,
     A-0.36007E-04, 0.66200E+04, 0.66300E+04,
     A 0.27419E-01, 0.23237E+00, 0.22088E-01,-0.48300E-04, 0.21397E-01,
     A-0.58784E-04, 0.66300E+04, 0.66400E+04,
     A 0.98830E-01, 0.17529E+00, 0.67054E-02,-0.28981E-04, 0.98183E-02,
     A-0.21164E-04, 0.66400E+04, 0.66500E+04,
     A 0.97673E-01, 0.26249E+00, 0.15514E-01,-0.20366E-04, 0.18041E-01,
     A-0.47825E-04, 0.66500E+04, 0.66600E+04/
       DATA ((ACR(K,J),K=1,8),J=161,168) /
     A 0.29234E-01, 0.39325E+00, 0.11043E-01, 0.69627E-05, 0.14995E-01,
     A-0.28824E-04, 0.66600E+04, 0.66700E+04,
     A 0.73358E-01, 0.26517E+00, 0.22641E-01,-0.90861E-04, 0.20163E-01,
     A-0.81954E-04, 0.66700E+04, 0.66800E+04,
     A 0.28609E+00, 0.27963E+00, 0.12746E-01,-0.31154E-04, 0.11122E-01,
     A-0.29019E-04, 0.66800E+04, 0.66900E+04,
     A 0.15415E+00, 0.42581E+00, 0.92965E-02,-0.16598E-04, 0.10866E-01,
     A-0.30004E-04, 0.66900E+04, 0.67000E+04,
     A 0.50854E+00, 0.25928E+00, 0.11806E-01,-0.49706E-04, 0.11950E-01,
     A-0.44564E-04, 0.67000E+04, 0.67100E+04,
     A 0.54248E+00, 0.29219E+00, 0.86655E-02,-0.10780E-04, 0.96072E-02,
     A-0.20886E-04, 0.67100E+04, 0.67200E+04,
     A 0.11829E+01, 0.23177E+00, 0.84264E-02,-0.36835E-04, 0.78692E-02,
     A-0.31650E-04, 0.67200E+04, 0.67300E+04,
     A 0.66413E+00, 0.22652E+00, 0.96388E-02,-0.45502E-04, 0.94036E-02,
     A-0.42748E-04, 0.67300E+04, 0.67400E+04/
       DATA ((ACR(K,J),K=1,8),J=169,176) /
     A 0.20327E+01, 0.20210E+00, 0.51382E-02,-0.24524E-04, 0.66314E-02,
     A-0.16094E-04, 0.67400E+04, 0.67500E+04,
     A 0.28639E+01, 0.19875E+00, 0.48057E-02,-0.28413E-04, 0.44821E-02,
     A-0.21857E-04, 0.67500E+04, 0.67600E+04,
     A 0.23946E+01, 0.11681E+00, 0.25701E-02,-0.20163E-04, 0.26061E-02,
     A-0.16227E-04, 0.67600E+04, 0.67700E+04,
     A 0.23817E+01, 0.35427E+00, 0.39392E-02,-0.17028E-04, 0.49290E-02,
     A-0.18773E-04, 0.67700E+04, 0.67800E+04,
     A 0.16155E+01, 0.23449E+00, 0.73307E-03,-0.73637E-05, 0.16677E-02,
     A-0.25528E-05, 0.67800E+04, 0.67900E+04,
     A 0.83481E+01, 0.29624E+00, 0.21533E-03,-0.89091E-05,-0.19540E-03,
     A-0.69089E-05, 0.67900E+04, 0.68000E+04,
     A 0.39018E+01, 0.13513E+00,-0.20430E-02, 0.47043E-05, 0.19385E-02,
     A 0.15453E-04, 0.68000E+04, 0.68100E+04,
     A 0.33911E+01, 0.24098E+00,-0.20667E-03,-0.63633E-05,-0.16731E-03,
     A-0.22699E-05, 0.68100E+04, 0.68200E+04/
       DATA ((ACR(K,J),K=1,8),J=177,184) /
     A 0.28798E+01, 0.25576E+00,-0.21074E-02, 0.54951E-05,-0.21041E-02,
     A 0.82116E-05, 0.68200E+04, 0.68300E+04,
     A 0.27426E+01, 0.15514E+00,-0.29057E-02, 0.12463E-04, 0.17031E-02,
     A 0.19513E-04, 0.68300E+04, 0.68400E+04,
     A 0.32308E+01, 0.18429E+00,-0.36805E-02, 0.13879E-04, 0.38114E-03,
     A 0.21110E-04, 0.68400E+04, 0.68500E+04,
     A 0.82936E+00, 0.18124E+00, 0.41735E-03, 0.14616E-05, 0.25198E-02,
     A-0.13464E-05, 0.68500E+04, 0.68600E+04,
     A 0.35131E+00, 0.41646E+00, 0.15485E-01,-0.46470E-04, 0.13388E-01,
     A-0.36422E-04, 0.68600E+04, 0.68700E+04,
     A 0.46683E+01, 0.15324E+00,-0.42182E-02, 0.90437E-05,-0.13329E-02,
     A 0.18577E-04, 0.68700E+04, 0.68800E+04,
     A 0.28455E+01, 0.17389E+00,-0.22094E-02, 0.14962E-05,-0.15658E-02,
     A 0.97344E-05, 0.68800E+04, 0.68900E+04,
     A 0.88724E+01, 0.42657E+00,-0.18169E-02, 0.81105E-05,-0.65751E-03,
     A 0.12321E-04, 0.68900E+04, 0.69000E+04/
       DATA ((ACR(K,J),K=1,8),J=185,192) /
     A 0.81595E+00, 0.32457E+00, 0.28256E-02, 0.12078E-05, 0.59842E-02,
     A 0.15430E-05, 0.69000E+04, 0.69100E+04,
     A 0.12055E+02, 0.40831E+00,-0.11236E-02, 0.22677E-05,-0.81590E-03,
     A 0.17078E-05, 0.69100E+04, 0.69200E+04,
     A 0.14005E+01, 0.42874E+00, 0.73135E-02,-0.16167E-04, 0.82389E-02,
     A-0.18229E-04, 0.69200E+04, 0.69300E+04,
     A 0.94914E+01, 0.29494E+00,-0.33677E-02, 0.11156E-04,-0.16627E-02,
     A 0.16279E-04, 0.69300E+04, 0.69400E+04,
     A 0.37310E+01, 0.44986E+00, 0.84547E-02,-0.30585E-04, 0.10303E-01,
     A-0.35351E-04, 0.69400E+04, 0.69500E+04,
     A 0.79581E+01, 0.26975E+00,-0.14256E-02, 0.41782E-05, 0.13886E-03,
     A 0.75184E-05, 0.69500E+04, 0.69600E+04,
     A 0.34090E+01, 0.33223E+00,-0.83550E-03, 0.99982E-05, 0.32926E-02,
     A 0.79289E-05, 0.69600E+04, 0.69700E+04,
     A 0.69934E+01, 0.49549E+00, 0.34299E-02, 0.13868E-04, 0.73246E-02,
     A-0.11357E-04, 0.69700E+04, 0.69800E+04/
       DATA ((ACR(K,J),K=1,8),J=193,200) /
     A 0.84288E+01, 0.29235E+00, 0.12515E-02,-0.66867E-05, 0.22057E-02,
     A-0.72817E-05, 0.69800E+04, 0.69900E+04,
     A 0.37771E+01, 0.34377E+00, 0.66839E-02, 0.14877E-04, 0.99074E-02,
     A-0.24726E-04, 0.69900E+04, 0.70000E+04,
     A 0.59358E+01, 0.44520E+00, 0.47532E-02,-0.11726E-04, 0.57444E-02,
     A-0.16773E-04, 0.70000E+04, 0.70100E+04,
     A 0.36653E+01, 0.46656E+00, 0.75924E-02,-0.14859E-04, 0.85483E-02,
     A-0.27681E-04, 0.70100E+04, 0.70200E+04,
     A 0.76230E+01, 0.59145E+00, 0.10355E-01,-0.23877E-04, 0.84375E-02,
     A-0.35191E-04, 0.70200E+04, 0.70300E+04,
     A 0.29785E+01, 0.49616E+00, 0.95318E-02,-0.28442E-04, 0.94393E-02,
     A-0.37258E-04, 0.70300E+04, 0.70400E+04,
     A 0.11489E+02, 0.44630E+00, 0.12118E-01,-0.47464E-04, 0.89557E-02,
     A-0.43911E-04, 0.70400E+04, 0.70500E+04,
     A 0.57070E+01, 0.30579E+00, 0.12792E-01,-0.58480E-04, 0.11943E-01,
     A-0.49567E-04, 0.70500E+04, 0.70600E+04/
       DATA ((ACR(K,J),K=1,8),J=201,208) /
     A 0.43341E+01, 0.45254E+00, 0.87102E-02,-0.36977E-04, 0.62554E-02,
     A-0.29678E-04, 0.70600E+04, 0.70700E+04,
     A 0.18415E+02, 0.27325E+00, 0.11045E-01,-0.55565E-04, 0.87811E-02,
     A-0.46635E-04, 0.70700E+04, 0.70800E+04,
     A 0.92559E+01, 0.37006E+00, 0.93565E-02,-0.46638E-04, 0.86230E-02,
     A-0.41694E-04, 0.70800E+04, 0.70900E+04,
     A 0.34399E+02, 0.26960E+00, 0.73722E-02,-0.40297E-04, 0.56690E-02,
     A-0.34996E-04, 0.70900E+04, 0.71000E+04,
     A 0.27357E+02, 0.28185E+00, 0.41186E-02,-0.24656E-04, 0.15333E-02,
     A-0.14846E-04, 0.71000E+04, 0.71100E+04,
     A 0.59142E+02, 0.21235E+00, 0.42020E-02,-0.28298E-04, 0.26623E-02,
     A-0.22726E-04, 0.71100E+04, 0.71200E+04,
     A 0.87290E+01, 0.31743E+00, 0.50667E-02,-0.29057E-04, 0.50497E-02,
     A-0.24756E-04, 0.71200E+04, 0.71300E+04,
     A 0.66372E+02, 0.25989E+00, 0.21171E-02,-0.20010E-04, 0.98789E-03,
     A-0.15045E-04, 0.71300E+04, 0.71400E+04/
       DATA ((ACR(K,J),K=1,8),J=209,216) /
     A 0.40254E+02, 0.15248E+00, 0.64299E-03,-0.13315E-04,-0.67491E-03,
     A-0.29781E-06, 0.71400E+04, 0.71500E+04,
     A 0.15991E+01, 0.45391E+00, 0.83749E-02,-0.12893E-04, 0.11832E-01,
     A-0.23466E-04, 0.71500E+04, 0.71600E+04,
     A 0.13840E+03, 0.26185E+00,-0.92005E-03,-0.75058E-05,-0.22766E-02,
     A 0.12031E-05, 0.71600E+04, 0.71700E+04,
     A 0.13476E+02, 0.27958E+00, 0.17108E-03, 0.28602E-05, 0.19003E-02,
     A 0.22534E-05, 0.71700E+04, 0.71800E+04,
     A 0.95960E+02, 0.20582E+00,-0.22657E-02, 0.13812E-05,-0.15351E-02,
     A 0.88048E-05, 0.71800E+04, 0.71900E+04,
     A 0.14690E+02, 0.24608E+00, 0.78336E-03, 0.15252E-04, 0.37390E-02,
     A-0.69180E-05, 0.71900E+04, 0.72000E+04,
     A 0.55288E+02, 0.25862E+00,-0.13454E-02, 0.99116E-05,-0.88298E-03,
     A 0.17423E-05, 0.72000E+04, 0.72100E+04,
     A 0.48147E+02, 0.25568E+00, 0.49183E-02,-0.23894E-04, 0.37052E-02,
     A-0.22724E-04, 0.72100E+04, 0.72200E+04/
       DATA ((ACR(K,J),K=1,8),J=217,224) /
     A 0.40415E+02, 0.20103E+00,-0.24259E-02, 0.75229E-05,-0.17525E-02,
     A 0.26464E-05, 0.72200E+04, 0.72300E+04,
     A 0.10984E+03, 0.33075E+00, 0.75622E-03,-0.12921E-04,-0.11898E-02,
     A-0.59125E-05, 0.72300E+04, 0.72400E+04,
     A 0.13002E+03, 0.18533E+00,-0.33239E-02, 0.18173E-05,-0.46918E-02,
     A 0.81132E-05, 0.72400E+04, 0.72500E+04,
     A 0.24491E+02, 0.30951E+00,-0.26793E-02, 0.58588E-05,-0.21237E-02,
     A 0.48000E-05, 0.72500E+04, 0.72600E+04,
     A 0.19609E+02, 0.15703E+00,-0.25743E-02, 0.28622E-05,-0.16255E-02,
     A 0.44422E-05, 0.72600E+04, 0.72700E+04,
     A 0.17072E+02, 0.26657E+00,-0.29675E-02, 0.12335E-04,-0.69569E-03,
     A 0.77744E-05, 0.72700E+04, 0.72800E+04,
     A 0.25243E+02, 0.38981E+00,-0.23499E-02, 0.72438E-05,-0.15088E-02,
     A 0.40106E-05, 0.72800E+04, 0.72900E+04,
     A 0.13962E+03, 0.16193E+00,-0.50479E-02, 0.92690E-05,-0.53276E-02,
     A 0.15266E-04, 0.72900E+04, 0.73000E+04/
       DATA ((ACR(K,J),K=1,8),J=225,232) /
     A 0.86705E+02, 0.11761E+00,-0.37859E-02, 0.44125E-05,-0.30774E-02,
     A 0.10295E-04, 0.73000E+04, 0.73100E+04,
     A 0.66458E+02, 0.22506E+00,-0.31197E-02, 0.21671E-05,-0.39420E-02,
     A 0.56842E-05, 0.73100E+04, 0.73200E+04,
     A 0.14742E+03, 0.24611E+00,-0.23854E-02,-0.14496E-05,-0.34285E-02,
     A 0.12805E-05, 0.73200E+04, 0.73300E+04,
     A 0.87291E+02, 0.22526E+00,-0.11541E-03,-0.96671E-05,-0.90479E-03,
     A-0.78703E-05, 0.73300E+04, 0.73400E+04,
     A 0.15536E+03, 0.27754E+00,-0.23889E-03,-0.88494E-05,-0.10570E-02,
     A-0.73024E-05, 0.73400E+04, 0.73500E+04,
     A 0.60800E+02, 0.21141E+00, 0.22877E-02,-0.18250E-04, 0.21735E-02,
     A-0.16084E-04, 0.73500E+04, 0.73600E+04,
     A 0.65821E+02, 0.31454E+00, 0.35102E-02,-0.23014E-04, 0.21764E-02,
     A-0.19960E-04, 0.73600E+04, 0.73700E+04,
     A 0.39314E+02, 0.19452E+00, 0.45708E-02,-0.28104E-04, 0.35157E-02,
     A-0.23151E-04, 0.73700E+04, 0.73800E+04/
       DATA ((ACR(K,J),K=1,8),J=233,240) /
     A 0.33606E+02, 0.30823E+00, 0.71777E-02,-0.36203E-04, 0.52193E-02,
     A-0.25338E-04, 0.73800E+04, 0.73900E+04,
     A 0.28667E+02, 0.22825E+00, 0.67636E-02,-0.34040E-04, 0.62429E-02,
     A-0.35213E-04, 0.73900E+04, 0.74000E+04,
     A 0.95852E+01, 0.30280E+00, 0.12912E-01,-0.53899E-04, 0.10209E-01,
     A-0.44318E-04, 0.74000E+04, 0.74100E+04,
     A 0.75752E+01, 0.36859E+00, 0.10673E-01,-0.15633E-04, 0.94631E-02,
     A-0.33501E-04, 0.74100E+04, 0.74200E+04,
     A 0.33599E+01, 0.31735E+00, 0.15132E-01,-0.50575E-04, 0.13714E-01,
     A-0.48842E-04, 0.74200E+04, 0.74300E+04,
     A 0.14210E+01, 0.51877E+00, 0.10564E-01, 0.27798E-04, 0.10716E-01,
     A-0.16576E-04, 0.74300E+04, 0.74400E+04,
     A 0.13357E+01, 0.34135E+00, 0.55009E-02, 0.29075E-04, 0.10731E-01,
     A-0.14716E-04, 0.74400E+04, 0.74500E+04,
     A 0.90292E+00, 0.35257E+00, 0.64439E-02, 0.43621E-05, 0.93295E-02,
     A-0.79773E-05, 0.74500E+04, 0.74600E+04/
       DATA ((ACR(K,J),K=1,8),J=241,248) /
     A 0.47321E+00, 0.34413E+00, 0.75753E-02, 0.31118E-04, 0.88184E-02,
     A 0.23143E-05, 0.74600E+04, 0.74700E+04,
     A 0.14277E+00, 0.63005E+00, 0.15765E-01,-0.38760E-04, 0.14284E-01,
     A-0.41344E-04, 0.74700E+04, 0.74800E+04,
     A 0.84751E+00, 0.92347E-01, 0.44433E-02,-0.23373E-04, 0.65281E-02,
     A-0.20814E-04, 0.74800E+04, 0.74900E+04,
     A 0.34962E+00, 0.49346E+00, 0.39951E-03, 0.28230E-05, 0.21242E-02,
     A-0.60580E-06, 0.74900E+04, 0.75000E+04,
     A 0.66686E+00, 0.32642E+00, 0.15242E-02,-0.87602E-05, 0.33093E-02,
     A-0.62194E-05, 0.75000E+04, 0.75100E+04,
     A 0.70380E+00, 0.37824E+00, 0.40335E-02,-0.17144E-04, 0.58765E-02,
     A-0.18563E-04, 0.75100E+04, 0.75200E+04,
     A 0.44176E+00, 0.28314E+00, 0.41609E-02,-0.21428E-04, 0.52238E-02,
     A-0.21647E-04, 0.75200E+04, 0.75300E+04,
     A 0.23859E+00, 0.25536E+00, 0.46384E-02,-0.31469E-05, 0.56672E-02,
     A-0.13268E-04, 0.75300E+04, 0.75400E+04/
       DATA ((ACR(K,J),K=1,8),J=249,256) /
     A 0.12451E+00, 0.19246E+00, 0.31730E-02,-0.16450E-04, 0.46905E-02,
     A-0.19919E-04, 0.75400E+04, 0.75500E+04,
     A 0.40142E+00, 0.25660E+00, 0.68917E-02,-0.22016E-04, 0.42921E-02,
     A-0.22533E-04, 0.75500E+04, 0.75600E+04,
     A 0.24593E+00, 0.28458E+00, 0.35670E-03,-0.90627E-06, 0.67869E-03,
     A-0.67459E-05, 0.75600E+04, 0.75700E+04,
     A 0.41189E+00, 0.23957E+00,-0.27548E-03, 0.35660E-05, 0.39542E-03,
     A-0.38485E-05, 0.75700E+04, 0.75800E+04,
     A 0.20341E+00, 0.14662E+00, 0.60408E-02,-0.35022E-04, 0.43079E-02,
     A-0.31225E-04, 0.75800E+04, 0.75900E+04,
     A 0.18188E+00, 0.14279E+00, 0.12602E-02,-0.30833E-05, 0.33638E-02,
     A-0.13417E-04, 0.75900E+04, 0.76000E+04,
     A 0.17978E+00, 0.35062E+00, 0.50440E-02,-0.31112E-05, 0.36165E-02,
     A-0.13022E-04, 0.76000E+04, 0.76100E+04,
     A 0.31504E+00, 0.16627E+00, 0.32650E-02,-0.13345E-04, 0.40505E-02,
     A-0.20124E-04, 0.76100E+04, 0.76200E+04/
C
C
c
      do i=1,8
      a(i)=acr(i,inu)
      enddo
c
      return
      end

