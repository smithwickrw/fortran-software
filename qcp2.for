C   QCP189.FOR   Modified
      BLOCK DATA                                                        INDO   1
      COMMON/COEFF/YZ1(90),YZ2(90),YZ3(90),YZ4(41),IA1(133),IA2(133),
     1 IA3(45),IB1(133),IB2(133),IB3(45),LCOUNT(38),LLOW(38),LLLL(38),
     2 LPOINT(183)                                                      INDO   3
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO   4   
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      INTEGER ORB,EL                                                    INDO   5
      DATA EL/4H   H,4H  HE,4H  LI,4H  BE,4H   B,4H   C,4H   N,4H   O,  INDO   6
     1  4H   F,4H  NE,4H  NA,4H  MG,4H  AL,4H  SI,4H   P,4H   S,4H  CL, INDO   7
     2  4H  AR/                                                         INDO   8
      DATA ORB/4H   S,4H  PX,4H  PY,4H  PZ,4H DZ2,4H DXZ,4H DYZ,4HDXYZ, INDO   9
     1  4H DXY/                                                         INDO  10
      DATA NORB/1,1,4,4,4,4,4,4,4,4,9,9,9,9,9,9,9,9/                    INDO  11
      DATA CZ/ 1.,2.,1.,2.,3.,4.,5.,6.,7.,8.,1.,2.,3.,4.,5.,6.,7.,8./   INDO  12
      DATA YZ1/  1.,  -1.,  -1.,   1., -64.,  64.,  64., -64.,  -1.,    INDO  13
     1           3.,  -3.,   1.,  -1.,   2.,  -2.,   1.,  64., -64.,    INDO  14
     2         -64., -64.,  64.,  64.,  64., -64., -96.,  32., 128.,    INDO  15
     3          96., -96.,-128., -32.,  96.,  -1.,   5., -10.,  10.,    INDO  16
     4          -5.,   1.,  -1.,   4.,  -5.,   5.,  -4.,   1.,  -1.,    INDO  17
     5           1.,  -1.,   1.,   1.,  -2.,   1., -64., -64.,  64.,    INDO  18
     6          64.,  64.,  64., -64., -64.,  16., -16., -16.,  16.,    INDO  19
     7          16., -16., -64.,  64.,  64., -64.,  -1.,   3.,  -3.,    INDO  20
     8           1.,  -1.,   1.,   2.,  -2.,  -1.,   1.,  64., -64.,    INDO  21
     9        -128., 128.,  64., -64., -96.,  32., -96., 160.,  96./    INDO  22
      DATA YZ2/128., -96.,  96.,-128., -96.,-160.,  96., -32.,  96.,    INDO  23
     1         -16.,  16.,  16., -16.,  16., -16., -16.,  16., -16.,    INDO  24
     2          16.,  16., -16.,  48., -48., -48.,  48., -48.,  48.,    INDO  25
     3          48., -48.,  48., -48., -48.,  48., -64.,-128.,  64.,    INDO  26
     4         128., 128.,  64.,-128., -64.,  64., -64., -64., -64.,    INDO  27
     5          64.,  64.,  64., -64., -96.,  32.,  32.,  32.,  96.,    INDO  28
     6          32., -32., -96., -32., -32., -32.,  96.,  -1.,   2.,    INDO  29
     7           2.,  -6.,   6.,  -2.,  -2.,   1.,  -1.,   3.,  -1.,    INDO  30
     8          -5.,   5.,   1.,  -3.,   1.,  64.,  64., -64.,-128.,    INDO  31
     9         -64.,-128., 128.,  64., 128.,  64., -64., -64., -96./    INDO  32
      DATA YZ3/ 32.,-192., 192., 288., -96., 192.,-192.,  96.,-288.,    INDO  33
     1        -192., 192., -32.,  96., -16.,  16.,  32., -16., -16.,    INDO  34
     2         -16., -16.,  32.,  16., -16.,  48., -48.,  48., -96.,    INDO  35
     3          48., -48., -48.,  96., -48.,  48.,  48., -48.,  96.,    INDO  36
     4         -48., -48.,  48., -96.,  48., -48.,  48.,  64.,-128.,    INDO  37
     5         -64.,  64., 128., -64., -96.,  32., -96.,  64.,  32.,    INDO  38
     6          96.,  32.,  64.,  96., -32.,  32., -96., -64., -32.,    INDO  39
     7         -96., -32., -64.,  96., -32.,  96.,-144.,  96., -16.,    INDO  40
     8         144., -48.,  96., -96.,  48.,-144.,  16., -96., 144.,    INDO  41
     9         144.,-144.,-144., 144., 144.,-144.,-144., 144., -16./    INDO  42
      DATA YZ4/ 32., -16.,  16., -48.,  32., -32.,  48., -16.,  16.,    INDO  43
     1         -32.,  16.,  -1.,   5., -10.,  10.,  -5.,   1.,  -1.,    INDO  44
     2           1.,   4.,  -4.,  -6.,   6.,   4.,  -4.,  -1.,   1.,    INDO  45
     3           1.,  -3.,   2.,   2.,  -3.,   1.,   1.,  -1.,  -3.,    INDO  46
     4           3.,   3.,  -3.,  -1.,   1./                            INDO  47
      DATA LLLL/35,183,42,34,182,179,40,32,36,44,28,170,73,128,21,27,   INDO  48
     1          169,166,72,69,158,127,124,19,25,157,154,64,61,119,116,  INDO  49
     2          98,43,22,10,14,33,20/                                   INDO  50
      DATA LLOW/0,4,8,12,16,24,32,38,44,46,48,51,59,65,69,73,79,85,99,  INDO  51
     1          111,123,131,139,151,159,167,179,193,203,223,229,249,261,INDO  52
     2          269,281,287,297,303/                                    INDO  53
      DATA IA1/1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 4, 5, 1, 2, 2, INDO  54
     1         3, 3, 4, 4, 5, 1, 1, 2, 3, 3, 4, 5, 5, 1, 2, 3, 4, 5, 6, INDO  55
     2         1, 2, 3, 5, 6, 7, 1, 3, 1, 2, 1, 3, 5, 1, 2, 2, 3, 3, 4, INDO  56
     3         4, 5, 1, 1, 3, 3, 5, 5, 1, 3, 3, 5, 1, 3, 5, 7, 1, 2, 3, INDO  57
     4         4, 5, 6, 1, 2, 3, 4, 5, 6, 1, 1, 2, 2, 3, 3, 3, 4, 4, 4, INDO  58
     5         5, 5, 6, 6, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 1, 1, 2, INDO  59
     6         2, 3, 3, 4, 4, 5, 5, 6, 6, 1, 2, 2, 3, 4, 5, 5, 6, 1, 2/ INDO  60
      DATA IA2/3, 3, 4, 4, 5, 6, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 1, INDO  61
     1         2, 3, 4, 6, 7, 8, 9, 1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 2, 3, INDO  62
     2         3, 4, 4, 5, 5, 6, 6, 7, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, INDO  63
     3         6, 7, 7, 1, 1, 3, 3, 3, 5, 5, 5, 7, 7, 1, 1, 2, 2, 2, 3, INDO  64
     4         3, 3, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 1, 3, 3, 5, 5, INDO  65
     5         7, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, INDO  66
     6         7, 7, 1, 1, 1, 3, 3, 3, 5, 5, 5, 7, 7, 7, 1, 1, 3, 3, 5/ INDO  67
      DATA IA3/5, 7, 7, 1, 1, 1, 3, 3, 3, 5, 5, 5, 7, 7, 7, 1, 3, 5, 7, INDO  68
     1         9,11, 1, 2, 3, 4, 5, 6, 7, 8, 9,10, 1, 2, 3, 4, 5, 6, 1, INDO  69
     2         2, 3, 4, 5, 6, 7, 8/                                     INDO  70
      DATA IB1/4, 3, 2, 1, 3, 4, 1, 2, 4, 3, 2, 1, 5, 4, 2, 1, 4, 3, 5, INDO  71
     1         2, 4, 1, 3, 2, 3, 5, 4, 1, 5, 2, 1, 3, 6, 5, 4, 3, 2, 1, INDO  72
     2         7, 6, 5, 3, 2, 1, 3, 1, 2, 1, 5, 3, 1, 4, 3, 5, 2, 4, 1, INDO  73
     3         3, 2, 3, 5, 1, 5, 1, 3, 3, 1, 5, 3, 7, 5, 3, 1, 6, 5, 4, INDO  74
     4         3, 2, 1, 5, 6, 3, 4, 1, 2, 4, 6, 3, 5, 2, 4, 6, 1, 3, 5, INDO  75
     5         2, 4, 1, 3, 4, 6, 3, 5, 2, 6, 1, 5, 2, 4, 1, 3, 3, 5, 4, INDO  76
     6         6, 1, 5, 2, 6, 1, 3, 2, 4, 5, 4, 6, 5, 2, 1, 3, 2, 4, 3/ INDO  77
      DATA IB2/2, 6, 1, 5, 4, 3, 3, 5, 4, 6, 1, 5, 2, 6, 1, 3, 2, 4, 9, INDO  78
     1         8, 7, 6, 4, 3, 2, 1, 8, 7, 6, 5, 4, 3, 2, 1, 6, 5, 7, 4, INDO  79
     2         6, 3, 5, 2, 4, 1, 3, 2, 5, 7, 4, 6, 5, 7, 2, 6, 1, 3, 2, INDO  80
     3         4, 1, 3, 5, 7, 3, 5, 7, 1, 3, 5, 1, 3, 4, 6, 3, 5, 7, 2, INDO  81
     4         4, 6, 1, 3, 5, 7, 2, 4, 6, 1, 3, 5, 2, 4, 5, 3, 7, 1, 5, INDO  82
     5         3, 4, 6, 3, 5, 7, 2, 4, 6, 1, 3, 5, 7, 2, 4, 6, 1, 3, 5, INDO  83
     6         2, 4, 3, 5, 7, 1, 5, 7, 1, 3, 7, 1, 3, 5, 3, 5, 1, 7, 1/ INDO  84
      DATA IB3/7, 3, 5, 3, 5, 7, 1, 5, 7, 1, 3, 7, 1, 3, 5,11, 9, 7, 5, INDO  85
     1         3, 1,10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 6, 5, 4, 3, 2, 1, 8, INDO  86
     2         7, 6, 5, 4, 3, 2, 1/                                     INDO  87
      DATA LCOUNT/4,4,4,4,8,8,6,6,2,2,3,8,6,4,4,6,6,14,12,12,8,8,12,8,8,INDO  88
     1          12,14,10,20,6,20,12,8,12,6,10,6,8/                      INDO  89
      END
      PROGRAM MAIN                                                      INDO  90
C      PROGRAM CNINDO(INPUT,OUTPUT),TAPE5=INPUT,TAPE6=OUTPUT            INDO  91
C     1 ,TAPE31,TAPE32,TAPE33,TAPE34)                                   INDO  92
      COMMON/COEFF/YZ(1230)                                             INDO  93
      COMMON/ARRAYS/A(80,80),AX(80),B(80,80),BX(80)                     INDO  94
      COMMON/HCORE/H(80,80)                                             INDO  95
      COMMON/GAMMA/G(35,35)                                             INDO  96
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO  97
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)  INDO  98
      COMMON/SMK/C1,C2,C3,C4,C5,C6,C7,C8,C9,CA,CB,CC,CD,CE,CF,CG,CH,CI,
     1 CJ,CK,CL,CM,CN,CO
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      DIMENSION ANN(20),P(20),INN(20),INO(20),QQ1(35,80),QQ2(35,80),
     1 NPSAV(80),DSAV(80)
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)                                            INDO  99
      INTEGER U,OCCA,OCCB,AN,CHARGE
      INTEGER*4 IPROD
      CHARACTER*4 IOP1,IOP2,ANN
      CHARACTER*1 STAR
      DATA A0/.529167/,IRR/6/,IW/7/                                     INDO 100
C      WRITE(*,189)
C      READ(*,188) IDUM
      SUMIN=0.15E30
      DO 301 ILM= 1,1
      DO 300 ILL= 1,1
C      IF(ILL.EQ. 1.AND.ILM.EQ.1) GO TO 300
C      IF(ILL.EQ. 2.AND.ILM.EQ.1) GO TO 300
C      IF(ILL.EQ. 3.AND.ILM.EQ.1) GO TO 300
C      IF(ILL.EQ. 4.AND.ILM.EQ.1) GO TO 300
C      IF(ILL.EQ. 5.AND.ILM.EQ.1) GO TO 300
C      IF(ILL.EQ. 6.AND.ILM.EQ.1) GO TO 300
C      IF(ILL.EQ. 7.AND.ILM.EQ.1) GO TO 300
      IF(ILL.EQ. 8.AND.ILM.EQ.1) GO TO 300
      IF(ILL.EQ. 9.AND.ILM.EQ.1) GO TO 300
      IF(ILL.EQ.10.AND.ILM.EQ.1) GO TO 300
C      IF(ILL.EQ.11.AND.ILM.EQ.1) GO TO 300
C      IF(ILL.EQ.12.AND.ILM.EQ.1) GO TO 300
      DO 299 ILK=1,12
C  LOOP RESETS INNs AND INOs TO 2,2:
      INN(ILK)=2
      INO(ILK)=2
299   CONTINUE
      INN(ILL)=1
      INO(ILL)=3
      OPEN(2,FILE='FORT22')        
        SUM=0.
189     FORMAT(1X,' HIT THE ENTER KEY AGAIN AND WAIT ~ONE MINUTE')
188     FORMAT(I1)
        IPP=0
	IPOS=1
        INEG=1
        IPROD=0
C        READ(2,191) DEL
C        READ(2,191) C10,C20,C30,C40,C50,C60,C70,C80,C90,CA0,CB0,CC0,
C     6 CD0,CE0,CF0,CG0,CH0,CI0,CJ0,CK0,CL0,CM0,CN0,CO0
        C10=0.243
        C20=0.042
        C30=0.086
        C40=0.000
        C50=0.246
        C60=0.157
        C70=0.117
        C80=0.114
        C90=0.117
        CA0=0.107
        CB0=0.230
        CC0=0.597
        CD0=8.000
        CE0=9.125
        CF0=5.862
        CG0=7.313
        CH0=8.920
        CI0=7.872
        CJ0=7.150
        CK0=9.531
        CL0=11.325
        CM0=8.840
        CN0=2.756
        CO0=4.657
        IF(ILM.EQ.1) DEL=0.000
        IF(ILM.EQ.2) DEL=0.004
        IF(ILM.GE.3) DEL=0.004
 191    FORMAT(1X,F7.3)
        CLOSE(2)
        NPASS=0.
        SUMO=SUMIN
        ICOUNT=0
        ZUM=SUMIN
        ZDEL=DEL
C        IDOUBLE=0
 1      CONTINUE
        NPT=0
C  THESE STATEMENT PREVENT THE CALCULATION FROM STALLING:
        IF(SUMIN.LT.ZUM) ZUM=SUMIN
        IF(DEL.LT.ZDEL)  ZDEL=DEL
        IF(ZUM.EQ.SUMIN.AND.ZDEL.EQ.DEL) ICOUNT=ICOUNT+1
        IF(ICOUNT.GE.3) DEL=DEL/2.
        IF(ICOUNT.GE.3) ICOUNT=1        
        NPASS=NPASS+4
        IF(SUMIN.LT.SUMO) SUMO=SUMIN
        IF(DEL.EQ.0.) OPEN(8,FILE='FORT8')
        IF(DEL.EQ.0.) OPEN(3,FILE='FORT3')
        IF(DEL.EQ.0.) OPEN(7,FILE='OUTPUT')
        INEG=1
        IPOS=1
        IPROD=0
        IRW=0
22      CONTINUE
C        IF(SUMIN.LT.SUMO) SUMIN=SUMO
        IPP=IPP+1      
        DO 145 IA=INN(1),INO(1)
        DO 144 IB=INN(2),INO(2)
        DO 143 IC=INN(3),INO(3)
        DO 142 ID=INN(4),INO(4)
        DO 141 IE=INN(5),INO(5)
        DO 140 IF=INN(6),INO(6)
        DO 139 IG=INN(7),INO(7)
        DO 138 IH=INN(8),INO(8)
        DO 137 II=INN(9),INO(9)
        DO 136 IJ=INN(10),INO(10)
        DO 135 IK=INN(11),INO(11)
        DO 134 IL=INN(12),INO(12)
        DO 133 IM=2,2
        DO 132 IN=INN(2),INO(2)
        DO 131 IO=INN(3),INO(3)
        DO 130 IP=INN(4),INO(4)
        DO 129 IQ=INN(5),INO(5)
        DO 128 IR=INN(6),INO(6)
        DO 127 IS=INN(7),INO(7)
        DO 126 IT=INN(8),INO(8)
        DO 125 IU=INN(9),INO(9)
        DO 124 IV=INN(10),INO(10)
        DO 123 IW=INN(11),INO(11)
        DO 122 IX=INN(12),INO(12)
        OPEN(IRR,FILE='INPUT')
        C1=C10+DEL*FLOAT(IA-2)
        C2=C20+DEL*FLOAT(IB-2)
        C2=ABS(C2)
        C3=C30+DEL*FLOAT(IC-2)
        C4=C40+DEL*FLOAT(ID-2)
        C4=ABS(C4) 
        C5=C50+DEL*FLOAT(IE-2)
        C6=C60+DEL*FLOAT(IF-2)
        C7=C70+DEL*FLOAT(IG-2)
        C8=C80+DEL*FLOAT(IH-2)
        C9=C90+DEL*FLOAT(II-2)
        CA=CA0+DEL*FLOAT(IJ-2)
        CA=ABS(CA)
        CB=CB0+DEL*FLOAT(IK-2)
        CC=CC0+DEL*FLOAT(IL-2) 
        CD=CD0+5.*DEL*FLOAT(IM-2) 
        CE=CE0+5.*DEL*FLOAT(IN-2)
        CF=CF0+5.*DEL*FLOAT(IO-2)
        CG=CG0+5.*DEL*FLOAT(IP-2)
        CH=CH0+5.*DEL*FLOAT(IQ-2)
        CI=CI0+5.*DEL*FLOAT(IR-2)
        CJ=CJ0+5.*DEL*FLOAT(IS-2)
        CK=CK0+5.*DEL*FLOAT(IT-2)
        CL=CL0+5.*DEL*FLOAT(IU-2)
        CM=CM0+5.*DEL*FLOAT(IV-2)
        CN=CN0+5.*DEL*FLOAT(IW-2)
        CO=CO0+5.*DEL*FLOAT(IX-2)
        XBO= 1.0
        CLOSE(9)
C        IF(DEL.EQ.0.) OPEN(7,FILE='OUTPUT')
        IF(DEL.EQ.0.) OPEN(9,FILE='FORTDM') 
C     READ TITLE CARD
        SUM= 0.
        SUMA=0.
        SUMB=0.
        SUMC=0.      
      NCOUNT=0
   15 CONTINUE
C  EACH MOLECULE NEEDS TO START AT 0. AND BE SELF-CONSISTENT IN CHARGE:
      IDOUBLE=0
      IPASS=0
      Q1(1,1)=0.
      Q1(2,1)=0.
      Q1(3,1)=0.
      Q1(4,1)=0.
      Q1(5,1)=0.
      Q1(1,2)=0.
      Q1(2,2)=0.
      Q1(3,2)=0.
      Q1(4,2)=0.
      Q1(5,2)=0.
      CHRG1=0.
      NCOUNT=NCOUNT+1
      IF(DEL.EQ.0.) WRITE(8,991) NCOUNT
  991 FORMAT(1X,'NCOUNT= ',I2)
      READ(IRR,20) (ANN(I),I=1,20)                                      INDO 102
      IF (ANN(1).EQ.'FINI') GO TO 100                                   INDO 103
C      IF(DEL.EQ.0.) OPEN(7,FILE='OUTPUT')
C      IF(DEL.EQ.0.) OPEN(9,FILE='FORTDM') 
      IF(DEL.EQ.0.) WRITE(IW,30) (ANN(I),I=1,20)                        INDO 104
      IF(DEL.EQ.0.) WRITE(8,30) (ANN(I),I=1,20)
C     READ OPTIONS  (CNDO,INDO)  (CLSD,OPEN,NMR )                       INDO 105
      READ(IRR,21) IOP1,IOP2                                            INDO 106
      IF(DEL.EQ.0.) WRITE(IW,31) IOP1,IOP2                              INDO 107
C     IF(DEL.EQ.0.) WRITE(8,31) IOP1,IOP2
C     READ NATOMS, CHARGE, AND MULTIPLICITY (OR KATOM)                  INDO 108
C     IF THE NMR OPTION IS USED THE PERTURBED ATOM IS READ INTO         INDO 109
C     MULTIP AND THEN TRANSFERRED TO KATOM                              INDO 110
      READ(IRR,50) NATOMS,CHARGE,MULTIP                                 INDO 111    
      IF(DEL.EQ.0.)  WRITE(IW,60) NATOMS,CHARGE,MULTIP                  INDO 112
      IF(IOP2.NE.'NMR ') GO TO 14                                       INDO 113
      KATOM=MULTIP                                                       INDO 114
      MULTIP=1                                                          INDO 115
   14 IF(MULTIP.GT.0) GO TO 16                                          INDO 116
      MULTIP=1                                                          INDO 117
   16 CONTINUE                                                          INDO 118
C     READ IN THE ATOMIC NUMBERS AND COORDINATES                        INDO 119
      DO 10 I = 1,NATOMS                                                INDO 120
      READ(IRR,70) AN(I),STAR(I),C(I,1),C(I,2),C(I,3)                   INDO 121
      ANG=ACOS(-1./3.)/2.
C  ANG IS HALF THE TETRAHEDAL ANGLE IN RADIANS (~54.74 IN DEG) 
      RH=1.094
      IF(NATOMS.EQ.5.AND.AN(2).EQ.1.AND.I.EQ.2) C(2,1)=  RH*COS(ANG)
      IF(NATOMS.EQ.5.AND.AN(2).EQ.1.AND.I.EQ.2) C(2,2)=  RH*SIN(ANG)
      IF(NATOMS.EQ.5.AND.AN(2).EQ.1.AND.I.EQ.2) C(2,3)=  0.
      IF(NATOMS.EQ.5.AND.AN(3).EQ.1.AND.I.EQ.3) C(3,1)=  RH*COS(ANG)
      IF(NATOMS.EQ.5.AND.AN(3).EQ.1.AND.I.EQ.3) C(3,2)= -RH*SIN(ANG)
      IF(NATOMS.EQ.5.AND.AN(3).EQ.1.AND.I.EQ.3) C(3,3)=  0.
      IF(NATOMS.EQ.5.AND.AN(4).EQ.1.AND.I.EQ.4) C(4,1)= -RH*COS(ANG)
      IF(NATOMS.EQ.5.AND.AN(4).EQ.1.AND.I.EQ.4) C(4,2)=  0.
      IF(NATOMS.EQ.5.AND.AN(4).EQ.1.AND.I.EQ.4) C(4,3)=  RH*SIN(ANG)
      IF(NATOMS.EQ.5.AND.AN(5).EQ.1.AND.I.EQ.5) C(5,1)= -RH*COS(ANG)
      IF(NATOMS.EQ.5.AND.AN(5).EQ.1.AND.I.EQ.5) C(5,2)=  0.
      IF(NATOMS.EQ.5.AND.AN(5).EQ.1.AND.I.EQ.5) C(5,3)= -RH*SIN(ANG)
      RF=1.319
      IF(NATOMS.EQ.5.AND.AN(2).EQ.9.AND.I.EQ.2) C(2,1)=  RF*COS(ANG)
      IF(NATOMS.EQ.5.AND.AN(2).EQ.9.AND.I.EQ.2) C(2,2)=  RF*SIN(ANG)
      IF(NATOMS.EQ.5.AND.AN(2).EQ.9.AND.I.EQ.2) C(2,3)=  0.
      IF(NATOMS.EQ.5.AND.AN(3).EQ.9.AND.I.EQ.3) C(3,1)=  RF*COS(ANG)
      IF(NATOMS.EQ.5.AND.AN(3).EQ.9.AND.I.EQ.3) C(3,2)= -RF*SIN(ANG)
      IF(NATOMS.EQ.5.AND.AN(3).EQ.9.AND.I.EQ.3) C(3,3)=  0.
      IF(NATOMS.EQ.5.AND.AN(4).EQ.9.AND.I.EQ.4) C(4,1)= -RF*COS(ANG)
      IF(NATOMS.EQ.5.AND.AN(4).EQ.9.AND.I.EQ.4) C(4,2)=  0.
      IF(NATOMS.EQ.5.AND.AN(4).EQ.9.AND.I.EQ.4) C(4,3)=  RF*SIN(ANG)
      IF(NATOMS.EQ.5.AND.AN(5).EQ.9.AND.I.EQ.5) C(5,1)= -RF*COS(ANG)
      IF(NATOMS.EQ.5.AND.AN(5).EQ.9.AND.I.EQ.5) C(5,2)=  0.
      IF(NATOMS.EQ.5.AND.AN(5).EQ.9.AND.I.EQ.5) C(5,3)= -RF*SIN(ANG)
C
      IF(I.EQ.1.AND.CHARGE.NE.0) CHRG1=0.5*FLOAT(CHARGE)
      IF(CHARGE.NE.0.AND.AN(I).LE.4) Q1(I,1)= CHRG1
      IF(CHARGE.NE.0.AND.AN(I).LE.4) Q1(I,2)= 0.
      IF(CHARGE.NE.0.AND.AN(I).GT.4) Q1(I,1)= 0.
      IF(CHARGE.NE.0.AND.AN(I).GT.4) Q1(I,2)= CHRG1
      IF(IOP1.EQ.'INDO'.AND.AN(I).GT.11) GO TO 11                       INDO 122
      GO TO 12                                                          INDO 123
   11 CONTINUE
C   WRITE(IW,80)                                                        INDO 124
      CLOSE(6)
      STOP
   12 CONTINUE
      IF(DEL.EQ.0.)  WRITE(IW,75) AN(I),C(I,1),C(I,2),C(I,3)            INDO 126
C     CONVERSION OF COORDINATES FROM ANGSTROMS TO ATOMIC UNITS          INDO 127
      IF(DEL.EQ.0..AND.NATOMS.LE.3.AND.I.EQ.2)  WRITE(3,333) NCOUNT,
     1 AN(1),AN(2),C(2,1),CHARGE
      IF(DEL.EQ.0..AND.NATOMS.EQ.5.AND.AN(2).EQ.1.AND.I.EQ.2)
     1 WRITE(3,333) NCOUNT,AN(1),AN(2),RH,CHARGE
      IF(DEL.EQ.0..AND.NATOMS.EQ.5.AND.AN(2).EQ.9.AND.I.EQ.2)
     1 WRITE(3,333) NCOUNT,AN(1),AN(2),RF,CHARGE  
      DO 9 J=1,3                                                        INDO 128
    9 C(I,J) = C(I,J)/A0                                                INDO 129
   10 CONTINUE                                                          INDO 130
      RYE=0.
      DP=0.
      XDE=0.
      XDM=0.
C     READ EXPERIMENTAL DISSOCIATION ENERGY AND DIPOLE MOMENT
      READ(IRR,115) XDE,XDM
      IF(DEL.EQ.0.) WRITE(3,334) NCOUNT,(ANN(K),K=1,6),XDE,XDM
 334  FORMAT(1X,I3,1X,6A4,1X,'XDE=',F8.4,1X,'XDM=',F8.4,/)
C      IF(DEL.EQ.0.) WRITE(8,116) XDE,XDM,Q1(1,1),Q1(1,2)     
115   FORMAT(2F10.4)
116   FORMAT(1X,'NES=',I3,'  XDE=',F8.3,2X,'XDM=',F8.3,2X,'Q1(1,1)=',
     1 F8.4,2X,'Q1(1,2)= ',F8.4)                           
117   FORMAT(11X,'AN(2)= ',I2,3X,'XYZ COORDINATES= ',3F10.4)
C     CALCULATE THE NUMBER OF ELECTRONS, BASIS FUNCTIONS AND OCCUPIED   INDO 131
C     ORBITALS (OCCA AND OCCB)                                          INDO 132
      N=0                                                               INDO 133
      NELECS= -CHARGE                                                   INDO 134
      DO 17 I=1,NATOMS                                                  INDO 135
      K=AN(I)                                                           INDO 136
      N=N+NORB(K)                                                       INDO 137
      NELECS=NELECS+INT(CZ(K)+.01)                                      INDO 138
   17 CONTINUE                                                          INDO 139
      NP=3
   18 CONTINUE
      IDOUBLE=IDOUBLE+1
C   FOUR PASSES ARE MADE FOR MOLECULES TO DETERMINE Q1:
      IF(IDOUBLE.EQ.1.AND.DEL.EQ.0.) IPASS=1
      IF(IDOUBLE.EQ.1.AND.DEL.EQ.0.) DEL=0.0001
      IF(IDOUBLE.GE.NP.AND.IPASS.EQ.1) DEL=0.
      IF(IDOUBLE.GE.NP.AND.IPASS.EQ.1) IPASS=0
      OCCA=(NELECS+MULTIP-1)/2                                          INDO 140
      OCCB=(NELECS-MULTIP+1)/2                                          INDO 141
      CALL INTGRL                                                       INDO 142   
      CALL GUESSP(IOP1)                                                 INDO 143
      IF (IOP2.NE.'CLSD') GO TO 91                                      INDO 144   
      CALL SCFC(IOP1)                                                   INDO 145
      GO TO 95                                                          INDO 146
   91 IF (IOP2.NE.'OPEN') GO TO 92                                      INDO 147
      CALL SCFO(IOP1)                                                   INDO 148
      GO TO 95                                                          INDO 149
   92 IF (IOP2.NE.'NMR ') GO TO 100                                     INDO 150
      CALL SCFN(IOP1,KATOM)                                             INDO 151
      GO TO 15                                                          INDO 152
   95 CONTINUE
      CALL CPRINT(IOP1,IOP2)
      DO 97 I=1,2                         
      IF(I.EQ.1.AND.AN(I).LE.4) QQ1(IDOUBLE,NCOUNT)=Q1(I,1)
      IF(I.EQ.1.AND.AN(I).GT.4) QQ1(IDOUBLE,NCOUNT)=Q1(I,2)
      IF(I.EQ.2.AND.AN(I).LE.4) QQ2(IDOUBLE,NCOUNT)=Q1(I,1)
      IF(I.EQ.2.AND.AN(I).GT.4) QQ2(IDOUBLE,NCOUNT)=Q1(I,2)
      IF(IDOUBLE.GE.2.AND.I.EQ.1) DELTA=ABS(QQ1(IDOUBLE,NCOUNT)-
     1 QQ1(IDOUBLE-1,NCOUNT))
      IF(IDOUBLE.GE.2.AND.DELTA.GT.0.01.AND.NP.LT.35) NP=NP+1
  97  CONTINUE
      IF(IDOUBLE.LT.NP) NPSAV(NCOUNT)=NP
      IF(IDOUBLE.LT.NP) DSAV(NCOUNT)=DELTA
      IF(IDOUBLE.LT.NP) GO TO 18
      NPT=NPT+NP
C  AN ARBTRARY NEGATIVE VALUE OF XDE ALLOWS THE XDM TO BE ADDED
C  TO THE ERROR; BUT NOT XDE:
      IF(XDE.GT.0.) SUM =SUM +(RYE-XDE)*(RYE-XDE)
      IF(XDE.GT.0.) SUMA=SUMA+(RYE-XDE)*(RYE-XDE)
      IF(XDE.NE.0.AND.XDM.NE.0.) SUM=SUM +5.*(ABS(DP)-XDM)*(ABS(DP)-XDM)
      IF(XDE.NE.0.AND.XDM.NE.0.) SUMB=SUMB+(ABS(DP)-XDM)*(ABS(DP)-XDM)
      IF(DEL.EQ.0..AND.DP.LT.0..AND.XDM.GT.0.) XDM= -XDM
      IF(DEL.EQ.0.) WRITE(8,116) NELECS,XDE,XDM,Q1(1,1),Q1(1,2)
      IF(DEL.EQ.0.) WRITE(8,119) NPSAV(NCOUNT),DSAV(NCOUNT)
 119  FORMAT(1X,'NP= ',I2,2X,'DELTA CHARGE= ',F7.4)
      IF(XDE.NE.0.AND.XDM.NE.0.) WRITE(9,905) NCOUNT,ABS(XDM),ABS(DP)
      SUMC=SUMA +SUMB
   99 GO TO 15                                                          INDO 154
C    'FINI' OF INPUT (AT INDO 103) SENDS THE PROGRAM TO STATEMENT 100:
  100 CONTINUE
905   FORMAT(1X,I5,5X,2F8.2)                                            INDO 155
      CLOSE(3)    
      CLOSE(6)
      OPEN(8,FILE='FORT8')
      IF(DEL.EQ.0.) SUMIN=SUM
      IF(DEL.EQ.0.) WRITE(8,25) C10,C20,C30,C40,C50,C60,C70,C80,C90,CA0,
     1 CB0,CC0,CD0,CE0,CF0,CG0,CH0,CI0,CJ0,CK0,CL0,CM0,CN0,CO0,SUMA,
     2 SUMB,SUMC,SUM,SUMIN
      IF(DEL.NE.0.) GO TO 223
       IF(DEL.EQ.0.) WRITE(8,94)
C  KK IS THE ATOMIC NUMBER:
       DO 108 KK=1,10
       DO 107 JJ=1,2
       IF(KK.LE.2.AND.JJ.EQ.2) GO TO 106
       IF(KK.LE.2.AND.JJ.EQ.1) XMU=EMU(KK,1,0.)
       IF(KK.GT.2) XMU=EMU(KK,JJ,0.)
       IF(KK.LE.2.AND.JJ.EQ.1) WRITE(8,220) KK,XMU,13.605*XMU*XMU
       IF(KK.GT.2.AND.JJ.EQ.1) WRITE(8,221) KK,XMU,13.605*XMU*XMU
       IF(KK.GT.2.AND.JJ.EQ.2) WRITE(8,222) XMU,13.605*XMU*XMU
106     CONTINUE
107     CONTINUE
108     CONTINUE
 94     FORMAT(1X,/)
220     FORMAT(11X,'Z=',I3,2X,'EMU=',F7.4,3X,'ENEGS= ',F10.4)
221     FORMAT(11X,'Z=',I3,2X,'EMU=',F7.4,3X,'ENEGS= ',F10.4)
222     FORMAT(18X,'EMU=',F7.4,3X,'ENEGP= ',F10.4)
224     FORMAT(10X,'KK= ',I3,3X,'JJ= ',I3)
333     FORMAT(1X,3I3,F7.4,I3)
223     CONTINUE
      CLOSE(8)
      CLOSE(6)
        IF(DEL.EQ.0.) OPEN(2,FILE='FORT22')
        IF(DEL.EQ.0.) GO TO 233
        IF(SUM.GT.SUMIN) GO TO 111
        IF(SUM.LE.SUMIN) IPROD=IA*IB*IC*ID*IE*IF*IG*IH*II*IJ*IK*IL*IM*
     1 IN*IO*IP*IQ*IR*IS*IT*IU*IV*IW*IX
        IF(SUM.LE.SUMIN) C11=C1
        IF(SUM.LE.SUMIN) C22=C2
        IF(SUM.LE.SUMIN) C33=C3
        IF(SUM.LE.SUMIN) C44=C4
	IF(SUM.LE.SUMIN) C55=C5
	IF(SUM.LE.SUMIN) C66=C6
	IF(SUM.LE.SUMIN) C77=C7
	IF(SUM.LE.SUMIN) C88=C8
	IF(SUM.LE.SUMIN) C99=C9
	IF(SUM.LE.SUMIN) CAA=CA
	IF(SUM.LE.SUMIN) CBB=CB
	IF(SUM.LE.SUMIN) CCC=CC
	IF(SUM.LE.SUMIN) CDD=CD
	IF(SUM.LE.SUMIN) CEE=CE
	IF(SUM.LE.SUMIN) CFF=CF
	IF(SUM.LE.SUMIN) CGG=CG
        IF(SUM.LE.SUMIN) CHH=CH
        IF(SUM.LE.SUMIN) CII=CI
        IF(SUM.LE.SUMIN) CJJ=CJ
        IF(SUM.LE.SUMIN) CKK=CK
        IF(SUM.LE.SUMIN) CLL=CL
        IF(SUM.LE.SUMIN) CMM=CM
        IF(SUM.LE.SUMIN) CNN=CN
        IF(SUM.LE.SUMIN) COO=CO
        IF(SUM.LE.SUMIN) SUMAO=SUMA
        IF(SUM.LE.SUMIN) SUMBO=SUMB
        IF(SUM.LE.SUMIN) SUMCO=SUMC
        IF(SUM.LE.SUMIN) SUMIN=SUM
233     CONTINUE
        IF(SUM.LE.SUMIN) SUMIN=SUM
        IF(DEL.EQ.0.) OPEN(2,FILE='FORT22')
25      FORMAT(/11F7.3,/F7.3, /11F7.3,/F7.3,/,4F11.3,4X,E15.8)
        IF(DEL.EQ.0.) WRITE(2,194) DEL
        IF(DEL.EQ.0.) WRITE(*,59) DEL,SUMO,SUMO,ILM,ILL
        IF(DEL.EQ.0.) WRITE(*,25) C10,C20,C30,C40,C50,C60,C70,C80,
     1 C90,CA0,CB0,CC0,CD0,CE0,CF0,CG0,CH0,CI0,CJ0,CK0,CL0,CM0,CN0,
     2 CO0,SUMAO,SUMBO,SUMCO,SUMIN,SUMIN
        IF(DEL.EQ.0.) WRITE(*,26) NPT
        IF(DEL.EQ.0.) WRITE(2,192) C10,C20,C30,C40,C50,C60,C70,C80,
     1 C90,CA0,CB0,CC0,CD0,CE0,CF0,CG0,CH0,CI0,CJ0,CK0,CL0,CM0,CN0,
     2 CO0
        CLOSE(2)
         IF(ABS(DEL).LT.0.001) DEL=0.
        IF(DEL.EQ.0.) GO TO 98
111      CONTINUE
122      CONTINUE
123      CONTINUE
124      CONTINUE
125      CONTINUE
126      CONTINUE
127      CONTINUE
128      CONTINUE
129      CONTINUE
130      CONTINUE
131      CONTINUE
132      CONTINUE
133      CONTINUE
134      CONTINUE
135      CONTINUE
136      CONTINUE
137      CONTINUE
138      CONTINUE
139      CONTINUE
140      CONTINUE
141      CONTINUE
142      CONTINUE
143      CONTINUE
144      CONTINUE
145      CONTINUE        
C        IF(DEL.EQ.0.) WRITE(IW,59) SUM,IPP
C        WRITE(*,59) DEL,SUMO,SUM,ILM,IPP
59      FORMAT(1X,'DEL=',F6.4,2X,'SUMO=',E12.7,2X,'SUM= ',E12.7,2X,'ILM=
     1 ',I3,2X,'ILL= ',I3)
        CLOSE(6)
	C10=C11
	C20=C22
	C30=C33
	C40=C44
	C50=C55
	C60=C66
	C70=C77
	C80=C88
	C90=C99
	CA0=CAA
	CB0=CBB
	CC0=CCC
	CD0=CDD
	CE0=CEE
	CF0=CFF
	CG0=CGG
        CH0=CHH
        CI0=CII
        CJ0=CJJ
        CK0=CKK
        CL0=CLL
        CM0=CMM
        CN0=CNN
        CO0=COO
C  2**24 = 16777216
        IF(DEL.LE.0.0) GO TO 98
        IRW=0
        IF(IPROD.NE.16777216.AND.SUMIN.LT.SUMO) SUMAO=SUMA
        IF(IPROD.NE.16777216.AND.SUMIN.LT.SUMO) SUMBO=SUMB
        IF(IPROD.NE.16777216.AND.SUMIN.LT.SUMO) SUMCO=SUMC
        IF(IPROD.NE.16777216.AND.SUMIN.LT.SUMO) SUMO=SUMIN
        IF(IPROD.NE.16777216.AND.IRW.EQ.1) DEL=DEL/2.
        IF(IPROD.NE.16777216.AND.ABS(DEL).LE.0.001) DEL=0.
        IF(IPROD.NE.16777216.AND.DEL.EQ.0.) GO TO 1
        IF(IPROD.EQ.16777216) DEL=DEL/2.
        IF(SUM.LT.SUMIN) SUMIN=SUM
        WRITE(*,59) DEL,SUMO,SUM,ILM,ILL
        IF(DEL.NE.0.) WRITE(*,25) C10,C20,C30,C40,C50,C60,C70,C80,C90,
     1 CA0,CB0,CC0,CD0,CE0,CF0,CG0,CH0,CI0,CJ0,CK0,CL0,CM0,CN0,CO0,
     2 SUMAO,SUMBO,SUMCO,SUMO,SUMIN
        IF(DEL.EQ.0.) WRITE(*,25) C10,C20,C30,C40,C50,C60,C70,C80,C90,
     1 CA0,CB0,CC0,CD0,CE0,CF0,CG0,CH0,CI0,CJ0,CK0,CL0,CM0,CN0,CO0,
     2 SUMAO,SUMBO,SUMCO,SUM,SUM
        IF(DEL.EQ.0.) WRITE(*,26) NPT
26      FORMAT(1X,'NPTOTAL= ',I4)
        IF(DEL.EQ.0.) OPEN(2,FILE='FORT22')
        IF(DEL.EQ.0.) GO TO 98
        IF(ABS(DEL).LT.0.001) DEL=0.
        GO TO 1        
C        WRITE(*,193) IPP,DEL
C 193    FORMAT(1X,'IPP= ',I3,3X,'DEL= ',F8.5)
98      CONTINUE               
        OPEN(2,FILE='FORT22')
        CLOSE(5)
        CLOSE(6)
C        CLOSE(7)      
        C10=C11
	C20=C22
	C30=C33
	C40=C44
	C50=C55
	C60=C66
	C70=C77
	C80=C88
	C90=C99
	CA0=CAA
	CB0=CBB
	CC0=CCC
	CD0=CDD
	CE0=CEE
	CF0=CFF
	CG0=CGG
        CH0=CHH
        CI0=CII
        CJ0=CJJ
        CK0=CKK
        CL0=CLL
        CM0=CMM
        CN0=CNN
        CO0=COO
        IF(SUMIN.LT.SUMO) SUMO=SUMIN 
        IF(SUM.LT.SUMO) SUMO=SUM
        WRITE(2,194) DEL
        WRITE(2,192) C10,C20,C30,C40,C50,C60,C70,C80,C90,CA0,CB0,CC0,
     1 CD0,CE0,CF0,CG0,CH0,CI0,CJ0,CK0,CL0,CM0,CN0,CO0
        CLOSE(2)
        CLOSE(9)
300     CONTINUE 
301     CONTINUE
        OPEN(9,FILE='FORT9')
        DO 412 IN=1,53
        WRITE(9,413) IN,(QQ1(J,IN), J=1,8)
        WRITE(9,413) IN,(QQ2(J,IN), J=1,8)
412     CONTINUE
413     FORMAT(1X,I3,2X,8F9.3)
        CLOSE(9)
        CLOSE(7)
 192    FORMAT(1X,F7.3)
 194    FORMAT(1X,F7.3)               
  20   FORMAT(20A4)                                                     INDO 156
   21 FORMAT(A4,1X,A4)                                                  INDO 157
C   30 FORMAT(1H1,5X,20A4)                                              INDO 158
   30 FORMAT(1X,20A4)
   31 FORMAT(1X,A4,1X,A4)                                               INDO 159
   50 FORMAT(I4,I4,I4)                                                  INDO 160
   60 FORMAT(/5X,I4,' ATOMS   CHARGE  =',I4,'   MULTIPLICITY  =',I4/)   INDO 161
   70 FORMAT(I4,A1,2X,F12.7,2(3X,F12.7))                                INDO 162
   75 FORMAT(1X,I4,3(3X,F12.7))
   80 FORMAT(51H THIS PROGRAM IS NOT PARAMETERIZED FOR 2ND ROW INDO)    INDO 163
      STOP
      END                                                               INDO 164
      SUBROUTINE INTGRL                                                 INDO 165
C     INTEGRALS OVER ATOMIC ORBITALS FOR CNDO CALCULATIONS              INDO 166
      COMMON/COEFF/YZ(311),IA(311),IB(311),LCOUNT(38),LLOW(38)          INDO 167
     1 ,LLLL(38),LPOINT(183)                                            INDO 168
      COMMON/ARRAYS/S(80,80),FACT(80),B(80,80),BX(80)                   INDO 169
      COMMON/HCORE/GPRINT(80,80)                                        INDO 170
      COMMON/GAMMA/GAMMA(35,35)                                         INDO 171
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO 172
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      DIMENSION BETAS(18),BETAP(18)
      DIMENSION TEMP(9,9),T(9,9),PAIRS(9,9)                             INDO 174
      DIMENSION NC(18),LC(9),MC(9),E(3)                                 INDO 175
      REAL NUM,K1,K2                                                    INDO 176
      INTEGER AN,U,ANL,ANK,OCCA,OCCB,CHARGE                             INDO 177
      CHARACTER*1 STAR
      DATA NC/1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3/                      INDO 180
      DATA LC/0,1,1,1,2,2,2,2,2/                                        INDO 181
      DATA MC/0,1,-1,0,0,1,-1,2,-2/                                     INDO 182
      DATA ZERO/0.0/,ONE/1.0/,TWO/2.0/,HALF/0.5/,IW/7/,IRR/6/           INDO 183
      DO 5555 I=1,38                                                    INDO 184
      L=LLLL(I)                                                         INDO 185
C      WRITE(IW,996) I,L
 5555 LPOINT(L)=I                                                       INDO 186
C 996  FORMAT(1X,'I=  ',I2,3X,'LLL(I)=   ',I4)
C     FACT(I) CONTAINS THE FACTORIAL OF I-1                             INDO 187
      FACT(1)=ONE                                                       INDO 188
      FI=ZERO                                                           INDO 189
      DO 15 I=2,75                                                      INDO 190
      FI=FI+ONE                                                         INDO 191
      FACT(I)=FACT(I-1)*FI                                              INDO 192
   15 CONTINUE
C     FILL U ARRAY---U(J) IDENTIFIES THE ATOM TO WHICH ORBITAL J IS     INDO 193
C     ATTACHED E.G. ORBITAL 32 ATTACHED TO  ATOM 7, ETC.                INDO 194
      J=0                                                               INDO 195
      DO 70 K=1,NATOMS                                                  INDO 196
      LIM=NORB(AN(K))                                                   INDO 197
C      WRITE(IW,995) LIM
      DO 69 I=1,LIM                                                     INDO 198
      J=J+1                                                             INDO 199  
      U(J) = K                                                          INDO 200
   69 CONTINUE
   70 CONTINUE
      DO 95 I=1,N                                                       INDO 201
      DO 96 J=1,N                                                       INDO 202
   96 S(I,J)=ZERO                                                       INDO 203
   95 S(I,I)=ONE                                                        INDO 204
C     STEP THRU PAIRS OF ATOMS                                          INDO 205
      ETOTAL=ZERO                                                       INDO 206
      LLK=0                                                             INDO 207
      DO 320 K=1,NATOMS                                                 INDO 208
      LLL=LLK                                                           INDO 209
      ANK=AN(K)
      NORBK=NORB(ANK)
      N1=NC(ANK)
      NCANK=2*N1+1
      DO 319 L=K,NATOMS                                                 INDO 210
      ANL=AN(L)                                                         INDO 212
      NORBL=NORB(ANL)                                                   INDO 214
      N2=NC(ANL)                                                        INDO 216
      NCANL=2*N2+1                                                      INDO 220
      IF (K.EQ.L) GO TO 265                                             INDO 221
      E(1)=C(L,1)-C(K,1)                                                INDO 222
      E(2)=C(L,2)-C(K,2)                                                INDO 223
      E(3)=C(L,3)-C(K,3)                                                INDO 224
      R=SQRT(E(1)*E(1)+E(2)*E(2)+E(3)*E(3))                             INDO 225
C     ADD CORE REPULSION BETWEEN K AND L TO ENERGY                      INDO 226
C     MODIFICATION DOES NOT USE THE VALENCE-CORE REPULSION:
C  REMOVED::::::::
C      ETOTAL=ETOTAL+CZ(ANK)*CZ(ANL)/R
C     CALCULATE UNIT VECTOR ALONG INTERATOM AXIS,E                      INDO 228
      E(1)=E(1)/R                                                       INDO 229
      E(2)=E(2)/R                                                       INDO 230
      E(3)=E(3)/R                                                       INDO 231
C     LOOP THRU PAIRS OF BASIS FUNCTIONS, ONE ON EACH ATOM              INDO 232
C    2S AND 2P ORBITAL HAVE DIFFERENT VALUES OF MU:
      DO 200 I=1,NORBK                                                  INDO 233
      IF(I.EQ.1.AND.ANK.LE.2) K1=EMU(ANK,0,Q1(K,1))
      IF(I.EQ.1.AND.ANK.GT.2) K1=EMU(ANK,1,Q1(K,1))             
      IF(I.GT.1.AND.ANK.GT.2) K1=EMU(ANK,2,Q1(K,2))
C    2S AND 2P ORBITALS HAVE DIFFERENT VALUES OF MU:
      DO 200 J=1,NORBL
      IF(J.EQ.1.AND.ANL.LE.2) K2=EMU(ANL,0,Q1(L,1))
      IF(J.EQ.1.AND.ANL.GT.2) K2=EMU(ANL,1,Q1(L,1))
      IF(J.GT.1.AND.ANL.GT.2) K2=EMU(ANL,2,Q1(L,2))
  110 IF(MC(I).NE.MC(J)) GO TO 150                                      INDO 235
  120 IF(MC(I).LT.0) GO TO 140                                          INDO 236
  130 PAIRS(I,J)=SQRT((R*K1)**NCANK*(R*K2)**NCANL/(FACT(NCANK)*FACT(NCA INDO 237
     1NL)))*(-ONE)**(LC(J)+MC(J))*SS(N1,LC(I),MC(I),N2,LC(J),K1*R,K2*R) INDO 238
C
      GO TO 190                                                         INDO 239
  140 PAIRS(I,J)=PAIRS(I-1,J-1)                                         INDO 240
      GO TO 190                                                         INDO 241
  150 PAIRS(I,J)=ZERO                                                   INDO 242
  190 CONTINUE                                                          INDO 243
  200 CONTINUE                                                          INDO 244
      LCULK=LC(NORBK)                                                   INDO 245
      LCULL=LC(NORBL)                                                   INDO 246
      MAXL=LCULL                                                        INDO 247
      IF(LCULL.GT.LCULK) GO TO 210                                      INDO 248
      MAXL=LCULK                                                        INDO 249
  210 CONTINUE                                                          INDO 250
C     ROTATE INTEGRALS FROM DIATOMIC BASIS TO MOLECULAR BASIS           INDO 251
  220 CALL HARMTR(T,MAXL,E)                                             INDO 252
      DO 230 I=1,NORBK                                                  INDO 253
      DO 230 J=1,NORBL                                                  INDO 254
      TEMP(I,J) = ZERO                                                  INDO 255
      DO 230 KK=1,NORBL                                                 INDO 256
      TEMP(I,J) = TEMP(I,J)+T(J,KK)*PAIRS(I,KK)                         INDO 257
  230 CONTINUE                                                          INDO 258
      DO 240 I=1,NORBK                                                  INDO 259
      DO 240 J=1,NORBL                                                  INDO 260
      PAIRS(I,J) = ZERO                                                 INDO 261
      DO 240 KK=1,NORBK                                                 INDO 262
      PAIRS(I,J) = PAIRS(I,J)+T(I,KK)*TEMP(KK,J)                        INDO 263
  240 CONTINUE                                                          INDO 264
C     FILL S MATRIX                                                     INDO 265
      DO 260 I=1,NORBK                                                  INDO 267
      LLKP=LLK+I                                                        INDO 268    
      DO 260 J=1,NORBL                                                  INDO 269
      LLLP=LLL+J                                                        INDO 270
      S(LLKP,LLLP)=PAIRS(I,J)                                           INDO 271
  260 CONTINUE                                                          INDO 272
C     COMPUTATION OF 2-CENTER COULOMB INTEGRALS OVER SLATER S FUNCTIONS INDO 273
C     MU OF 1S OR 2S ORBITALS (NOT 2P ORBITALS)
C  NO DIFFERENTIATION WAS PREVIOUSLY MADE BETWEEN THE 2S AND 2P ORBITALS
C  ON AN ATOM.  CALCULATION HERE IS FOR S ORBITALS:
C      K1=EMU(ANK,1,Q1(K,1))
C      K2=EMU(ANL,1,Q1(L,1))
C  290 TERM1=(R*HALF)**(2*N2)*SS(0,0,0,2*N2-1,0, ZERO,TWO*K2*R)          INDO 274
C      TERM2 = ZERO                                                      INDO 275
C      LIM = 2*N1                                                        INDO 276
C      FJ=ZERO                                                           INDO 277
C      DO 300 J=1,LIM                                                    INDO 278
C      K1=EMU(ANK,1,Q1(K,1))
C      K2=EMU(ANL,1,Q1(L,1))
C      FJ=FJ+ONE                                                         INDO 279
C  300 TERM2 = TERM2+(FJ*(TWO *K1)**(2*N1-J)*(R*HALF)**(2*N1-J+2*N2))/   INDO 280
C     1(FACT(NCANK-J)*TWO* FLOAT(N1))*SS(2*N1-J,0,0,2*N2-1,0,TWO*K1*R,   INDO 281
C     2 TWO*K2*R)                                                        INDO 282
C      GO TO 310                                                         INDO 283
  265 CONTINUE                                                          INDO 284
C      K1=EMU(ANK,1,Q1(K,1))
C      K2=EMU(ANL,1,Q1(L,1))
C     COMPUTATION OF 1-CENTER COULOMB INTEGRALS OVER SLATER S FUNCTIONS INDO 285
C  270 TERM1 = FACT(2*N1  )/((TWO *K2)**(2*N1))                          INDO 286
C      TERM2 = ZERO                                                      INDO 287
C      LIM = 2*N1                                                        INDO 288
C      FJ=ZERO                                                           INDO 289
C      DO 280 J=1,LIM                                                    INDO 290
C      FJ=FJ+ONE                                                         INDO 291
C      NUM = FJ*(TWO *K1)**(2*N1-J)*FACT(4*N1-J)                         INDO 292
C      DEN = FACT(NCANK-J)*TWO* FLOAT(N1)*(TWO *(K1+K2))**(4*N1-J)       INDO 293
C      TERM2 = TERM2 + NUM/DEN                                           INDO 294
C  280 CONTINUE                                                          INDO 295
C     K AND L ARE THE ATOM NUMBERS OF THE PAIR OF ATOMS, K AND L
C  GAMMA SET TO ZERO HERE (AND BELOW INDO 309)  :
  310 GAMMA(K,L) = 0.
C  removed:     ((TWO*K2)**(2*N2+1)/FACT(NCANL))*(TERM1-TERM2)          INDO 296
C      WRITE(IW,997) K,L,GAMMA(K,L)
C997   FORMAT(1X,2I3,3X,'GAMMA(K,L)= ',F8.3)
      LLL=LLL+NORB(ANL)                                                 INDO 297
  319 CONTINUE                                                          INDO 298
      LLK=LLK+NORB(ANK)                                                 INDO 299
  320 CONTINUE                                                          INDO 300
C **********************
C     SYMMETRIZATION OF OVERLAP AND COULOMB INTEGRAL MATRICES           INDO 301
C     N IS THE TOTAL NUMBER OF ORBITALS IN THE PAIR OF ATOMS, K AND L
      DO 330 I=1,N                                                      INDO 302
      DO 330 J=I,N                                                      INDO 303
      S(J,I) = S(I,J)                                                   INDO 304
  330 CONTINUE
      IF(DEL.EQ.0.) WRITE(IW,1001)                                      INDO 305
      CALL MATOUT(S,DUMMY,0)                                            INDO 306
C     TRANSFER GAMMA TO GPRINT FOR PRINTING PURPOSES ONLY               INDO 307
      DO 340 I=1,NATOMS                                                 INDO 308
      DO 340 J=I,NATOMS                                                 INDO 309
C   BOTH ONE- AND TWO- CENTER GAMMA SET TO ZERO !
      GAMMA(I,J)=0.
      GPRINT(I,J)=GAMMA(I,J)                                            INDO 310
      GPRINT(J,I)=GAMMA(I,J)                                            INDO 311
C      WRITE(IW,99) I,J,GAMMA(I,J)
      GAMMA(J,I) = GAMMA(I,J)                                           INDO 312
  340 CONTINUE
C99    FORMAT(1X,'I= ',I2,2X,'J= ',I2,2X,'GAMMA(I,J)= ',F10.3)
      IF(DEL.EQ.0.) WRITE(IW,1000)                                      INDO 313
      CALL MATOUT(GPRINT,DUMMY,NATOMS)                                  INDO 314
 1000 FORMAT(18H COULOMB INTEGRALS)                                     INDO 315
 1001 FORMAT(15H OVERLAP MATRIX/)                                       INDO 316
      RETURN                                                            INDO 317
      END                                                               INDO 318
      FUNCTION SS(NN1,LL1,MM,NN2,LL2,ALPHA,BETA)                        INDO 319
C     PROCEDURE FOR CALCULATING REDUCED OVERLAP INTEGRALS               INDO 320
      COMMON/COEFF/YZ(311),IA(311),IB(311),LCOUNT(38),LLOW(38),         INDO 321
     1   LLLL(38),LPOINT(183)                                           INDO 322
      COMMON/ARRAYS/S(80,80),FACT(80),REST(80,80),RESTX(80)             INDO 323
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      DIMENSION A(17),B(17)
      REAL ZERO,HALF,ONE,FOUR,EIGHT                                     INDO 324
      DATA ZERO/0.0/,HALF/0.5/,ONE/1.0/,FOUR/4.0/,EIGHT/8.0/            INDO 325
      N1=NN1                                                            INDO 326
      L1=LL1                                                            INDO 327
      M=MM                                                              INDO 328
      N2=NN2                                                            INDO 329
      L2=LL2                                                            INDO 330
      P =(ALPHA + BETA)*HALF                                            INDO 331
      PT=(ALPHA - BETA)*HALF                                            INDO 332
      X = ZERO                                                          INDO 333
      M=IABS(M)                                                         INDO 334
C     REVERSE QUANTUM NUMBERS IF NECESSARY                              INDO 335
      IF((L2.LT.L1).OR.((L2.EQ.L1).AND.(N2.LT.N1))) GO TO 20            INDO 336
   10 GO TO 30                                                          INDO 337
   20 K = N1                                                            INDO 338
      N1= N2                                                            INDO 339
      N2= K                                                             INDO 340
      K= L1                                                             INDO 341
      L1= L2                                                            INDO 342
      L2= K                                                             INDO 343
      PT=-PT                                                            INDO 344
   30 CONTINUE                                                          INDO 345
C     FIND A AND B INTEGRALS                                            INDO 346
      CALL ABINT(A,B,P,PT,N1+N2)                                        INDO 347
      IF((L1.GT.0).OR.(L2.GT.0)) GO TO 60                               INDO 348
C     BEGIN SECTION USED FOR OVERLAP INTEGRALS INVOLVING S FUNCTIONS    INDO 349
C     FIND Z TABLE NUMBER L                                             INDO 350
      L = (90-17*N1+N1**2-2*N2)/2                                       INDO 351
      FACTOR=HALF                                                       INDO 352
      GO TO 40                                                          INDO 353
C     BEGIN SECTION USED FOR OVERLAPS INVOLVING NON-S FUNCTIONS         INDO 354
C     FIND Y TABLE NUMBER L                                             INDO 355
   60 L=(5-M)*(24-10*M+M**2)*(83-30*M+3*M**2)/120+                      INDO 356
     1  (30-9*L1+L1**2-2*N1)*(28-9*L1+L1**2-2*N1)/8+                    INDO 357
     2  (30-9*L2+L2**2-2*N2)/2                                          INDO 358
      FACTOR=(FACT(M+2)/EIGHT)**2*SQRT( FLOAT(2*L1+1)*FACT(L1-M+1)*     INDO 359
     1  FLOAT(2*L2+1)*FACT(L2-M+1)/(FOUR*FACT(L1+M+1)*FACT(L2+M+1)))    INDO 360
   40 IL =LPOINT(L)                                                     INDO 361
      IJ=LLOW(IL)                                                       INDO 362
      NCOUNT=LCOUNT(IL)                                                 INDO 363
      DO 50 I=1,NCOUNT                                                  INDO 364
      IJ=IJ+1                                                           INDO 365
   50 X=X+YZ(IJ)*A(IA(IJ))*B(IB(IJ))                                    INDO 366
      SS=X*FACTOR                                                       INDO 367
      RETURN                                                            INDO 368
      END                                                               INDO 369
      SUBROUTINE HARMTR(T,MAXL,E)                                       INDO 370
      DIMENSION T(81),E(3)
      REAL ZERO,HALF,ONE,TWO,THREE                                      INDO 371
      DATA ZERO/0.0/,HALF/0.5/,ONE/1.0/,TWO/2.0/,THREE/3.0/             INDO 372
      COST = E(3)                                                       INDO 373
      IF((ONE -COST**2).GT.0.0000000001) GO TO 20                       INDO 374
      SINT = ZERO                                                       INDO 375
      COSP = ONE                                                        INDO 376
      SINP = ZERO                                                       INDO 377
      GO TO 70                                                          INDO 378
   20 SINT= SQRT(ONE -COST**2)                                          INDO 379
      COSP = E(1)/SINT                                                  INDO 380
      SINP = E(2)/SINT                                                  INDO 381
   70 CONTINUE                                                          INDO 382
      DO 80 I=1,81                                                      INDO 383
   80 T(I)=ZERO                                                         INDO 384
      T(1)=ONE                                                          INDO 385
      IF (MAXL.GT.1) GO TO 100                                          INDO 386
   90 IF (MAXL.GT.0) GO TO 110                                          INDO 387
      RETURN                                                            INDO 388
  100 COS2T = COST**2-SINT**2                                           INDO 389
      SIN2T = TWO *SINT*COST                                            INDO 390
      COS2P = COSP**2-SINP**2                                           INDO 391
      SIN2P = TWO *SINP*COSP                                            INDO 392
C     TRANSFORMATION MATRIX ELEMENTS FOR D FUNCTIONS                    INDO 393
      SQRT3= SQRT(THREE)                                                INDO 394
      T(41)  =(THREE*COST**2-ONE )*HALF                                 INDO 395
      T(50)  = -SQRT3   *SIN2T*HALF                                     INDO 396
      T(68)  = SQRT3   *SINT**2*HALF                                    INDO 397
      T(42)  = SQRT3   *SIN2T*COSP*HALF                                 INDO 398
      T(51)  = COS2T*COSP                                               INDO 399
      T(60)  = -COST*SINP                                               INDO 400
      T(69)  =-T(42) /SQRT3                                             INDO 401
      T(78)  = SINT*SINP                                                INDO 402
      T(43)  = SQRT3   *SIN2T*SINP*HALF                                 INDO 403
      T(52)  = COS2T*SINP                                               INDO 404
      T(61)  = COST*COSP                                                INDO 405
      T(70)  = -T(43) /SQRT3                                            INDO 406
      T(79)  = -SINT*COSP                                               INDO 407
      T(44)  = SQRT3   *SINT**2*COS2P*HALF                              INDO 408
      T(53)  = SIN2T*COS2P*HALF                                         INDO 409
      T(62)  = -SINT*SIN2P                                              INDO 410
      T(71)   = (ONE +COST**2)*COS2P*HALF                               INDO 411
      T(80)  = -COST*SIN2P                                              INDO 412
      T(45)  = SQRT3   *SINT**2*SIN2P*HALF                              INDO 413
      T(54)  = SIN2T*SIN2P*HALF                                         INDO 414
      T(63)  = SINT*COS2P                                               INDO 415
      T(72)  = (ONE +COST**2)*SIN2P*HALF                                INDO 416
      T(81)  = COST*COS2P                                               INDO 417
C     TRANSFORMATION MATRIX ELEMENTS FOR P FUNCTIONS                    INDO 418
  110 T(11)  = COST*COSP                                                INDO 419
      T(20)  = -SINP                                                    INDO 420
      T(29)  = SINT*COSP                                                INDO 421
      T(12)  = COST*SINP                                                INDO 422
      T(21)  = COSP                                                     INDO 423
      T(30)  = SINT*SINP                                                INDO 424
      T(13)  = -SINT                                                    INDO 425
      T(31)  = COST                                                     INDO 426
      RETURN                                                            INDO 427
      END                                                               INDO 428
      SUBROUTINE ABINT(A,B,P,PT,K)                                      INDO 429
C     FILLS ARRAY OF B-INTEGRALS. NOTE THAT B(I) IS B(I-1) IN THE       INDO 430
C     USUAL NOTATION                                                    INDO 431
C     FOR X.GT.3                    EXPONENTIAL FORMULA IS USED         INDO 432
C     FOR 2.LT.X.LE.3 AND K.LE.10   EXPONENTIAL FORMULA IS USED         INDO 433
C     FOR 2.LT.X.LE.3 AND K.GT.10   15 TERM SERIES IS USED              INDO 434
C     FOR 1.LT.X .E.2 AND K.LE.7    EXPONENTIAL FORMULA IS USED         INDO 435
C     FOR 1.LT.X.LE.2 AND K.GT.7    12 TERM SERIES IS USED              INDO 436
C     FOR .5.LT.X.LE.1 AND K.LE.5   EXPONENTIAL FORMULA IS USED         INDO 437
C     FOR .5.LT.X.LE.1 AND K.GT.5    7 TERM SERIES IS USED              INDO 438
C     FOR X.LE..5                    6 TERM SERIES IS USED              INDO 439
C     ******************************************************************INDO 440
      DIMENSION A(17),B(17)
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)      
      REAL ZERO,HALF,ONE,TWO,THREE                                      INDO 441
      DATA ZERO/0.0/,HALF/0.5/,ONE/1.0/,TWO/2.0/,THREE/3.0/             INDO 442
      DO 5 I=1,17                                                       INDO 443
      A(I)=ZERO                                                         INDO 444
      B(I)=ZERO                                                         INDO 445
    5 CONTINUE                                                          INDO 446
      X=PT                                                              INDO 447
      KP=K+1                                                            INDO 448
      ABSX= ABS(X)                                                      INDO 449
      EXPX=EXP(X)                                                       INDO 450
      EXPMX= ONE/EXPX                                                   INDO 451
      IF(ABSX.GT.THREE) GO TO 120                                       INDO 452
   10 IF(ABSX.GT.TWO ) GO TO 20                                         INDO 453
   40 IF(ABSX.GT.ONE ) GO TO 50                                         INDO 454
   70 IF(ABSX.GT.HALF) GO TO 80                                         INDO 455
  100 IF(ABSX.GT..000001D0) GO TO 110                                   INDO 456
      GO TO 170                                                         INDO 457
  110 LAST =7                                                           INDO 458
      GO TO 140                                                         INDO 459
   80 IF(K.LE.5) GO TO 120                                              INDO 460
   90 LAST=8                                                            INDO 461
      GO TO 140                                                         INDO 462
   50 IF(K.LE.7) GO TO 120                                              INDO 463
   60 LAST=13                                                           INDO 464
      GO TO 140                                                         INDO 465
   20 IF(K.LE.10) GO TO 120                                             INDO 466
   30 LAST=16                                                           INDO 467
      GO TO 140                                                         INDO 468
  120 CONTINUE                                                          INDO 469
      B(1)=(EXPX-EXPMX)/X                                               INDO 470
      FI=ZERO                                                           INDO 471
      DO 130 I=1,K                                                      INDO 472
      FI=FI+ONE                                                         INDO 473
  130 B(I+1)=(FI*B(I)+(-ONE)**I*EXPX-EXPMX)/X                           INDO 474
      GO TO 190                                                         INDO 475
  140 FI=ZERO                                                           INDO 476
      DO 160 I=1,KP                                                     INDO 477
      Y=ZERO                                                            INDO 478
      FI=FI+ONE                                                         INDO 479
      FACTM=ONE                                                         INDO 480
      FM=ZERO                                                           INDO 481
      DO 150 M=1,LAST                                                   INDO 482
      FACTMM=FACTM                                                      INDO 483
      FM=FM+ONE                                                         INDO 484
      FACTM=FACTM*FM                                                    INDO 485
  150 Y=Y+(-X)**(M-1)*(ONE-(-ONE)**(M+I-1))/(FACTMM*(FM+FI-ONE))        INDO 486
  160 B(I)=Y                                                            INDO 487
      GO TO 190                                                         INDO 488
  170 FI=ZERO                                                           INDO 489
      DO 180 I=1,KP                                                     INDO 490
      FI=FI+ONE                                                         INDO 491
  180 B(I)=(ONE-(-ONE)**I)/FI                                           INDO 492
  190 CONTINUE                                                          INDO 493
      X=P                                                               INDO 494
      EXPMX=ONE/EXP(X)                                                  INDO 495
      A(1)=EXPMX/X                                                      INDO 496
      FI=ZERO                                                           INDO 497
      DO 200 I=1,K                                                      INDO 498
      FI=FI+ONE                                                         INDO 499
  200 A(I+1)=(A(I)*FI+EXPMX)/X                                          INDO 500
      RETURN                                                            INDO 501
      END                                                               INDO 502
      SUBROUTINE GUESSP(IOP1)                                           INDO 503
C     CALCULATES AN EXTENDED HUCKEL TYPE OF HAMILTONIAN FOR THE         INDO 504
C     INITIAL GUESS AND THEN ADDS TERMS TO FORM THE CORE HAMILTONIAN    INDO 505
C     FOR CNDO OR INDO.  AT THE END OF THIS ROUTINE, THE FIRST GUESS    INDO 506
C     AT THE EIGENVECTORS IS IN A AND THE CORE HAMILTONIAN IS IN H.     INDO 507
C     OVERLAPS ARE IN MATRIX A, COULOMB INTEGRALS (GAMMA) ARE IN MATRIX INDO 508
      COMMON/ARRAYS/A(80,80),EIG(80),B(80,80),BX(80)                    INDO 509
      COMMON/HCORE/H(80,80)                                             INDO 510
      COMMON/GAMMA/G(35,35)                                             INDO 511
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO 512
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)  INDO 513
      COMMON/SMK/C1,C2,C3,C4,C5,C6,C7,C8,C9,CA,CB,CC,CD,CE,CF,CG,CH,CI,
     1 CJ,CK,CL,CM,CN,CO
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      CHARACTER*4 IOP1,IOP2
      CHARACTER*4 FLAG
      CHARACTER*1 STAR,STARB,STARC
      DIMENSION BASE(20),AK(20),ED(6),BB(5,2),FF(80)
      DIMENSION BETAS(18),BETAP(18)
      DIMENSION ENEGS(18),ENEGP(18),ENEGD(18),BETA0(17)
      INTEGER OCCA,OCCB,UL,AN,U,ANI,CHARGE
      REAL ZERO,HALF,ONE,TWO,THREE,FOUR,FIVE,SIX,TWOFIV,TWELV,C2P5,P75,
     1 C1P5,IP,NETAX                                                    INDO 515                        
      DATA ZERO/0./,HALF/.5/,ONE/1./,TWO/2./,THREE/3./,FOUR/4./,SIX/6./ INDO 526
      DATA TWOFIV/25./,TWELV/12./,C2P5/2.5/,P75/.75/,C1P5/1.5/          INDO 527
      DATA EVAU/27.21/,RHO/1.0E-6/,IW/7/,A0/0.529167/                   INDO 528 
      ED(1)=C(1,1)-C(2,1)
      ED(2)=C(1,2)-C(2,2)
      ED(3)=C(1,3)-C(2,3)
      ED(4)=C(2,1)-C(3,1)
      ED(5)=C(2,2)-C(3,2)
      ED(6)=C(2,3)-C(3,3)
      DD1=SQRT(ED(1)*ED(1) +ED(2)*ED(2) +ED(3)*ED(3))
      DD2=SQRT(ED(4)*ED(4) +ED(5)*ED(5) +ED(6)*ED(6))
      STARB=' '
      STARC=' '
      J=0
      DO 50 I=1,NATOMS                                                  INDO 530
      ANI=AN(I)                                                         INDO 531
      NORBI=NORB(ANI)
      IF(STAR(1).EQ.'&'.OR.STAR(2).EQ.'&') STARB='&'
      IF(STAR(1).EQ.'*'.OR.STAR(2).EQ.'*') STARC='*'
      AK(1)= C1
      AK(2)= C2
      AK(3)= C3 
      AK(4)= C4            
      IF(ANI.EQ.5.AND.STARB.NE.'&') AK(5)= C5
      IF(ANI.EQ.6.AND.STARC.NE.'*') AK(6)= C6      
      AK(7)= C7 
      AK(8)= C8 
      AK(9)= C9
      AK(10)=CA
C  #11 and #12 REPRESENT CARBON THEN BORON:      
      IF(ANI.EQ.6.AND.STARC.EQ.'*') AK(6)= CB
      IF(ANI.EQ.5.AND.STARB.EQ.'&') AK(5)= CC
      BASE(1)= CD
      BASE(2)= CE
      BASE(3)= CF
      BASE(4)= CG 
      IF(ANI.EQ.5.AND.STARB.NE.'&') BASE(5)= CH
      IF(ANI.EQ.6.AND.STARC.NE.'*') BASE(6)= CI
      BASE(7)= CJ
      BASE(8)= CK
      BASE(9)= CL
      BASE(10)=CM
C  #11 and #12 REPRESENT CARBON THEN BORON:  
      IF(ANI.EQ.6.AND.STARC.EQ.'*') BASE(6)= CN
      IF(ANI.EQ.5.AND.STARB.EQ.'&') BASE(5)= CO
      DO 46 L=1,NORBI                                                   INDO 533
      J=J+1                                                             INDO 534   
C     Q1(I,L) IS INDEXED BY ATOM ORDER, I, IN THE MOLECULE AND
C     BY L=1 FOR S ORBITALS OR L=2 FOR P ORBITALS:
C  HETERONUCLEAR DIATOMIC NEUTRAL AND IONIC MOLECULES:
      IF(NATOMS.EQ.2.AND.AN(1).NE.AN(2).AND.I.EQ.1.AND.ANI.LE.4)
     1 Q1(1,1)= CHRG1
      IF(NATOMS.EQ.2.AND.AN(1).NE.AN(2).AND.I.EQ.1.AND.ANI.LE.4)
     1 Q1(1,2)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).NE.AN(2).AND.I.EQ.2.AND.ANI.LE.4)
     1 Q1(2,1)= -CHRG1
      IF(NATOMS.EQ.2.AND.AN(1).NE.AN(2).AND.I.EQ.2.AND.ANI.LE.4)
     1 Q1(2,2)= 0.   
      IF(NATOMS.EQ.2.AND.AN(1).NE.AN(2).AND.I.EQ.1.AND.ANI.GT.4)
     1 Q1(1,1)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).NE.AN(2).AND.I.EQ.1.AND.ANI.GT.4)
     1 Q1(1,2)= CHRG1
      IF(NATOMS.EQ.2.AND.AN(1).NE.AN(2).AND.I.EQ.2.AND.ANI.GT.4)
     1 Q1(2,1)= 0.  
      IF(NATOMS.EQ.2.AND.AN(1).NE.AN(2).AND.I.EQ.2.AND.ANI.GT.4)
     1 Q1(2,2)= -CHRG1
C  HOMONUCLEAR DIATOMIC IONS (CHARGE = 0):
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.EQ.0.AND.ANI.LE.4)
     1 Q1(1,1)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.EQ.0.AND.ANI.LE.4)
     1 Q1(2,1)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.EQ.0.AND.ANI.GT.4)
     1 Q1(1,1)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.EQ.0.AND.ANI.GT.4)
     1 Q1(1,2)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.EQ.0.AND.ANI.GT.4)
     1 Q1(2,1)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.EQ.0.AND.ANI.GT.4)
     1 Q1(2,2)= 0.
C  HOMONUCLEAR DIATOMIC IONS (CHARGE NOT 0):
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.NE.0.AND.ANI.LE.4)
     1 Q1(1,1)= CHRG1
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.NE.0.AND.ANI.LE.4)
     1 Q1(2,1)= CHRG1
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.NE.0.AND.ANI.GT.4)
     1 Q1(1,1)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.NE.0.AND.ANI.GT.4)
     1 Q1(1,2)= CHRG1
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.NE.0.AND.ANI.GT.4)
     1 Q1(2,1)= 0.
      IF(NATOMS.EQ.2.AND.AN(1).EQ.AN(2).AND.CHARGE.NE.0.AND.ANI.GT.4)
     1 Q1(2,2)= CHRG1
C  FOR CO2:
      IF(NATOMS.EQ.3.AND.I.EQ.1.AND.ANI.EQ.6) Q1(1,1)=  0.
      IF(NATOMS.EQ.3.AND.I.EQ.1.AND.ANI.EQ.6) Q1(1,2)=  CHRG1
      IF(NATOMS.EQ.3.AND.I.EQ.2.AND.ANI.EQ.8) Q1(2,1)=  0.
      IF(NATOMS.EQ.3.AND.I.EQ.2.AND.ANI.EQ.8) Q1(2,2)= -0.5*CHRG1
      IF(NATOMS.EQ.3.AND.I.EQ.3.AND.ANI.EQ.8) Q1(3,1)=  0.
      IF(NATOMS.EQ.3.AND.I.EQ.3.AND.ANI.EQ.8) Q1(3,2)= -0.5*CHRG1
C FOR BO2:
      IF(NATOMS.EQ.3.AND.I.EQ.1.AND.ANI.EQ.5) Q1(1,1)=  0.
      IF(NATOMS.EQ.3.AND.I.EQ.1.AND.ANI.EQ.5) Q1(1,2)=  CHRG1
      IF(NATOMS.EQ.3.AND.I.EQ.2.AND.ANI.EQ.8) Q1(2,1)=  0.
      IF(NATOMS.EQ.3.AND.I.EQ.2.AND.ANI.EQ.8) Q1(2,2)= -0.5*CHRG1
      IF(NATOMS.EQ.3.AND.I.EQ.3.AND.ANI.EQ.8) Q1(3,1)=  0.
      IF(NATOMS.EQ.3.AND.I.EQ.3.AND.ANI.EQ.8) Q1(3,2)= -0.5*CHRG1
C FOR CH4:
      IF(NATOMS.EQ.5.AND.I.EQ.1.AND.ANI.EQ.6) Q1(1,1)=  0.
      IF(NATOMS.EQ.5.AND.I.EQ.1.AND.ANI.EQ.6) Q1(1,2)=  CHRG1
      IF(NATOMS.EQ.5.AND.I.EQ.2.AND.ANI.EQ.1) Q1(2,1)= -0.25*CHRG1
      IF(NATOMS.EQ.5.AND.I.EQ.3.AND.ANI.EQ.1) Q1(3,1)= -0.25*CHRG1
      IF(NATOMS.EQ.5.AND.I.EQ.4.AND.ANI.EQ.1) Q1(4,1)= -0.25*CHRG1 
      IF(NATOMS.EQ.5.AND.I.EQ.5.AND.ANI.EQ.1) Q1(5,1)= -0.25*CHRG1
C  FOR CF4:
      IF(NATOMS.EQ.5.AND.I.EQ.1.AND.ANI.EQ.6) Q1(1,1)=  0.
      IF(NATOMS.EQ.5.AND.I.EQ.1.AND.ANI.EQ.6) Q1(1,2)=  CHRG1
      IF(NATOMS.EQ.5.AND.I.EQ.2.AND.ANI.EQ.9) Q1(2,1)=  0.
      IF(NATOMS.EQ.5.AND.I.EQ.2.AND.ANI.EQ.9) Q1(2,2)= -0.25*CHRG1
      IF(NATOMS.EQ.5.AND.I.EQ.3.AND.ANI.EQ.9) Q1(3,1)=  0.
      IF(NATOMS.EQ.5.AND.I.EQ.3.AND.ANI.EQ.9) Q1(3,2)= -0.25*CHRG1
      IF(NATOMS.EQ.5.AND.I.EQ.4.AND.ANI.EQ.9) Q1(4,1)=  0.
      IF(NATOMS.EQ.5.AND.I.EQ.4.AND.ANI.EQ.9) Q1(4,2)= -0.25*CHRG1      
      IF(NATOMS.EQ.5.AND.I.EQ.5.AND.ANI.EQ.9) Q1(5,1)=  0.
      IF(NATOMS.EQ.5.AND.I.EQ.5.AND.ANI.EQ.9) Q1(5,2)= -0.25*CHRG1
C  THE CHARGES ARE ASSIGNED TO THE OUTER, OCCUPIED, VALENCE ELECTRONS:     
C  J IS THE ORBITAL #:
      FF(J)= 1.0
C  1S:
      IF(L.EQ.1.AND.ANI.LE.2)              EMUS=EMU(ANI,0,Q1(I,1))
C  2S:
      IF(L.EQ.1.AND.ANI.EQ.3)              EMUS=EMU(ANI,1,Q1(I,1))
      IF(L.EQ.1.AND.ANI.EQ.4)              EMUS=EMU(ANI,1,0.)
      IF(L.EQ.1.AND.ANI.GT.4)              EMUS=EMU(ANI,1,0.)
      IF(L.EQ.1.AND.ANI.EQ.5.AND.STARB.NE.'&')  FF(J)= 0.0
      IF(L.EQ.1.AND.ANI.EQ.6.AND.STARC.NE.'*')  FF(J)= 0.0
      IF(L.EQ.1.AND.ANI.GT.6)                   FF(J)= 0.0
C
C  1S OR 2S ENERGY:      
      IF(L.EQ.1)                           ENEGS(ANI)= 13.605*EMUS*EMUS
      IF(L.EQ.1)                           H(J,J)=ENEGS(ANI)
C  2P:
      IF(L.GT.1.AND.ANI.LE.3)              EMUP=0.
      IF(L.GT.1.AND.ANI.GT.3)              EMUP=EMU(ANI,2,Q1(I,2)) 
      IF(L.GT.1.AND.ANI.GT.3)              ENEGP(ANI)= 13.605*EMUP*EMUP   
      IF(L.GT.1.AND.ANI.GT.3)              H(J,J)=ENEGP(ANI)
C
   46 CONTINUE
   50 CONTINUE                                                          INDO 542
C     FORM HUCKEL HAMILTONIAN IN A (OFF DIAGONAL TWO CENTER TERMS)      INDO 543
C      WRITE(IW,998) 1,1,A(1,1),H(1,1),H(1,1)
C      WRITE(IW,998) 2,2,A(2,2),H(2,2),H(2,2) 
C     N (FROM COMMON STATEMENT "SCLRS") IS THE TOTAL NUMBER OF 
C     ORBITALS IN EACH MOLECULE:
      DO 90 I=2,N                                                       INDO 544
      K=U(I)                                                            INDO 545
      L=AN(K)                                                           INDO 546
      UL=I-1                                                            INDO 547
      DO 90 J=1,UL                                                      INDO 548
      KK=U(J)                                                           INDO 549
      LL=AN(KK)                                                         INDO 550
C      WRITE(IW,986) N,I,J,A(I,J),H(I,I),H(J,J),ZZK
C 986  FORMAT(1X,3I3,4F9.4)
C  OFF-DIAGONAL TERMS ARE ASSIGNED HERE:
C
      H(I,J)=A(I,J)*(AK(L)*H(I,I)+AK(LL)*H(J,J))/2.
      IF(I.NE.J.AND.FF(I).EQ.0.) H(I,J)=0.
      IF(I.NE.J.AND.FF(J).EQ.0.) H(I,J)=0.
C
   90 CONTINUE                                                          INDO 555     
      BBB=0.0
      J=0
      DO 55 I=1,NATOMS
      BB(I,1)=0.
      BB(I,2)=0.
      ANI=AN(I)
      IF(ANI.EQ.6.AND.STARC.NE.'*') FLAG='S2P2'
      IF(ANI.EQ.6.AND.STARC.EQ.'*') FLAG='S1P3'
      IF(ANI.EQ.2)  BASE(2)=  CE 
      IF(ANI.EQ.10) BASE(10)= CM
      IF(ANI.EQ.4.AND.Q1(I,2).GE.0.) BASE(4)= CG +
     1 (0.166667-0.166667*Q1(I,2))*27.21*G1(ANI,Q1(I,2)) 
       IF(ANI.EQ.4.AND.Q1(I,2).GT.1.) BASE(4)= CG 
       IF(ANI.EQ.5.AND.Q1(I,2).LE.0..AND.STARB.NE.'&') BASE(5)= CH +
     1 (-0.12*Q1(I,2))*27.21*F2(ANI,Q1(I,2))  
       IF(ANI.EQ.5.AND.Q1(I,2).LE.0..AND.STARB.EQ.'&') BASE(5)= CO +
     1 (0.12-0.24*Q1(I,2))*27.21*F2(ANI,Q1(I,2)) +
     2 (0.33333-0.16667*Q1(I,2))*27.21*G1(ANI,Q1(I,2))
       IF(ANI.EQ.5.AND.Q1(I,2).GT.0..AND.STARB.EQ.'&') BASE(5)= CO +
     1 (0.12-0.12*Q1(I,2))*27.21*F2(ANI,Q1(I,2)) +
     2 (0.33333-0.16667*Q1(I,2))*27.21*G1(ANI,Q1(I,2))
C  CARBON [2s2 2p2] (WITH Q1=0) HAS ONE PAIR OF INTERACTIVE UNPAIRED 2p 
C  ELECTRONS. THE INTERACTION ENERGY IS 0.12*F2(2p,2p):       
      IF(ANI.EQ.6.AND.Q1(I,2).GE.0..AND.STARC.NE.'*') BASE(6)=CI +
     1 (0.12-0.12*Q1(I,2))*27.21*F2(ANI,Q1(I,2))
      IF(ANI.EQ.6.AND.Q1(I,2).GE.1..AND.STARC.NE.'*') BASE(6)=CI 
      IF(ANI.EQ.6.AND.Q1(I,2).LT.0..AND.STARC.NE.'*') BASE(6)=CI + 
     1 (0.12-0.24*Q1(I,2))*27.21*F2(ANI,Q1(I,2))
      IF(ANI.EQ.6.AND.Q1(I,2).LT.-1..AND.STARC.NE.'*') BASE(6)=CI + 
     1 (0.36+0.24*(Q1(I,2)+1.))*27.21*F2(ANI,Q1(I,2))
      IF(ANI.EQ.6.AND.STARC.EQ.'*'.AND.Q1(I,2).GE.0.) BASE(6)=CN +
     1 (0.36-0.24*Q1(I,2))*27.21*F2(ANI,Q1(I,2)) +
     2 (0.50-0.16667*Q1(I,2))*27.21*G1(ANI,Q1(I,2))
      IF(ANI.EQ.6.AND.STARC.EQ.'*'.AND.Q1(I,2).LT.0.) BASE(6)=CN +
     1 (0.36+0.24*Q1(I,2))*27.21*F2(ANI,Q1(I,2)) +
     2 (0.50+0.16667*Q1(I,2))*27.21*G1(ANI,Q1(I,2))
C NITROGEN [2s2 3p2] (WITH Q1=0) HAS THREE PAIRS OF INTERACTING UNPAIRED 2p 
C ELECTRONS. THE INTERACTION ENERGY IS 3 x 0.12*F2:
      IF(ANI.EQ.7.AND.Q1(I,2).GE.0.) BASE(7)= CJ +
     1 (0.36-0.24*Q1(I,2))*27.21*F2(ANI,Q1(I,2))
      IF(ANI.EQ.7.AND.Q1(I,2).GE.1.) BASE(7)= CJ +
     1 (0.12-0.12*(Q1(I,2)-1.))*27.21*F2(ANI,Q1(I,2))
      IF(ANI.EQ.7.AND.Q1(I,2).LT.0.) BASE(7)= CJ +
     1 (0.36+0.24*Q1(I,2))*27.21*F2(ANI,Q1(I,2))
      IF(ANI.EQ.7.AND.Q1(I,2).LT.-1.) BASE(7)= CJ +
     1 (0.12+0.12*(Q1(I,2)+1.))*27.21*F2(ANI,Q1(I,2))
C  OXYGEN [2s2 2p4] (WITH Q1=0) HAS ONE PAIR OF INTERACTIVE UNPAIRED 2p 
C  ELECTRONS. THE INTERACTION ENERGY IS 0.12*F2:
      IF(ANI.EQ.8.AND.Q1(I,2).GE.0.) BASE(8)= CK +
     1 (0.12+0.24*Q1(I,2))*27.21*F2(ANI,Q1(I,2))  
      IF(ANI.EQ.8.AND.Q1(I,2).LT.0.) BASE(8)= CK +
     1 (0.12+0.12*Q1(I,2))*27.21*F2(ANI,Q1(I,2))
      IF(ANI.EQ.8.AND.Q1(I,2).LT.-1.) BASE(8)= CK 
      IF(ANI.EQ.9.AND.Q1(I,2).GT.0.) BASE(9)= CL +
     1 (0.12*Q1(I,2))*27.21*F2(ANI,Q1(I,2))           
      NORBI=NORB(ANI)                                                  
      DO 47 L=1,NORBI                                                  
      J=J+1                                                         
      IF(ANI.LE.4) BB(I,1)=BASE(ANI)
      IF(ANI.GT.4) BB(I,1)=ENEGS(ANI)-ENEGP(ANI) +BASE(ANI)
      IF(L.EQ.1)  H(J,J)= BB(I,1)
C  ENERGIES OF ALL 2P ORBITALS SET TO BASE(ANI): ENEGP(ANI)-ENEGP(ANI)+BASE(ANI):    
      IF(L.GT.1)   H(J,J)=  BASE(ANI)
      IF(L.EQ.2)   BB(I,2)= BASE(ANI)
C  THE FOLLOWING EQUATIONS SUBTRACT AWAY THE BASE VALUES AND COMPENSATE
C  FOR THE ELECTRONS (1S, 2S, and 2P) OF EACH ATOM IN THE MOLECULE:
C  EXPECTED CORRECTIONS:
C   L=1 :
      IF(L.EQ.1.AND.ANI.EQ.1) BBB=BBB+BB(I,1)*(1.-0.5*FLOAT(CHARGE))
      IF(L.EQ.1.AND.ANI.EQ.2) BBB=BBB+BB(I,1)*(2.-0.5*FLOAT(CHARGE))
      IF(L.EQ.1.AND.ANI.EQ.3) BBB=BBB+BB(I,1)*(1.-0.5*FLOAT(CHARGE))
      IF(L.EQ.1.AND.ANI.EQ.4) BBB=BBB+BB(I,1)*(2.-0.5*FLOAT(CHARGE))
      IF(L.EQ.1.AND.ANI.GT.4) BBB=BBB+BB(I,1)*2.
      IF(L.EQ.2.AND.ANI.GT.4) BBB=BBB+BB(I,2)*(CZ(ANI)-2.-
     1 0.5*FLOAT(CHARGE))
C
 47   CONTINUE
       IF(ANI.EQ.6.AND.DEL.EQ.0.) WRITE(8,677) FLAG 
 55   CONTINUE
115    FORMAT(1X,I2,' GROUND=',F11.4,2X,'BOUND=',F11.4,2X,'EBASE=',
     1  F11.4,2X,'Q(I,1/2)=',F6.3)
677    FORMAT(1X,'CARBON HYBRIDIZATION IS ',A4)
C  DD IS IN ATOMIC UNITS AND THE INPUT TO UX SHOULD BE IN ATOMIC UNITS:
       IF(NATOMS.EQ.2.AND.CHARGE.EQ.0) UZ= +UX(AN(1),CHRG1,AN(2),
     1 -CHRG1,DD1)
       IF(NATOMS.EQ.2.AND.CHARGE.NE.0) UZ= +UX(AN(1),CHRG1,AN(2),
     1 FLOAT(CHARGE) -CHRG1,DD1)
       IF(NATOMS.EQ.3) UZ= +2.*UX(AN(1),CHRG1,AN(2),-0.5*CHRG1,DD1)
     1 +UX(AN(2),-0.5*CHRG1,AN(3),-0.5*CHRG1,DD2)
       IF(NATOMS.EQ.5) UZ= +4.*UX(AN(1),CHRG1,AN(2),-0.25*CHRG1,DD1)
     1 +6.*UX(AN(2),-0.25*CHRG1,AN(3),-0.25*CHRG1,DD2)
      IF(DEL.EQ.0.) WRITE(8,222) DD1*A0,UZ*EVAU
 222  FORMAT(1X,'DD= ',F7.4,3X,'UZ*EVAU= ',F10.4,2X,'eV')      
      BBB=BBB +UZ*EVAU
C     TRANSFER A COPY OF H INTO A FOR USE AS INITIAL GUESS OF F MATRIX  INDO 556
      DO 105 I=1,N                                                      INDO 557
      DO 105 J=I,N                                                      INDO 558
C  ELECTRON VOLTS ARE CONVERTED TO -AU BY DIVIDING BY EVAU =27.21
      TEMP= -H(J,I)/EVAU                                                INDO 559
      H(J,I)=TEMP                                                       INDO 560
      H(I,J)=TEMP                                                       INDO 561
      A(J,I)=TEMP                                                       INDO 562
  105 CONTINUE                                                          INDO 563
C     ADD V(AB) TO HCORE--CNDO                                          INDO 564
C      I=0                                                               INDO 565
C      DO 170 J=1,NATOMS                                                 INDO 566
C      TEMP=HALF*G(J,J)                                                  INDO 567
C      DO 160 K=1,NATOMS                                                 INDO 568
C  160 TEMP=TEMP-CZ(AN(K))*G(J,K)                                        INDO 569
C      NORBI=NORB(AN(J))                                                 INDO 570
C      DO 161 L=1,NORBI                                                  INDO 571
C      I=I+1                                                             INDO 572
C      WRITE(IW,99) 1,H(1,1)
C      WRITE(IW,99) 2,H(2,2)      
C      H(I,I)=H(I,I)+TEMP                                                INDO 573
C  161 CONTINUE                                                          INDO 574
C  170 CONTINUE                                                          INDO 575
C       IF(IOP1.EQ.'CNDO') GO TO 300                                     INDO 576
C     INDO MODIFICATION (CORRECTION TO U(I,I) )                          INDO 577
C      J=0                                                               INDO 578
C  180 DO 280 I=1,NATOMS                                                 INDO 579
C      K=AN(I)                                                           INDO 580
C      J=J+1                                                             INDO 581
C      IF (K.EQ.1) GO TO 280                                             INDO 582
C  190 IF (K.LE.3) GO TO 210                                             INDO 583
C  200 H(J,J)=H(J,J)+(CZ(K)-C1P5)*G1(K)/SIX                              INDO 584
C  210 IF(K.EQ.3) GO TO 220                                              INDO 585
C  230 IF(K.EQ.4) GO TO 240                                              INDO 586
C  250 TEMP=G1(K)/THREE+(CZ(K)-C2P5)*TWO*F2(K)/TWOFIV                    INDO 587
C      GO TO 260                                                         INDO 588
C  240 TEMP=G1(K)/FOUR                                                   INDO 589
C      GO TO 260                                                         INDO 590
C  220 TEMP=G1(K)/TWELV                                                  INDO 591
C  260 CONTINUE                                                          INDO 592
C      DO 270 L=1,3                                                      INDO 593
C      J=J+1                                                             INDO 594
C  270 H(J,J)=H(J,J)+TEMP                                                INDO 595
C  280 CONTINUE                                                          INDO 596
  300 CONTINUE
      IF(DEL.EQ.0.) WRITE(IW,1000)                                      INDO 597
 1000 FORMAT(17H CORE HAMILTONIAN/)                                     INDO 598
C  99  FORMAT(1X,'J=',2X,I2,3X,'H(J,J)=',2X,F10.2)
      CALL MATOUT(H,EIG,0)                                              INDO 599
      CALL EIGN1M(N,RHO,A,EIG)                                          INDO 600
      RETURN                                                            INDO 601
      END                                                               INDO 602
      SUBROUTINE SCFC(IOP1)                                             INDO 603
C     CNDO/INDO CLOSED SHELL SCF SEGMENT                                INDO 604
C     CORE HAMILTONIAN IS CONTAINED IN H, EIGENVECTORS IN A             INDO 605
      COMMON/ARRAYS/A(80,80),EIG(80),B(80,80),BX(80)                    INDO 606
      COMMON/HCORE/H(80,80)                                             INDO 607
      COMMON/GAMMA/G(35,35)                                             INDO 608
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO 609
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)  INDO 610
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE                      INDO 611
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)      
      INTEGER ORB,U,AN,OCCA,OCCB,ONCE,CHARGE
      CHARACTER*4 IOP1, IOP2                                            INDO 612
      CHARACTER*1 STAR
C  DATA F2 AND DATA G1:
      DATA IW/7/,NIT/25/,CNVERG/1.0E-6/,RHO/1.0E-6/                     INDO 615
      DATA ZERO/0.0/,HALF/0.5/,TWO/2.0/,SIX/6.0/,P14/.14/,P22/.22/      INDO 616
      IT=0                                                              INDO 617
      ENERGY=ZERO                                                       INDO 618
   10 IT=IT+1                                                           INDO 619
      ONCE=ZERO
      OLDENG=ENERGY                                                     INDO 620
C     FORM THE DENSITY MATRIX IN A FROM THE EIGENVECTORS IN A.          INDO 621
      IF(DEL.EQ.0.) WRITE(IW,918) OCCA
 918  FORMAT(1X,'OCCA (SCFC)= ',I4)
      DO 280 I=1,N                                                      INDO 622
      II=U(I)
      JJ=0
      IF((I+1).LE.N) JJ=U(I+1)
      DO 260 J=I,N                                                      INDO 623     
      EIG(J)=ZERO                                                       INDO 624
      DO 250 K=1,OCCA                                                   INDO 625
  250 EIG(J)=EIG(J)+A(I,K)*A(J,K)                                       INDO 626
  260 CONTINUE                                                          INDO 627
      DO 270 J=I,N                                                      INDO 628
      EIG(J)=TWO*EIG(J)                                                 INDO 629
  270 A(I,J)=EIG(J)                                                     INDO 630
  280 CONTINUE                                                          INDO 631
      IF (IT.GT.NIT) GO TO 300                                          INDO 632
C     FORM THE CNDO PART OF THE F MATRIX                                INDO 633
C     AT THE BEGINNING OF THIS SECTION, THE ELEMENTS A(I,I) AND EIG(I)  INDO 634
C     CONTAIN THE DIAGONAL ELEMENTS OF THE DENSITY MATRIX.  AFTER THE   INDO 635
C     DO LOOP, A(I,I) CONTAINS THE DIAGONAL ELEMENTS OF THE FOCK MATRIX.INDO 636
      DO 20 I=1,N                                                       INDO 637
      II=U(I)                                                           INDO 638
      DO 40 J=1,I                                                       INDO 639
      JJ=U(J)                                                           INDO 640
      A(I,J)=H(I,J)-A(J,I)*HALF*G(II,JJ)                                INDO 641
   40 CONTINUE                                                          INDO 642
      DO 30 J=1,N                                                       INDO 643
      JJ=U(J)                                                           INDO 644
      A(I,I)=A(I,I)+EIG(J)*G(II,JJ)                                     INDO 645
   30 CONTINUE                                                          INDO 646
   20 CONTINUE                                                          INDO 647
      IF(IOP1.EQ.'CNDO') GO TO 101                                      INDO 648
C     INDO MODIFICATION TO COULOMB AND EXCHANGE INTEGRALS               INDO 649
      I=1                                                               INDO 650
      DO 80 II=1,NATOMS                                                 INDO 651
      K=AN(II)                                                          INDO 652
      IF (K.LE.2) GO TO 90                                              INDO 653
      PAA=EIG(I+1)+EIG(I+2)+EIG(I+3)                                    INDO 654
      A(I,I)=A(I,I)-PAA*G1(K)/SIX                                       INDO 655
      DO 70 J=1,3                                                       INDO 656
      A(I+J,I+J)=A(I+J,I+J)-EIG(I)*G1(K)/SIX+F2(K)*(EIG(I+J)*P22        INDO 657
     1 -PAA*P14)                                                        INDO 658
      A(I+J,I)=A(I+J,I)+A(I,I+J)*HALF*G1(K)                             INDO 659
      DO 70 JJ=1,J                                                      INDO 660
      IF(JJ.EQ.J) GO TO 70                                              INDO 661
      A(I+J,I+JJ)=A(I+J,I+JJ)+A(I+JJ,I+J)*P22*F2(K)                     INDO 662
   70 CONTINUE                                                          INDO 663
   90 CONTINUE                                                          INDO 664
      I=I+NORB(K)                                                       INDO 665   
   80 CONTINUE                                                          INDO 666
C     COMPUTE THE ELECTRONIC ENERGY                                     INDO 667
  101 ENERGY=ZERO                                                       INDO 668
      DO 100 I=1,N                                                      INDO 669
  100 ENERGY=ENERGY+HALF*EIG(I)*(A(I,I)+H(I,I))                         INDO 670
      NM=N-1                                                            INDO 671
      DO 105 I=1,NM                                                     INDO 672
      IP=I+1                                                            INDO 673
      DO 105 J=IP,N                                                     INDO 674
      ENERGY=ENERGY+A(I,J)*(A(J,I)+H(J,I))                              INDO 675
  105 CONTINUE
C     WRITE(IW,130)  IT,ENERGY                                          INDO 676
  130 FORMAT(21H ENERGY ON ITERATION ,I2,4H IS ,E20.10)                 INDO 677
      IF(ABS(ENERGY-OLDENG).GE.CNVERG) GO TO 150                        INDO 678
C     IF CONVERGENCE, PUT THE ITERATION COUNTER AT ITS LIMIT            INDO 679
      IT=NIT                                                            INDO 680
C     COMPLETE HARTREE-FOCK MATRIX MAY BE PRINTED HERE                  INDO 681
      DO 170 I=1,N                                                      INDO 682
      DO 170 J=1,I                                                      INDO 683
C      IF(DEL.EQ.ZERO.AND.I.EQ.J) WRITE(IW,99) A(I,I)
C99    FORMAT(1X,'J=',2X,I2,3X,'H(J,J)=',2X,F10.2)
      A(J,I)=A(I,J)                                                     INDO 684
  170 CONTINUE
      IF(DEL.EQ.0.) WRITE(IW,1000)                                      INDO 685
 1000 FORMAT(12H1FOCK MATRIX//)                                         INDO 686
      CALL MATOUT(A,EIG,0)                                              INDO 687
  150 CALL EIGN1M(N,RHO,A,EIG)                                          INDO 688
C     IF NO CONVERGENCE, GO BACK UP TOP AGAIN                           INDO 689
      IF(IT.LT.NIT) GO TO 10                                            INDO 690
C     EIGENVALUES AND EIGENVECTORS MAY BE PRINTED HERE                  INDO 691
      IF(DEL.EQ.0.) WRITE(IW,1010)                                      INDO 692
 1010 FORMAT(29H EIGENVALUES AND EIGENVECTORS//)                        INDO 693
      CALL MATOUT(A,EIG,1)                                              INDO 694
  190 CONTINUE                                                          INDO 695
C     IF CONVERGENCE, GO BACK TOP ONCE MORE FOR DENSITY MATRIX          INDO 696
      GO TO 10                                                          INDO 697
  300 CONTINUE                                                          INDO 698
      DO 180 I=1,N                                                      INDO 699
      DO 180 J=I,N                                                      INDO 700
      A(J,I)=A(I,J)                                                     INDO 701
  180 CONTINUE
      IF(DEL.EQ.0.) WRITE(IW,1030)                                      INDO 702
 1030 FORMAT(15H DENSITY MATRIX//)                                      INDO 703
      CALL MATOUT(A,EIG,0)                                              INDO 704
      RETURN                                                            INDO 705
      END                                                               INDO 706
      SUBROUTINE SCFO(IOP1)                                             INDO 707
C     OPEN-SHELL UNRESTRICTED CALCULATION USING POPLE-NESBET EQUATIONS  INDO 708
C     CORE HAMILTONIAN IS CONTAINED IN H, EIGENVECTORS IN A             INDO 709
      COMMON/ARRAYS/A(80,80),EIGA(80),B(80,80),EIGB(80)                 INDO 710
      COMMON/HCORE/H(80,80)                                             INDO 711
      COMMON/GAMMA/G(35,35)                                             INDO 712
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO 713
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)  INDO 714
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)                                            INDO 715
      INTEGER OCCA,OCCB,U,AN,CHARGE
      REAL ZERO,HALF,TWO,SIX,THREE,P2,P24,TWOFIV                        INDO 721       
      CHARACTER*4 IOP1, IOP2                                            INDO 716
      CHARACTER*1 STAR
      DATA IW/7/,NIT/5/,CNVERG/1.0E-6/,RHO/1.0E-6/                      INDO 719
      DATA ZERO/0./,HALF/.5/,TWO/2./,SIX/6./,THREE/3./,P2/.2/,P24/.24/  INDO 720
      DATA TWOFIV/25./                                                  INDO 721
      IT=0                                                              INDO 722
      DO 5 I=1,N                                                        INDO 723
      DO 5 J=1,N                                                        INDO 724
      B(I,J)=A(I,J)                                                     INDO 725
    5 CONTINUE
      ENERGY=ZERO                                                       INDO 726
   10 IT=IT+1                                                           INDO 727
      OLDENG=ENERGY                                                     INDO 728
C     FORM DENSITY MATRIX IN A FROM EIGENVECTORS IN A AND DENSITY MATRIXINDO 729
C     IN B FROM EIGENVECTORS IN B                                       INDO 730
C     AT THE END OF THIS SECTION THE ARRAYS EIGA AND EIGB CONTAIN       INDO 731
C     THE DIAGONAL VALUES OF P(ALPHA) AND P(BETA)                       INDO 732
      DO 280 I=1,N                                                      INDO 733
      DO 260 J=I,N                                                      INDO 734
      EIGA(J)=ZERO                                                      INDO 735
      DO 250 K=1,OCCA                                                   INDO 736
  250 EIGA(J)=EIGA(J)+A(I,K)*A(J,K)                                     INDO 737
      EIGB(J)=ZERO                                                      INDO 738
      DO 251 K=1,OCCB                                                   INDO 739
  251 EIGB(J)=EIGB(J)+B(I,K)*B(J,K)                                     INDO 740
  260 CONTINUE                                                          INDO 741
      DO 270 J=I,N                                                      INDO 742
      A(I,J)=EIGA(J)                                                    INDO 743
      B(I,J)=EIGB(J)                                                    INDO 744
  270 CONTINUE                                                          INDO 745
  280 CONTINUE                                                          INDO 746
      IF (IT.GT.NIT) GO TO 300                                          INDO 747
C     FORM F(ALPHA) IN THE LOWER TRIANGLE OF A AND F(BETA) IN THE LOWER INDO 748
C     TRIANGLE OF B FROM P(ALPHA) IN THE UPPER TRIANGLE OF A (DIAGONAL  INDO 749
C     ELEMENTS IN EIGA) AND P(BETA) IN THE UPPER TRIANGLE OF B (DIA-    INDO 750
C     GONAL ELEMENTS IN EIGB)                                           INDO 751
C     FORM THE CNDO PART OF THE F MATRIX                                INDO 752
      DO 20 I=1,N                                                       INDO 753
      II=U(I)                                                           INDO 754
      DO 40 J=1,I                                                       INDO 755
      JJ=U(J)                                                           INDO 756
      A(I,J)=H(I,J)-A(J,I)*G(II,JJ)                                     INDO 757
      B(I,J)=H(I,J)-B(J,I)*G(II,JJ)                                     INDO 758
   40 CONTINUE                                                          INDO 759
      DO 30 J=1,N                                                       INDO 760
      JJ=U(J)                                                           INDO 761
      TEMP=(EIGA(J)+EIGB(J))*G(II,JJ)                                   INDO 762
      A(I,I)=A(I,I)+TEMP                                                INDO 763
      B(I,I)=B(I,I)+TEMP                                                INDO 764
   30 CONTINUE                                                          INDO 765
   20 CONTINUE                                                          INDO 766
      IF(IOP1.EQ.'CNDO') GO TO 101                                      INDO 767
C     INDO MODIFICATION TO COULOMB AND EXCHANGE INTEGRALS               INDO 768
      I=1                                                               INDO 769
      DO 99 II=1,NATOMS                                                 INDO 770
      K=AN(II)                                                          INDO 771
      IF (K.LE.2) GO TO 90                                              INDO 772
      PAA=EIGA(I+1)+EIGA(I+2)+EIGA(I+3)                                 INDO 773
      PAB=EIGB(I+1)+EIGB(I+2)+EIGB(I+3)                                 INDO 774
      A(I,I)=A(I,I)-PAA*G1(K)/THREE                                     INDO 775
      B(I,I)=B(I,I)-PAB*G1(K)/THREE                                     INDO 776
      DO 80 J=1,3                                                       INDO 777
      A(I+J,I+J)=A(I+J,I+J)+(EIGA(I+J)-PAA)*F2(K)*P2-EIGA(I)*G1(K)/THREEINDO 778
     1+(SIX*EIGB(I+J)-TWO*PAB)*F2(K)/TWOFIV                             INDO 779
      B(I+J,I+J)=B(I+J,I+J)+(EIGB(I+J)-PAB)*F2(K)*P2-EIGB(I)*G1(K)/THREEINDO 780
     1+(SIX*EIGA(I+J)-TWO*PAA)*F2(K)/TWOFIV                             INDO 781
      A(I+J,I)=A(I+J,I)+(A(I,I+J)+TWO*B(I,I+J))*G1(K)/THREE             INDO 782
      B(I+J,I)=B(I+J,I)+(B(I,I+J)+TWO*A(I,I+J))*G1(K)/THREE             INDO 783
      DO 80 L=J,3                                                       INDO 784
      IF(J.EQ.L) GO TO 80                                               INDO 785
      A(I+L,I+J)=A(I+L,I+J)+(P2*A(I+J,I+L)+P24*B(I+J,I+L))*F2(K)        INDO 786
      B(I+L,I+J)=B(I+L,I+J)+(P2*B(I+J,I+L)+P24*A(I+J,I+L))*F2(K)        INDO 787
   80 CONTINUE                                                          INDO 788
   90 CONTINUE                                                          INDO 789
      I=I+NORB(K)                                                       INDO 790
   99 CONTINUE                                                          INDO 791
C     COMPUTE THE ELECTRONIC ENERGY                                     INDO 792
  101 ENERGY=ZERO                                                       INDO 793
      DO 100 I=1,N                                                      INDO 794
      ENERGY=ENERGY+EIGA(I)*(A(I,I)+H(I,I))+EIGB(I)*(B(I,I)+H(I,I))     INDO 795
  100 CONTINUE                                                          INDO 796
      ENERGY=HALF*ENERGY                                                INDO 797
      NM=N-1                                                            INDO 798
      DO 105 I=1,NM                                                     INDO 799
      IP=I+1                                                            INDO 800
      DO 105 J=IP,N                                                     INDO 801
      ENERGY=ENERGY+A(I,J)*(A(J,I)+H(J,I))+B(I,J)*(B(J,I)+H(J,I))       INDO 802
  105 CONTINUE                                                          INDO 803
      IF(DEL.EQ.0.) WRITE(IW,130)  IT,ENERGY                            INDO 804
  130 FORMAT(21H ENERGY ON ITERATION ,I2,4H IS ,E20.10)                 INDO 805
      IF(ABS(ENERGY-OLDENG).GE.CNVERG) GO TO 150                        INDO 806
C     IF CONVERGENCE, PUT THE ITERATION COUNTER AT ITS LIMIT            INDO 807
      IT=NIT                                                            INDO 808
C     COMPLETE HARTREE-FOCK MATRIX MAY BE PRINTED HERE                  INDO 809
      DO 170 I=1,N                                                      INDO 810
      DO 170 J=1,I                                                      INDO 811
      B(J,I)=B(I,J)                                                     INDO 812
      A(J,I)=A(I,J)                                                     INDO 813
  170 CONTINUE
C      WRITE(IW,1000)                                                    INDO 814
 1000 FORMAT(18H1ALPHA FOCK MATRIX//)                                   INDO 815
      CALL MATOUT(A,EIGA,0)                                             INDO 816
C      WRITE(IW,1005)                                                    INDO 817
 1005 FORMAT(18H  BETA FOCK MATRIX//)                                   INDO 818
      CALL MATOUT(B,EIGB,0)                                             INDO 819
  150 CALL EIGN1M(N,RHO,A,EIGA)                                         INDO 820
      CALL EIGN1M(N,RHO,B,EIGB)                                         INDO 821
C     THE EXPECTATION VALUE OF S**2 IS COMPUTED HERE BUT ONLY PRINTED   INDO 822
C     AFTER CONVERGENCE.                                                INDO 823
      MU=FLOAT(OCCB)                                                    INDO 824
      S=0.5*FLOAT(OCCA-OCCB)                                            INDO 825
      S=S*(S+1)+MU                                                      INDO 826
      DO 181 I=1,OCCA                                                   INDO 827
      DO 181 J=1,OCCB                                                   INDO 828
      TEMP=0.0                                                          INDO 829
      DO 182 K=1,N                                                      INDO 830
      TEMP=TEMP+A(K,I)*B(K,J)                                           INDO 831
  182 CONTINUE                                                          INDO 832
      S=S-TEMP*TEMP                                                     INDO 833
  181 CONTINUE                                                          INDO 834
C     IF NO CONVERGENCE, GO BACK UP TOP AGAIN                           INDO 835
      IF(IT.LT.NIT) GO TO 10                                            INDO 836
C     WRITE(IW,1040) S                                                  INDO 837
 1040 FORMAT(//42H THE EXPECTATION VALUE OF S(SQUARED) IS   ,F10.5//)   INDO 838
C     EIGENVALUES AND EIGENVECTORS MAY BE PRINTED HERE                  INDO 839
      IF(DEL.EQ.0.) WRITE(IW,1010)                                      INDO 840
 1010 FORMAT(35H ALPHA EIGENVALUES AND EIGENVECTORS//)                  INDO 841
      CALL MATOUT(A,EIGA,1)                                             INDO 842
C      WRITE(IW,1015)                                                    INDO 843
 1015 FORMAT(35H  BETA EIGENVALUES AND EIGENVECTORS//)                  INDO 844
      CALL MATOUT(B,EIGB,1)                                             INDO 845
C     IF CONVERGENCE, GO BACK TOP ONCE MORE FOR DENSITY MATRIX          INDO 846
      GO TO 10                                                          INDO 847
  300 CONTINUE                                                          INDO 848
      DO 180 I=1,N                                                      INDO 849
      DO 180 J=I,N                                                      INDO 850
      A(J,I)=A(I,J)                                                     INDO 851
      B(J,I)=B(I,J)                                                     INDO 852
  180 CONTINUE
      IF(DEL.EQ.0.) WRITE(IW,1030)                                      INDO 853
 1030 FORMAT(21H ALPHA DENSITY MATRIX//)                                INDO 854
      CALL MATOUT(A,EIGA,0)                                             INDO 855
      IF(DEL.EQ.0.) WRITE(IW,1035)                                      INDO 856
 1035 FORMAT(21H  BETA DENSITY MATRIX//)                                INDO 857
      CALL MATOUT(B,EIGB,0)                                             INDO 858
      RETURN                                                            INDO 859
      END                                                               INDO 860
      SUBROUTINE SCFN(IOP1,KATOM)                                       INDO 861
C     OPEN-SHELL UNRESTRICTED CALCULATION USING POPLE-NESBET EQUATIONS  INDO 862
C     THIS UNRESTRICTED HARTREE-FOCK ROUTINE IS FOR NMR CALCULATIONS    INDO 863
      COMMON/ARRAYS/A(80,80),EIGA(80),B(80,80),EIGB(80)                 INDO 864
      COMMON/HCORE/H(80,80)                                             INDO 865
      COMMON/GAMMA/G(35,35)                                             INDO 866
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO 867
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)  INDO 868
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)                                            INDO 869
      INTEGER OCCA,OCCB,U,AN,CHARGE
      CHARACTER*4 IOP1, IOP2                                            INDO 870
      CHARACTER*1 STAR
      DIMENSION D(9),NUCMOM(9),NUCSPN(9)                                INDO 871
      REAL NUCMOM,NUCSPN,ZERO,HALF,TWO,SIX,THREE,P2,P24,TWOFIV,FOU                                                INDO 872
C     THESE ARE THE DENSITIES OF A VALENCE S ORBITAL AT THE NUCLEUS     INDO 873
      DATA D/.3724,0.0,.1673,.5704,2.2825,4.0318,6.9265,12.0658,21.3126/INDO 874
C     TABLE OF NUCLEAR MOMENTS                                          INDO 875
      DATA NUCMOM/2.79268,-2.1274,3.256,-1.1773,2.688,.7022,            INDO 876
     1  .40358,-1.8930,2.6273/                                          INDO 877
C     TABLE OF NUCLEAR SPINS                                            INDO 878
      DATA NUCSPN/0.5,0.5,1.5,1.5,1.5,0.5,1.0,2.5,0.5/                  INDO 879
      DATA CONST1/9.3446954E-4/,CONST2/6.7487265E24/,CONST3/3.85004E-21/INDO 880
      DATA IW/7/,NIT/25/,RHO/1.E-6/,CNVERG/1.E-9/,RPERT/.001/           INDO 883
      DATA ZERO/0./,HALF/.5/,TWO/2./,SIX/6./,THREE/3./,P2/.2/,P24/.24/  INDO 884
      DATA TWOFIV/25./,FOUR/4./                                         INDO 885
      IT=0                                                              INDO 886
      ICOUNT=0                                                          INDO 887
      N2=N*(N+1)                                                        INDO 888
      IORBTL=1                                                          INDO 889
      KM=KATOM-1                                                        INDO 890
      DO 1 I=1,KM                                                       INDO 891
      K=AN(I)                                                           INDO 892
    1 IORBTL=IORBTL+NORB(K)                                             INDO 893
      DO 5 I=1,N                                                        INDO 894
      DO 5 J=1,N                                                        INDO 895
      B(I,J)=A(I,J)                                                     INDO 896
    5 CONTINUE
   10 IT=IT+1                                                           INDO 897
C     FORM DENSITY MATRIX IN A FROM EIGENVECTORS IN A AND DENSITY MATRIXINDO 898
C     IN B FROM EIGENVECTORS IN B                                       INDO 899
C     AT THE END OF THIS SECTION THE ARRAYS EIGA AND EIGB ARE HOLDING   INDO 900
C     THE DIAGONAL VALUES OF P(ALPHA) AND P(BETA)                       INDO 901
      DO 280 I=1,N                                                      INDO 902
      DO 260 J=I,N                                                      INDO 903
      EIGA(J)=ZERO                                                      INDO 904
      DO 250 K=1,OCCA                                                   INDO 905
  250 EIGA(J)=EIGA(J)+A(I,K)*A(J,K)                                     INDO 906
      EIGB(J)=ZERO                                                      INDO 907
      DO 251 K=1,OCCB                                                   INDO 908
  251 EIGB(J)=EIGB(J)+B(I,K)*B(J,K)                                     INDO 909
  260 CONTINUE                                                          INDO 910
      DO 270 J=I,N                                                      INDO 911
      A(I,J)=EIGA(J)                                                    INDO 912
      B(I,J)=EIGB(J)                                                    INDO 913
  270 CONTINUE                                                          INDO 914
  280 CONTINUE                                                          INDO 915
      IF (IT.GT.NIT) GO TO 300                                          INDO 916
C      WRITE(34) ((A(J,I),J=1,I),I=1,N),((B(J,I),J=1,I),I=1,N)           INDO 917
C      REWIND 34                                                        INDO 918
      CALL CONVRG(IT,CNVERG,ICOUNT,N,N2,2)                              INDO 919
C      READ(31)  ((A(J,I),J=1,I),I=1,N),((B(J,I),J=1,I),I=1,N)           INDO 920
C      REWIND 31                                                        INDO 921
      DO 777 I=1,N                                                      INDO 922
      EIGA(I)=A(I,I)                                                    INDO 923
  777 EIGB(I)=B(I,I)                                                    INDO 924
C     FORM F(ALPHA) IN THE LOWER TRIANGLE OF A AND F(BETA) IN THE LOWER INDO 925
C     TRIANGLE OF B FROM P(ALPHA) IN THE UPPER TRIANGLE OF A (DIAGONAL  INDO 926
C     ELEMENTS IN EIGA) AND P(BETA) IN THE UPPER TRIANGLE OF B (DIAGONALINDO 927
C     ELEMENTS IN EIGB)                                                 INDO 928
C     FORM THE CNDO PART OF THE F MATRIX                                INDO 929
      DO 20 I=1,N                                                       INDO 930
      II=U(I)                                                           INDO 931
      DO 40 J=1,I                                                       INDO 932
      JJ=U(J)                                                           INDO 933
      A(I,J)=H(I,J)-A(J,I)*G(II,JJ)                                     INDO 934
      B(I,J)=H(I,J)-B(J,I)*G(II,JJ)                                     INDO 935
   40 CONTINUE                                                          INDO 936
      DO 30 J=1,N                                                       INDO 937
      JJ=U(J)                                                           INDO 938
      TEMP=(EIGA(J)+EIGB(J))*G(II,JJ)                                   INDO 939
      A(I,I)=A(I,I)+TEMP                                                INDO 940
      B(I,I)=B(I,I)+TEMP                                                INDO 941
   30 CONTINUE                                                          INDO 942
   20 CONTINUE                                                          INDO 943
      IF(IOP1.EQ.'CNDO') GO TO 101                                      INDO 944
C     INDO MODIFICATION TO COULOMB AND EXCHANGE INTEGRALS               INDO 945
C      I=1                                                               INDO 946
C      DO 99 II=1,NATOMS                                                 INDO 947
C      K=AN(II)                                                          INDO 948
C      IF (K.LE.2) GO TO 90                                              INDO 949
C      PAA=EIGA(I+1)+EIGA(I+2)+EIGA(I+3)                                 INDO 950
C      PAB=EIGB(I+1)+EIGB(I+2)+EIGB(I+3)                                 INDO 951
C      A(I,I)=A(I,I)-PAA*G1(K)/THREE                                     INDO 952
C      B(I,I)=B(I,I)-PAB*G1(K)/THREE                                     INDO 953
C      DO 80 J=1,3                                                       INDO 954
C      A(I+J,I+J)=A(I+J,I+J)+(EIGA(I+J)-PAA)*F2(K)*P2-EIGA(I)*G1(K)/THREEINDO 955
C     1+(SIX*EIGB(I+J)-TWO*PAB)*F2(K)/TWOFIV                             INDO 956
C      B(I+J,I+J)=B(I+J,I+J)+(EIGB(I+J)-PAB)*F2(K)*P2-EIGB(I)*G1(K)/THREEINDO 957
C     1+(SIX*EIGA(I+J)-TWO*PAA)*F2(K)/TWOFIV                             INDO 958
C      A(I+J,I)=A(I+J,I)+(A(I,I+J)+TWO*B(I,I+J))*G1(K)/THREE             INDO 959
C      B(I+J,I)=B(I+J,I)+(B(I,I+J)+TWO*A(I,I+J))*G1(K)/THREE             INDO 960
C      DO 80 L=J,3                                                       INDO 961
C      IF(J.EQ.L) GO TO 80                                               INDO 962
C      A(I+L,I+J)=A(I+L,I+J)+(P2*A(I+J,I+L)+P24*B(I+J,I+L))*F2(K)        INDO 963
C      B(I+L,I+J)=B(I+L,I+J)+(P2*B(I+J,I+L)+P24*A(I+J,I+L))*F2(K)        INDO 964
C   80 CONTINUE                                                          INDO 965
C   90 CONTINUE                                                          INDO 966
C      I=I+NORB(K)                                                       INDO 967
C   99 CONTINUE                                                          INDO 968
C     ADD PERTURBATION TO S ORBITAL ON KATOM                            INDO 969
  101 A(IORBTL,IORBTL)=A(IORBTL,IORBTL)+RPERT                           INDO 970
      B(IORBTL,IORBTL)=B(IORBTL,IORBTL)-RPERT                           INDO 971
C     COMPUTE THE ELECTRONIC ENERGY                                     INDO 972
      ENERGY=ZERO                                                       INDO 973
      DO 100 I=1,N                                                      INDO 974
      ENERGY=ENERGY+EIGA(I)*(A(I,I)+H(I,I))+EIGB(I)*(B(I,I)+H(I,I))     INDO 975
  100 CONTINUE                                                          INDO 976
      ENERGY=HALF*ENERGY                                                INDO 977
      NM=N-1                                                            INDO 978
      DO 105 I=1,NM                                                     INDO 979
      IP=I+1                                                            INDO 980
      DO 105 J=IP,N                                                     INDO 981
      ENERGY=ENERGY+A(I,J)*(A(J,I)+H(J,I))+B(I,J)*(B(J,I)+H(J,I))       INDO 982
  105 CONTINUE                                                          INDO 983
      IF(DEL.EQ.0.) WRITE(IW,130)  IT,ENERGY                            INDO 984
  130 FORMAT(21H ENERGY ON ITERATION ,I2,4H IS ,E20.10)                 INDO 985
C     COMPLETE HARTREE-FOCK MATRIX MAY BE PRINTED HERE                  INDO 986
      IF(IT.LT.NIT) GO TO 150                                           INDO 987
      DO 170 I=1,N                                                      INDO 988
      DO 165 J=1,I                                                      INDO 989
      B(J,I)=B(I,J)                                                     INDO 990
      A(J,I)=A(I,J)                                                     INDO 991
  165 CONTINUE
  170 CONTINUE
C      WRITE(IW,1000)                                                   INDO 992
 1000 FORMAT(18H1ALPHA FOCK MATRIX//)                                   INDO 993
      CALL MATOUT(A,EIGA,0)                                             INDO 994
C      WRITE(IW,1005)                                                   INDO 995
 1005 FORMAT(18H  BETA FOCK MATRIX//)                                   INDO 996
      CALL MATOUT(B,EIGB,0)                                             INDO 997
  150 CONTINUE                                                          INDO 998
      CALL EIGN1M(N,RHO,A,EIGA)                                         INDO 999
      CALL EIGN1M(N,RHO,B,EIGB)                                         INDO1000
C     EIGENVALUES AND EIGENVECTORS MAY BE PRINTED HERE                  INDO1001
C     IF NO CONVERGENCE, GO BACK UP TOP AGAIN                           INDO1002
      IF(IT.LT.NIT) GO TO 10                                            INDO1003
      IF(DEL.EQ.0.) WRITE(IW,1010)                                      INDO1004
 1010 FORMAT(35H ALPHA EIGENVALUES AND EIGENVECTORS//)                  INDO1005
      CALL MATOUT(A,EIGA,1)                                             INDO1006
C      WRITE(IW,1015)                                                   INDO1007
 1015 FORMAT(35H  BETA EIGENVALUES AND EIGENVECTORS//)                  INDO1008
      CALL MATOUT(B,EIGB,1)                                             INDO1009
      GO TO 10                                                          INDO1010
  300 CONTINUE                                                          INDO1011
      DO 180 I=1,N                                                      INDO1012
      DO 180 J=I,N                                                      INDO1013
      A(J,I)=A(I,J)                                                     INDO1014
      B(J,I)=B(I,J)                                                     INDO1015
  180 CONTINUE
      IF(DEL.EQ.0.) WRITE(IW,1030)                                      INDO1016
 1030 FORMAT(21H ALPHA DENSITY MATRIX//)                                INDO1017
      CALL MATOUT(A,EIGA,0)                                             INDO1018
      IF(DEL.EQ.0.) WRITE(IW,1035)                                      INDO1019
 1035 FORMAT(21H  BETA DENSITY MATRIX//)                                INDO1020
      CALL MATOUT(B,EIGB,0)                                             INDO1021
C     CALCULATE THE COUPLING CONSTANTS BETWEEN KATOM AND ALL OTHERS.    INDO1022
      WRITE(IW,2001)                                                    INDO1023
 2001 FORMAT(10(1H*),38HISOTROPIC SPIN-SPIN COUPLING CONSTANTS,14(1H*)) INDO1024
      WRITE(IW,2002)                                                    INDO1025
 2002 FORMAT(//,49H PERTURBING  OTHER  REDUCED COUPLING     COUPLING)   INDO1026
      WRITE(IW,2003)                                                    INDO1027
 2003 FORMAT(60H   ATOM       ATOM  CONSTANT K (CM**-3)  CONSTANT J (CY/INDO1028
     1SEC))                                                             INDO1029
      IORBTL=1                                                          INDO1030
      IND1=AN(KATOM)                                                    INDO1031
      DO 800 K=1,NATOMS                                                 INDO1032
      IND2=AN(K)                                                        INDO1033
      IF(K.EQ.KATOM) GO TO 800                                          INDO1034
      CCOUPL=(EIGA(IORBTL)-EIGB(IORBTL))/RPERT                          INDO1035
      COUP1=CONST1*D(IND1)*D(IND2)*CCOUPL                               INDO1036
      COUP2=CONST2*COUP1                                                INDO1037
      COUP3=CONST3*NUCMOM(IND1)/NUCSPN(IND1)*NUCMOM(IND2)/NUCSPN(IND2)  INDO1038
     1 *COUP2                                                           INDO1039
      WRITE(IW,2004) KATOM,EL(IND1),K,EL(IND2),COUP2,COUP3              INDO1040
 2004 FORMAT(/,2X,I2,A4,4X,I2,A4,2E20.10)                               INDO1041
  800 IORBTL=IORBTL+NORB(IND2)                                          INDO1042
      RETURN                                                            INDO1043
      END                                                               INDO1044
      SUBROUTINE CONVRG(IT,ACURCY,ICOUNT,N,NTT2,NO)                     INDO1045
C     THIS ROUTINE IS A MODIFIED VERSION OF THE CONVERGENCE             INDO1046
C     ROUTINE APPEARING IN GAUSSIAN 70.                                 INDO1047
C      N IS THE SIZE OF THE BASIS SET,NTT2 IS THE NUMBER OF DENSITY     INDO1048
C     MATRIX ELEMENTS AND NO IS 1 FOR CLOSED SHELLS, 2 FOR OPEN SHELLS  INDO1049
C     IT IS THE ITERATION NUMBER, ICOUNT IS THE NUMBER OF ITERATIONS    INDO1050
C     SINCE THE LAST EXTRAPOLATION.                                     INDO1051
      COMMON/ARRAYS/A3(6480),A2(6480)                                   INDO1052
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      INTEGER CHARGE
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      REAL PT99,PT995,ONE,ONEPT9,TWO,FOUR
      DATA IOUT/7/                                                      INDO1053
      DATA PT99/.99/,PT995/.995/,ONE/1./,ONEPT9/1.9/,TWO/2./,FOUR/4./   INDO1054
   10 FORMAT(/,17H CONVERGENCE DATA,20X,E15.6,2X,E15.6,2X,E15.6)        INDO1055
   20 FORMAT(22H 3-POINT EXTRAPOLATION)                                 INDO1056
   30 FORMAT(22H 4-POINT EXTRAPOLATION)                                 INDO1057
      ICOUNT=ICOUNT+1                                                   INDO1058
      LOC1=33                                                           INDO1059
      IF(ICOUNT-(ICOUNT/2)*2)40,50,40                                   INDO1060
   40 LOC1=32                                                           INDO1061
   50 CONTINUE                                                          INDO1062
      LOC2=65-LOC1                                                      INDO1063
C     READ IN CURRENT DENSITY MATRIX (SQUEEZED)                         INDO1064
C      CALL TREAD(34,A3,NTT2)                                           INDO1065
C     SKIP TO  END IN FIRST CYCLE OR IMMEDIATELY AFTER EXTRAPOLATION    INDO1066
      IF(ICOUNT-1)70,250,70                                             INDO1067
C     P(N) NOW IN A3, READ P(N-1) INTO A2                               INDO1068
C   70 CALL TREAD(31,A2,NTT2)                                           INDO1069
   70 CONTINUE
C     FORM P(N)-P(N-1) IN A2                                            INDO1070
      DO 80 I=1,NTT2                                                    INDO1071
   80 A2(I)=A3(I)-A2(I)                                                 INDO1072
C     FIND LENGTH DP1                                                   INDO1073
      SP11=TRACE(A2,A2,N,NO)                                            INDO1074
      IF(SP11.GT.0.) DP1=SQRT(SP11/TWO)                                 INDO1075
      IF(SP11.LE.0.) DP1=0.
C     TEST FOR CONVERGENCE BY FINDING IF ROOT MEAN SQUARE DP IS LESS    INDO1076
C     THAN ACURCY                                                       INDO1077
      RMSDP=DP1/N                                                       INDO1078
      IF(RMSDP-ABS(ACURCY))90,100,100                                   INDO1079
C     SETS EXIT FLAG (IT) FOR SCF                                       INDO1080
C     IF CONVERGENCE, PUT THE ITERATION COUNTER AT ITS LIMIT            INDO1081
   90 IT=25                                                             INDO1082
      GO TO 250                                                         INDO1084
  100 IF(ICOUNT-2)120,110,120                                           INDO1085
  110 CONTINUE                                                          INDO1086
      WRITE(IOUT,10) RMSDP                                              INDO1087
      GO TO 245                                                         INDO1088
C  120 CALL TWRITE(31,A3,NTT2)                                          INDO1089
  120 CONTINUE
      IF(ICOUNT-4) 140,130,130                                          INDO1090
C  130 CALL TREAD(LOC1,A3,NTT2)                                         INDO1091
  130 CONTINUE
      SP23=SP12                                                         INDO1092
      SP33=SP22                                                         INDO1093
      SP13=TRACE(A3,A2,N,NO)                                            INDO1094
C     FIND LENGTH DP3                                                   INDO1095
      IF(SP33.GT.0.) DP3=SQRT(SP33/TWO)                                 INDO1096
      IF(SP33.LE.0.) DP3=0. 
C     READ P(N-1)-P(N-2) INTO A3                                        INDO1097
C  140 CALL TREAD(LOC2,A3,NTT2)                                         INDO1098
  140 CONTINUE
      SP12=TRACE(A3,A2,N,NO)                                            INDO1099
      SP22=TRACE(A3,A3,N,NO)                                            INDO1100
C     FIND LENGTH DP2                                                   INDO1101
      IF(SP22.GT.0.) DP2=SQRT(SP22/TWO)                                 INDO1102
      IF(SP22.LE.0.) DP2=0.
C     FIND COSINE OF ANGLE BETWEEN SUCCESSIVE DISPLACEMENTS             INDO1103
      COSPHI=SP12/(TWO*DP1*DP2)                                         INDO1104
      IF(ICOUNT-3)160,150,160                                           INDO1105
  150 WRITE(IOUT,10) RMSDP,COSPHI                                       INDO1106
      GO TO 240                                                         INDO1107
C     FIND COSINE OF ANGLE BETWEEN DP3 AND PLANE OF DP1 AND DP2         INDO1108
  160 X=(SP13*SP22-SP12*SP23)/(SP11*SP22-SP12*SP12)                     INDO1109
      Y=(SP23*SP11-SP12*SP13)/(SP11*SP22-SP12*SP12)                     INDO1110
      COSPSI=SQRT((X*X*SP11+Y*Y*SP22+TWO*X*Y*SP12)/TWO)/DP3             INDO1111
      WRITE(IOUT,10) RMSDP,COSPHI,COSPSI                                INDO1112
C      CALL TREAD(34,A3,NTT2)                                           INDO1113
C     DO NOT EXTRAPOLATE UNLESS 4 CONSECUTIVE POINTS ARE NEARLY COPLANARINDO1114
      IF(COSPSI-PT99)240,240,170                                        INDO1115
C     EXPRESS VECTOR DP1 AS X*DP3(PROJECTED)+Y*DP2                      INDO1116
  170 Y=-Y/X                                                            INDO1117
      X=ONE/X                                                           INDO1118
C     TEST IF 2*2 MATRIX HAS REAL EIGENVALUES BETWEEN -.95 AND +.95     INDO1119
      XY=Y*Y+FOUR*X                                                     INDO1120
      IF(XY)190,180,180                                                 INDO1121
  180 XY=ABS(Y)+SQRT(XY)                                                INDO1122
      IF(XY-ONEPT9)220,220,190                                          INDO1123
C     IF 4-POINT EXTRAPOLATION IS NOT POSSIBLE TRY 3-POINT              INDO1124
  190 IF(ABS(COSPHI)-PT995)240,240,200                                  INDO1125
  200 X=DP1/(DP2*COSPHI-DP1)                                            INDO1126
      DO 210 I=1,NTT2                                                   INDO1127
  210 A3(I)=A3(I)+X*A2(I)                                               INDO1128
      WRITE(IOUT,20)                                                    INDO1129
      ICOUNT=0                                                          INDO1130
      GO TO 240                                                         INDO1131
  220 XXX=X/(ONE-X-Y)                                                   INDO1132
      YYY=(X+Y)/(ONE-X-Y)                                               INDO1133
      DO 230 I=1,NTT2                                                   INDO1134
  230 A3(I)=A3(I)+YYY*A2(I)                                             INDO1135
C     WRITE P(N)-P(N-1) ONTO LOC1                                       INDO1136
C      CALL TWRITE(LOC1,A2,NTT2)                                        INDO1137
C      CALL TREAD(LOC2,A2,NTT2)                                         INDO1138
      DO 231 I=1,NTT2                                                   INDO1139
  231 A3(I)=A3(I)+XXX*A2(I)                                             INDO1140
      WRITE(IOUT,30)                                                    INDO1141
      ICOUNT=0                                                          INDO1142
C      CALL TWRITE(31,A3,NTT2)                                          INDO1143
      GO TO 260                                                          INDO1144
C  240 CALL TWRITE(LOC1,A2,NTT2)                                        INDO1145
  240 CONTINUE
      GO TO 260                                                         INDO1146
C  245 CALL TWRITE(LOC1,A2,NTT2)                                        INDO1147
  245 CONTINUE
C     WRITE OUT CURRENT DENSITY MATRIX ON (1) FOR SCF                   INDO1148
C  250 CALL TWRITE(31,A3,NTT2)                                          INDO1149
  250  CONTINUE
  260 CONTINUE                                                          INDO1150
      RETURN                                                            INDO1151
      END                                                               INDO1152
      FUNCTION TRACE(A,B,N,NO)                                          INDO1153
C     TRACE OF A PRODUCT OF DOUBLE SYMMETRIC MATRICES A AND B STORED    INDO1154
C     AS LINEAR VECTORS                                                 INDO1155
C     NO=1 FOR CLOSED SHELLS, =2 FOR OPEN SHELLS                        INDO1156
      DIMENSION A(6480),B(6480)                                         INDO1157
      REAL ZERO,TWO
      DATA ZERO/0./,TWO/2./                                             INDO1158
      TRACE=ZERO                                                        INDO1159
      K=0                                                               INDO1160
      DO 3 L=1,NO                                                       INDO1161
      DO 2 J=1,N                                                        INDO1162
      DO 1 I=1,J                                                        INDO1163
      K=K+1                                                             INDO1164
    1 TRACE =TRACE +TWO*A(K)*B(K)                                       INDO1165
    2 TRACE =TRACE -A(K)*B(K)                                           INDO1166
    3 CONTINUE                                                          INDO1167
      RETURN                                                            INDO1168
      END                                                               INDO1169
      SUBROUTINE CPRINT(IOP1,IOP2)                                      INDO1182
C     CALCULATION OF MOLECULAR PROPERTIES                               INDO1183
      COMMON/ARRAYS/A(80,80),AX(80),B(80,80),BX(80)                     INDO1184
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO1185
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)  INDO1186
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)     
      INTEGER AN,U,EL,OCCA,OCCB,ORB,ANI,CHARGE
      CHARACTER*4 IOP1,IOP2                                             INDO1187
      CHARACTER*1 STAR      
      REAL CP65,C4P95,C10P27,CP325,C2P54,C7P33                          INDO1188
      REAL ZERO,ONE,TWO,THREE,FIVE,SEVEN,SQRT3
      DIMENSION DPM(3),DM(3),DMSP(3),DMPD(3),CIS(18),ATENG(18,2)        
      DATA CIS/539.86,0.,0.,0.,0.,820.10,379.36,888.68,44829.2,         INDO1189
     1 0., 0., 0., 0., 0., 0., 0., 0., 0./
      DATA IW/7/,AUKCAL/627.088/                                        INDO1196
      DATA ZERO/0./,ONE/1./,TWO/2./,THREE/3./,FIVE/5./,SEVEN/7./        INDO1197
      DATA CP65/.65/,C4P95/4.95/,C10P27/10.27175/,CP325/.325/           INDO1198
      DATA C2P54/2.5416/,C7P33/7.33697/                                 INDO1199
      ETOTAL=ENERGY+ETOTAL                                              INDO1200
      EBIND=ETOTAL                                                      INDO1201
      J=1                                                               INDO1202
      IF(IOP1.EQ.'CNDO') GO TO 5                                        INDO1203
      J=2                                                               INDO1204
    5 CONTINUE                                                          INDO1205
C ATENG NOT USED
      DO 10 I=1,NATOMS                                                  INDO1206
      K=AN(I)                                                           INDO1207
C      ETOTAL=ETOTAL+ATENG(K,J)
C   10 EBIND=EBIND-ATENG(K,J)                                          INDO1208
   10 EBIND=EBIND
      EBIND= -EBIND*27.21
      IF(DEL.EQ.0.) WRITE(IW,60) ENERGY                                 INDO1209
      RYE=EBIND -BBB
      IF(DEL.EQ.0.) WRITE(IW,62) RYE                                    INDO1210
      IF(DEL.EQ.0.) WRITE(8,62)  RYE 
      IF(DEL.EQ.0.) WRITE(IW,61) ETOTAL                                 INDO1211
C      EKCAL= AUKCAL*ETOTAL                                             INDO1212
C      WRITE(IW,64) EKCAL                                               INDO1213
   60 FORMAT(/,10X,'ELECTRONIC ENERGY = ',F16.10,' HARTREE')            INDO1214
   61 FORMAT(//,10X,'TOTAL ENERGY      = ',F16.10,' HARTREE')           INDO1215
   62 FORMAT(4X,'BINDING ENERGY    = ',F10.4,' eV (Positive if bonding)'INDO1216
     9)                                                               
C   64 FORMAT(//,10X,22H ENERGY IN KCAL/MOLE = ,F16.7)                  INDO1217
      IF(IOP2.EQ.'CLSD') GO TO 30                                       INDO1218
C***** THIS SECTION OF CODING SHOULD BE REMOVED IF B ARRAY IS REMOVED   INDO1219
C     FOR OPEN-SHELL CALCULATION, COMPUTE P(TOTAL) AND P(SPIN) FROM     INDO1220
C     P(ALPHA) AND P(BETA)                                              INDO1221
C     P(TOTAL) WILL BE IN A AND P(SPIN) IN B                            INDO1222
      DO 20 I=1,N                                                       INDO1223
      DO 20 J=1,N                                                       INDO1224
      TEMP=A(I,J)-B(I,J)                                                INDO1225
      A(I,J)=TEMP+TWO*B(I,J)                                            INDO1226
      B(I,J)=TEMP                                                       INDO1227
   20 CONTINUE                                                          INDO1228
      IF(DEL.EQ.0.) WRITE(IW,1000)                                      INDO1229
 1000 FORMAT(21H TOTAL DENSITY MATRIX//)                                INDO1230
      CALL MATOUT(A,DUMMY,0)                                            INDO1231
C      WRITE(IW,1001)                                                   INDO1232
 1001 FORMAT(21H  SPIN DENSITY MATRIX//)                                INDO1233
      CALL MATOUT(B,DUMMY,0)                                            INDO1234
C***** REMOVE THE ABOVE CODING IF THE B ARRAY IS REMOVED                INDO1235
   30 CONTINUE                                                          INDO1236
      DO 120 I=1,3                                                      INDO1237
      DM(I)=ZERO                                                        INDO1238
      DMSP(I)=ZERO                                                      INDO1239
  120 DMPD(I)=ZERO                                                      INDO1240
C     THIS SECTION CALCULATES ELECTRON DENSITIES FOR ATOMS, DIPOLE      INDO1241
C     MOMENT CONTRIBUTIONS FROM EACH ATOM, AND HYPERFINE COUPLING       INDO1242
C     CONSTANTS IN OPEN-SHELL MOLECULES.                                INDO1243
      J=0                                                               INDO1244
      INDEX=1                                                           INDO1245
      SQRT3=SQRT(3.)                                                    INDO1246
      CHRG1OLD=CHRG1
      IF(IDOUBLE.EQ.1) CHRGOLD=0.
      DO 200 I=1,NATOMS                                                 INDO1247
      ANI=AN(I)                                                         INDO1248
C      WRITE(IW,100) I,EL(ANI)                                          INDO1249
      TCHG=ZERO                                                         INDO1250
      NORBI=NORB(ANI)                                                   INDO1251
      IF(IOP2.EQ.'OPEN') GO TO 115                                      INDO1252
      DO 90 K=1,NORBI                                                   INDO1253
      J=J+1                                                             INDO1254
      TCHG=TCHG+A(J,J)                                                  INDO1255
      WRITE(IW,101) J,ORB(K),A(J,J)                                     INDO1256
   90 CONTINUE                                                          INDO1257
      CHRG=CZ(ANI)-TCHG                                                 INDO1258    
      IF(DEL.EQ.0.) WRITE(IW,102) TCHG,CHRG                             INDO1259
      IF(DEL.EQ.0.) WRITE(8,102) TCHG,CHRG
C  CHRG1 IS THE CHARGE ON THE FIRST ATOM:
      IF(I.EQ.1) CHRG1=(CHRG+FLOAT(2*IDOUBLE-2)*CHRG1OLD)/
     1 FLOAT(2*IDOUBLE-1)
      GO TO 110                                                         INDO1260
  115 CONTINUE                                                          INDO1261
C***** THIS SECTION OF CODING SHOULD BE REMOVED IF B ARRAY IS REMOVED   INDO1262
      DO 91 K=1,NORBI                                                   INDO1263
      J=J+1                                                             INDO1264
      TCHG=TCHG+A(J,J)                                                  INDO1265
      IF(DEL.EQ.0.) WRITE(IW,103) J,ORB(K),A(J,J),B(J,J)                INDO1266
   91 CONTINUE                                                          INDO1267
      CHRG=CZ(ANI)-TCHG                                                 INDO1268
      IF(I.EQ.1) CHRG1=(CHRG+FLOAT(2*IDOUBLE-2)*CHRG1OLD)/
     1 FLOAT(2*IDOUBLE-1)
      K=J+1-NORBI                                                       INDO1269
      HFC=CIS(ANI)*B(K,K)                                               INDO1270
C  CIS VALUES ARE USED TO CALCULATE ESR PARAMETERS (POPLE AND BEVERIDGE pg 131)
      IF(DEL.EQ.0.) WRITE(IW,104) TCHG,CHRG,HFC                         INDO1271
      IF(DEL.EQ.0.) WRITE(8,104) TCHG,CHRG,HFC
C***** REMOVE THE ABOVE CODING IF THE B ARRAY IS REMOVED                INDO1272
  100 FORMAT(/,2X,I3,2X,A4)                                             INDO1273
  101 FORMAT(8X,I3,2X,A4,2X,F13.10)                                     INDO1274
  102 FORMAT(2X,24HVALENCE ELECTRON DENSITY,F8.4,8H, CHARGE,F8.4)       INDO1275
  103 FORMAT(8X,I3,2X,A4,2(2X,F13.10))                                  INDO1276
  104 FORMAT(2X,24HVALENCE ELECTRON DENSITY,F8.4,8H, CHARGE,F8.4,       INDO1277
     1 6H   A =,F10.3)                                                  INDO1278
  110 CONTINUE                                                          INDO1279
      IF(ANI.EQ.1) GO TO 180                                             INDO1280
      IF(ANI.EQ.2) GO TO 180
      IF(ANI.GT.2) GO TO 140                                            INDO1281
C  FOR SECOND-ROW ELEMENTS WITH D ORBITALS (COMMENTED OUT):
C  160 SLTR1=(CP65 * FLOAT(ANI)-C4P95)/THREE                             INDO1282
C      FACTOR=C2P54  *SEVEN/(SQRT(5.)*SLTR1)                             INDO1283
C      DO 170 K=1,3                                                      INDO1284
C  170 DMSP(K)=DMSP(K)-A(INDEX,INDEX+K)*C10P27/SLTR1                     INDO1285
C      IF(NORBI.EQ.4) GO TO 180                                          INDO1286
C      DMPD(1)=DMPD(1)-FACTOR*(A(INDEX+2,INDEX+8)+A(INDEX+3,INDEX+5)     INDO1287
C     1  +A(INDEX+1,INDEX+7)-ONE / SQRT3     *A(INDEX+1,INDEX+4))        INDO1288
C      DMPD(2)=DMPD(2)-FACTOR*(A(INDEX+1,INDEX+8)+A(INDEX+3,INDEX+6)     INDO1289
C     1  -A(INDEX+2,INDEX+7)-ONE / SQRT3     *A(INDEX+2,INDEX+4))        INDO1290
C      DMPD(3)=DMPD(3)-FACTOR*(A(INDEX+1,INDEX+5)+A(INDEX+2,INDEX+6)     INDO1291
C     1  +2.00/ SQRT3     *A(INDEX+3,INDEX+4))                           INDO1292
C      GO TO 180                                                         INDO1293
  140 CONTINUE                                                           INDO1294  
      DO 150 K=1,3                                                       INDO1295
C  CHANGED TO USE MU OF 2P ORBITAL, IF OCCUPIED:    /EMU(ANI,2,Q1(I,2)) 
      IF(ANI.LT.4)                    DENOM=EMU(ANI,1,Q1(I,1))
      IF(ANI.GE.4)                    DENOM=EMU(ANI,2,Q1(I,2))
C      IF(ANI.EQ.5.AND.STAR(1).NE.'&') DENOM=EMU(ANI,1,Q1(I,1))
C      IF(ANI.EQ.5.AND.STAR(1).EQ.'&') DENOM=EMU(ANI,2,Q1(I,2))
C      IF(ANI.GT.5)                    DENOM=EMU(ANI,2,Q1(I,2))
      DMSP(K)=DMSP(K)-A(INDEX,INDEX+K)*C7P33/DENOM
C  SLATER EFFECTIVE NUCLEAR CHARGE HAD BEEN: /(CP325*FLOAT(ANI-1))  
C  THIS DENOMINATOR, WHEN DIVIDED BY 2, EQUALS 0.325*(ATOMIC#-1) 
  150  CONTINUE
  180 DO 190 K=1,3                                                   
C  THE C(I,K) ARE THE XYZ LOCATIONS IN AU OF THE ATOMS:
C  RWS (IN 2022) ADDED 0.5*FLOAT(CHARGE) BELOW TO FIX A PROBLEM 
C  WITH THE DIPOLE MOMENTS OF CHARGED MOLECULAR IONS SUCH AS
C  N2+,N2- AND SIMILAR IONS, WHICH GAVE LARGE NON-ZERO DPs
C  190 DM(K)=DM(K)+(CZ(ANI)-TCHG)*C2P54*C(I,K)
  190 DM(K)=DM(K)+(CZ(ANI)-TCHG-0.5*FLOAT(CHARGE))*C2P54*C(I,K)
      INDEX=INDEX+NORBI                                                 INDO1299
  200 CONTINUE                                                          INDO1300
      DO 210 I=1,3                                                      INDO1301
  210 DPM(I)=DM(I)+DMSP(I)+DMPD(I)                                      INDO1302
C     PRINT OUT THE DIPOLE MOMENT.                                      INDO1303
      IF(DEL.EQ.0.) WRITE(IW,220)                                       INDO1304
  220 FORMAT(//,20X,16H  DIPOLE MOMENTS,/)                              INDO1305
C      WRITE(IW,230)                                                     INDO1306
  230 FORMAT(5X,11H COMPONENTS,3X,2H X,8X,2H Y,8X,2H Z)                 INDO1307
      IF(DEL.EQ.0.) WRITE(IW,240) DM(1),DM(2),DM(3)                     INDO1308
  240 FORMAT(5X,10H DENSITIES,3(1X,F9.5))                               INDO1309
      IF(DEL.EQ.0.) WRITE(IW,250) DMSP(1),DMSP(2),DMSP(3)               INDO1310
  250 FORMAT(5X,4H S.P,6X,3(1X,F9.5))                                   INDO1311
C      IF(DEL.EQ.0.)  WRITE(IW,260) DMPD(1),DMPD(2),DMPD(3)             INDO1312
C  260 FORMAT(5X,4H P.D,6X,3(1X,F9.5))                                  INDO1313
      IF(DEL.EQ.0.) WRITE(IW,270) DPM(1),DPM(2),DPM(3)                  INDO1314
  270 FORMAT(5X,6H TOTAL,4X,3(1X,F9.5),/)                               INDO1315
      XYQ=DPM(1)*DPM(1)+DPM(2)*DPM(2)+DPM(3)*DPM(3)
      IF(XYQ.LE.0.) DP= 0.
C MODIFICATION TO DIPOLE MOMENT CALCULATION !!!!!:
      IF(XYQ.GT.0.) DP= 0.870*SQRT(XYQ)                                 
      IF(CHRG1.GT.0.) DP= -DP
      IF(DEL.EQ.0.) WRITE(8,105) RYE,DP,CHRG1,BBB
  105 FORMAT(5X,'DE= ',F7.4,7X,'DP= ',F9.4,3X,'CHRG1= ',F7.4,3X,
     1 'BBB= ',F8.4)
      IF(DEL.EQ.0.) WRITE(IW,280) CHRG,DP
  280 FORMAT(3X,'CHRG1= ',F8.4,3X,15H DIPOLE MOMENT=,F9.5,7H DEBYES,//) INDO1318
      RETURN                                                            INDO1319
      END                                                               INDO1320
      SUBROUTINE EIGN1M(N,RHO,A,EIG)                                    INDO1321
C     A GIVENS TYPE DIAGONALIZATION ROUTINE USING THE HOUSEHOLDER AND   INDO1322
C     QR ALGORITHMS.                                                    INDO1323
C     A  IS THE ONLY MATRIX USED IN THIS SUBROUTINE.  WHEN ENTERING     INDO1324
C     THE ROUTINE, A SHOULD CONTAIN THE MATRIX TO BE DIAGONALIZED (ONLY INDO1325
C     THE LOWER TRIANGLE IS NEEDED) AND UPON LEAVING THE ARRAY A WILL   INDO1326
C     CONTAIN THE EIGENVECTORS (IN COLUMNS) ARRANGED WITH THE FIRST COR-INDO1327
C     RESPONDING TO THE LOWEST EIGENVALUE.                              INDO1328
C     RHO= UPPER LIMIT FOR OFF-DIAGONAL ELEMENT                         INDO1329
C     N = SIZE OF MATRIX                                                INDO1330
C     EIG = RETURNED EIGENVALUES IN ALGEBRAIC ASCENDING ORDER           INDO1331
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      DIMENSION A(80,80),EIG(80)                                        INDO1332
      DIMENSION GAMMA(80),BETA(80),BETASQ(80),W(80)                     INDO1333
C     THE FOLLOWING DIMENSIONED VARIABLES ARE EQUIVALENCED              INDO1334
      DIMENSION P(80),Q(80)                                             INDO1335
      DIMENSION IPOSV(80),IVPOS(80),IORD(80)
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
C      INTEGER CHARGE
      REAL ZERO,ONE,HALF,TWO,DEC12                                      INDO1336
      EQUIVALENCE (P(1),BETA(1)),(Q(1),BETA(1))                         INDO1337
      EQUIVALENCE (IPOSV(1),GAMMA(1)),(IVPOS(1),BETA(1)),               INDO1338
     1(IORD(1),BETASQ(1))                                               INDO1339
      DATA ZERO/0./,ONE/1./,HALF/.5/,TWO/2./,DEC12/1.E-12/              INDO1340
      RHOSQ=RHO*RHO                                                     INDO1341
C PART I***        HOUSEHOLDER TRIDIAGONALIZATION PROCEDURE             INDO1342
      IF(N.EQ.0) GO TO 600                                              INDO1343
      N1=N-1                                                            INDO1344
      N2=N-2                                                            INDO1345
      GAMMA(1)=A(1,1)                                                   INDO1346
      IF(N2) 200,190,40                                                 INDO1347
   40 DO 180 NR=1,N2                                                    INDO1348
      B=A(NR+1,NR)                                                      INDO1349
      S=ZERO                                                            INDO1350
      DO 50 I=NR,N2                                                     INDO1351
   50 S=S+A(I+2,NR)**2                                                  INDO1352
C     PREPARE FOR POSSIBLE BYPASS OF TRANSFORMATION                     INDO1353
      A(NR+1,NR)=ZERO                                                   INDO1354
      IF (S) 170,170,60                                                 INDO1355
   60 S=S+B*B                                                           INDO1356
      SGN=ONE                                                           INDO1357
      IF (B) 70,80,80                                                   INDO1358
   70 SGN=-ONE                                                          INDO1359
   80 IF(S.GT.0.) SQRTS= SQRT(S)                                        INDO1360
      IF(S.LE.0.) SQRTS= 0.
      D=SGN/(SQRTS+SQRTS)                                               INDO1361
      IF((HALF+B*D).GT.0.) TEMP= SQRT(HALF+B*D)                         INDO1362
      IF((HALF+B*D).LE.0.) TEMP=0.
      W(NR)=TEMP                                                        INDO1363
      A(NR+1,NR)=TEMP                                                   INDO1364
      D=D/TEMP                                                          INDO1365
      B=-SGN*SQRTS                                                      INDO1366
C     D IS FACTOR OF PROPORTIONALITY. NOW COMPUTE AND SAVE W VECTOR.    INDO1367
C     EXTRA SINGLY SUBSCRIPTED W VECTOR USED FOR SPEED.                 INDO1368
      DO 90 I=NR,N2                                                     INDO1369
      TEMP=D*A(I+2,NR)                                                  INDO1370
      W(I+1)=TEMP                                                       INDO1371
   90 A(I+2,NR)=TEMP                                                    INDO1372
C     PREMULTIPLY VECTOR W BY MATRIX A TO OBTAIN P VECTOR.              INDO1373
C     SIMULTANEOUSLY ACCUMULATE DOT PRODUCT WP,(THE SCALAR K)           INDO1374
      WTAW=ZERO                                                         INDO1375
      DO 140 I=NR,N1                                                    INDO1376
      SUM=ZERO                                                          INDO1377
      DO 100 J=NR,I                                                     INDO1378
  100 SUM=SUM+A(I+1,J+1)*W(J)                                           INDO1379
      I1=I+1                                                            INDO1380
      IF(N1-I1) 130,110,110                                             INDO1381
  110 DO 120 J=I1,N1                                                    INDO1382
  120 SUM=SUM+A(J+1,I+1)*W(J)                                           INDO1383
  130 P(I)=SUM                                                          INDO1384
  140 WTAW=WTAW+SUM*W(I)                                                INDO1385
C     P VECTOR AND SCALAR K  NOW STORED. NEXT COMPUTE Q VECTOR          INDO1386
      DO 150 I=NR,N1                                                    INDO1387
  150 Q(I)=P(I)-WTAW*W(I)                                               INDO1388
C     NOW FORM PAP MATRIX, REQUIRED PART                                INDO1389
      DO 160 J=NR,N1                                                    INDO1390
      QJ=Q(J)                                                           INDO1391
      WJ=W(J)                                                           INDO1392
      DO 160 I=J,N1                                                     INDO1393
      A(I+1,J+1)=A(I+1,J+1)-TWO *(W(I)*QJ+WJ*Q(I))                      INDO1394
  160 CONTINUE
  170 BETA(NR)=B                                                        INDO1395
      BETASQ(NR)=B*B                                                    INDO1396
  180 GAMMA(NR+1)=A(NR+1,NR+1)                                          INDO1397
  190 B=A(N,N-1)                                                        INDO1398
      BETA(N-1)=B                                                       INDO1399
      BETASQ(N-1)=B*B                                                   INDO1400
      GAMMA(N)=A(N,N)                                                   INDO1401
  200 BETASQ(N)=ZERO                                                    INDO1402
C     PUT AN IDENTITY MATRIX IN THE UPPER TRIANGLE                      INDO1403
      DO 220 I=1,N                                                      INDO1404
      DO 210 J=I,N                                                      INDO1405
  210 A(I,J)=ZERO                                                       INDO1406
  220 A(I,I)=ONE                                                        INDO1407
C PART II***       FORM PRODUCT P1*P2*...*PN-2                          INDO1408
      K=N                                                               INDO1409
  221 KP=K                                                              INDO1410
      K=K-1                                                             INDO1411
      KM=K-1                                                            INDO1412
      DO 222 I=K,N                                                      INDO1413
  222 W(I)=A(I,KM)                                                      INDO1414
      AKKM=W(K)                                                         INDO1415
      C2AKKM=-(AKKM+AKKM)                                               INDO1416
      DO 225 J=KP,N                                                     INDO1417
      SUM=ZERO                                                          INDO1418
      DO 223 L=K,N                                                      INDO1419
  223 SUM=SUM+W(L)*A(L,J)                                               INDO1420
      SUM=SUM+SUM                                                       INDO1421
      DO 224 I=K,N                                                      INDO1422
      A(I,J)=A(I,J)-SUM*W(I)                                            INDO1423
  224 CONTINUE
  225 CONTINUE                                                          INDO1424
      DO 226 I=K,N                                                      INDO1425
  226 A(I,K)=C2AKKM*W(I)                                                INDO1426
      A(K,K)=ONE+A(K,K)                                                 INDO1427
      IF(K.GT.2) GO TO 221                                              INDO1428
      DO 227 I=2,N                                                      INDO1429
  227 A(I,1)=ZERO                                                       INDO1430
C PART III***      QR ALGORITHM                                         INDO1431
      M=N                                                               INDO1432
      SUM=ZERO                                                          INDO1433
      SHIFT=ZERO                                                        INDO1434
      GO TO 350                                                         INDO1435
  230 SUM=SUM+SHIFT                                                     INDO1436
      COSA=ONE                                                          INDO1437
      G=GAMMA(1)-SHIFT                                                  INDO1438
      PP=G                                                              INDO1439
      PPBS=PP*PP+BETASQ(1)                                              INDO1440
      IF(PPBS.GT.0.) PPBR= SQRT(PPBS)                                   INDO1441
      IF(PPBS.LE.0.) PPBR=0.
      DO 320 J=1,M                                                      INDO1442
      COSAP=COSA                                                        INDO1443
      IF (PPBS.GT. DEC12) GO TO 250                                     INDO1444
  240 SINA=ZERO                                                         INDO1445
      SINA2=ZERO                                                        INDO1446
      COSA=ONE                                                          INDO1447
      GO TO 290                                                         INDO1448
  250 SINA=BETA(J)/PPBR                                                 INDO1449
      SINA2=BETASQ(J)/PPBS                                              INDO1450
      COSA=PP/PPBR                                                      INDO1451
C      POSTMULTIPLY P1*...*PN-2 BY ROTATION MATRIX  (P TRANSPOSE)       INDO1452
      DO 260 I=1,N                                                      INDO1453
      VTEMP=A(I,J)                                                      INDO1454
      VJTEMP=A(I,J+1)                                                   INDO1455
        A(I,J)=COSA*VTEMP+SINA*VJTEMP                                   INDO1456
        A(I,J+1)=-SINA*VTEMP+COSA*VJTEMP                                INDO1457
  260 CONTINUE                                                          INDO1458
  290 DIA=GAMMA(J+1)-SHIFT                                              INDO1459
      U=SINA2*(G+DIA)                                                   INDO1460
      GAMMA(J)=G+U                                                      INDO1461
      G=DIA-U                                                           INDO1462
      PP=DIA*COSA-SINA*COSAP*BETA(J)                                    INDO1463
      IF(J .NE. M) GO TO 310                                            INDO1464
  300 BETA(J)=SINA*PP                                                   INDO1465
      BETASQ(J)=SINA2*PP*PP                                             INDO1466
      GO TO 330                                                         INDO1467
  310 PPBS=PP*PP+BETASQ(J+1)                                            INDO1468
      IF(PPBS.GT.0.) PPBR= SQRT(PPBS)                                   INDO1469
      IF(PPBS.LE.0.) PPBR=0.
      BETA(J)=SINA*PPBR                                                 INDO1470
  320 BETASQ(J)=SINA2*PPBS                                              INDO1471
  330 GAMMA(M+1)=G                                                      INDO1472
C     TEST FOR CONVERGENCE OF LAST DIAGONAL ELEMENT                     INDO1473
  335 IF(BETASQ(M)-RHOSQ)  340,340,370                                  INDO1474
  340 EIG(M+1)=GAMMA(M+1)+SUM                                           INDO1475
  350 BETA(M)=ZERO                                                      INDO1476
      BETASQ(M)=ZERO                                                    INDO1477
      M=M-1                                                             INDO1478
      IF(M) 400,400,335                                                 INDO1479
C     TAKE ROOT OF CORNER 2 BY 2 NEAREST TO LOWER DIAGONAL IN VALUE     INDO1480
C     AS ESTIMATE OF EIGENVALUE TO USE FOR SHIFT                        INDO1481
  370 A2=GAMMA(M+1)                                                     INDO1482
      R2=HALF *A2                                                       INDO1483
      R1=HALF *GAMMA(M)                                                 INDO1484
      R12=R1+R2                                                         INDO1485
      DIF=R1-R2                                                         INDO1486
      IF((DIF*DIF+BETASQ(M)).GT.0.) TEMP= SQRT(DIF*DIF+BETASQ(M))       INDO1487
      IF((DIF*DIF+BETASQ(M)).LE.0.) TEMP=0. 
      R1=R12+TEMP                                                       INDO1488
      R2=R12-TEMP                                                       INDO1489
      DIF= ABS(A2-R1)- ABS(A2-R2)                                       INDO1490
      IF(DIF .LT. ZERO) GO TO 390                                       INDO1491
  380 SHIFT=R2                                                          INDO1492
      GO TO 230                                                         INDO1493
  390 SHIFT=R1                                                          INDO1494
      GO TO 230                                                         INDO1495
  400 EIG(1)=GAMMA(1)+SUM                                               INDO1496
      IF(N1.EQ.0) GO TO 600                                             INDO1497
C PART IV***       SORTING AND ORDERING OF EIGENVALUES                  INDO1498
C     INITIALIZE AUXILIARY TABLES REQUIRED FOR REARRANGING THE VECTORS  INDO1499
      DO 410 J=1,N                                                      INDO1500
      IPOSV(J)=J                                                        INDO1501
      IVPOS(J)=J                                                        INDO1502
  410 IORD(J)=J                                                         INDO1503
C     USE A TRANSPOSITION SORT TO ORDER THE EIGENVALUES                 INDO1504
      M=N                                                               INDO1505
      GO TO 450                                                         INDO1506
  420 DO 440 J=1,M                                                      INDO1507
      IF (EIG(J) .LE. EIG(J+1)) GO TO 440                               INDO1508
  430 TEMP=EIG(J)                                                       INDO1509
      EIG(J)=EIG(J+1)                                                   INDO1510
      EIG(J+1)=TEMP                                                     INDO1511
      ITEMP=IORD(J)                                                     INDO1512
      IORD(J)=IORD(J+1)                                                 INDO1513
      IORD(J+1)=ITEMP                                                   INDO1514
  440 CONTINUE                                                          INDO1515
  450 M=M-1                                                             INDO1516
      IF(M .NE. 0) GO TO 420                                            INDO1517
C PART V***        ORDERING OF EIGENVECTORS                             INDO1518
  470 DO 500 L=1,N1                                                     INDO1519
      NV=IORD(L)                                                        INDO1520
      NP=IPOSV(NV)                                                      INDO1521
      IF(NP .EQ. L) GO TO 500                                           INDO1522
  480 LV=IVPOS(L)                                                       INDO1523
      IVPOS(NP)=LV                                                      INDO1524
      IPOSV(LV)=NP                                                      INDO1525
      DO 490 I=1,N                                                      INDO1526
      TEMP=A(I,L)                                                       INDO1527
      A(I,L)=A(I,NP)                                                    INDO1528
  490 A(I,NP)=TEMP                                                      INDO1529
  500 CONTINUE                                                          INDO1530
  600 RETURN                                                            INDO1531
      END                                                               INDO1532
      SUBROUTINE MATOUT(A,MDIAG,LOP)                                    INDO1533
C     THIS SUBROUTINE PRINTS OUT SQUARE ARRAYS                          INDO1534
C     IF LOP = 0 AN NXN ARRAY IS PRINTED WITH ORBITAL LABELS.           INDO1535
C     IF LOP = 1 THE CONTENTS OF MDIAG (USUALLY EIGENVALUES) ARE        INDO1536
C                PRINTED ALONG THE TOP.                                 INDO1537
C     IF LOP GT 1 AN LOP X LOP ARRAY IS PRINTED WITH NO LABELS.         INDO1538
      DIMENSION A(80,80),MDIAG(80)                                      INDO1539
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)  INDO1540
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)  INDO1541
      COMMON/SSS/RYE,DP,CHRG1,DEL,Q1(5,2),XBO,ACHR,IDOUBLE
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)     
      INTEGER ANII,ORB,EL,AN,U,OCCA,OCCB,CHARGE                         INDO1542
      CHARACTER*1 STAR
      REAL MDIAG
      DATA IW/7/                                                        INDO1543
      IF(LOP.GT.1) GO TO 200                                            INDO1544
      DO 110 M=1,N,11                                                   INDO1545
      K=M+10                                                            INDO1546
      IF (K.LE.N) GO TO 30                                              INDO1547
   20 K=N                                                               INDO1548
   30 IF (LOP.EQ.0) GO TO 50                                            INDO1549
      IF(DEL.EQ.0.) WRITE(IW,10) (MDIAG(I),I=M,K)                       INDO1550
   50 CONTINUE
      IF(DEL.EQ.0.) WRITE(IW,60) (I,I=M,K)                              INDO1551
      I=0                                                               INDO1552
      DO 110 II=1,NATOMS                                                INDO1553
C      WRITE(IW,100)                                                    INDO1554
      ANII=AN(II)                                                       INDO1555
      NORBI=NORB(ANII)                                                  INDO1556
      DO 105 L=1,NORBI                                                  INDO1557
      I=I+1                                                             INDO1558
   70 CONTINUE
      IF(DEL.EQ.0.) WRITE(IW,80) I,II,EL(ANII),ORB(L),(A(I,J),J=M,K)    INDO1559
  105 CONTINUE
  110 CONTINUE                                                          INDO1560
      GO TO 300                                                         INDO1561
  200 CONTINUE                                                          INDO1562
      DO 210 M=1,LOP,11                                                 INDO1563
      K=M+10                                                            INDO1564
      IF(K.LE.LOP) GO TO 230                                            INDO1565
      K=LOP                                                             INDO1566
  230 CONTINUE
C      WRITE(IW,100)                                                     INDO1567
      IF(DEL.EQ.0.) WRITE(IW,61)(I,I=M,K)                               INDO1568
      DO 210 I=1,LOP                                                    INDO1569
      IF(DEL.EQ.0.) WRITE(IW,81) I,(A(I,J),J=M,K)                       INDO1570
  210 CONTINUE                                                          INDO1571
  300 CONTINUE
C   WRITE(IW,100)                                                       INDO1572
C      WRITE(IW,100)                                                    INDO1573
   10 FORMAT(15X,11(F9.3),/)                                            INDO1574
   60 FORMAT(13X,10I9)                                                  INDO1575
   61 FORMAT(1X,10I9)                                                   INDO1576
   80 FORMAT(1X,I2,I3,A4,1X,A4,10(F9.4))                                INDO1577
   81 FORMAT(1X,I2,10(F9.3))                                            INDO1578
  100 FORMAT(1X)                                                        INDO1579
      RETURN                                                            INDO1580
      END                                                               INDO1581
      FUNCTION EMU(II,LZ,Q)          
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)
      COMMON/SCLRS/N,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      INTEGER CHARGE,AN
      CHARACTER*1 STAR,STARB,STARC
      DIMENSION A(10,3),Z(3)
C     1 Bohr unit is 0.529 A
      STARB=' '
      STARC=' '
      IF(STAR(1).EQ.'&'.OR.STAR(2).EQ.'&') STARB='&'
      IF(STAR(1).EQ.'*'.OR.STAR(2).EQ.'*') STARC='*'       
      B1=  0.3125
      B2=  0.030
      B3=  0.006
      B4=  0.0221
      B5=  0.0074
      B6=  0.6989
      B7=  0.3008
      B8=  0.2299
      B9=  0.9270
      B10= 0.3668
      B11= 0.3526
      B12= 0.1618
      A(1,1)= 1. 
      A(1,2)= 0.
      A(1,3)= 0.
      A(2,1)= 2. 
      A(2,2)= 0.
      A(2,3)= 0.
      A(3,1)= 2.
      A(3,2)= 1. 
      A(3,3)= 0.
      A(4,1)= 2.
      A(4,2)= 1.      
      A(4,3)= 1.      
      A(5,1)= 2.
      IF(II.EQ.5.AND.STARB.NE.'&') A(5,2)= 2.
      IF(II.EQ.5.AND.STARB.NE.'&') A(5,3)= 1.
      IF(II.EQ.5.AND.STARB.EQ.'&') A(5,2)= 1.
      IF(II.EQ.5.AND.STARB.EQ.'&') A(5,3)= 2.
C  2s2 2p2 CARBON:
      A(6,1)= 2.
      IF(II.EQ.6.AND.STARC.NE.'*') A(6,2)= 2.
      IF(II.EQ.6.AND.STARC.NE.'*') A(6,3)= 2.
C   2s1 2P3 CARBON:
      IF(II.EQ.6.AND.STARC.EQ.'*') A(6,2)= 1.
      IF(II.EQ.6.AND.STARC.EQ.'*') A(6,3)= 3.
      A(7,1)= 2.
      A(7,2)= 2.
      A(7,3)= 3. 
      A(8,1)= 2.
      A(8,2)= 2.
      A(8,3)= 4. 
      A(9,1)= 2.
      A(9,2)= 2.
      A(9,3)= 5. 
      A(10,1)=2.
      A(10,2)=2.
      A(10,3)=6.
      T1S=0.
      T2S=0.
      T2P=0.
      IF(II.LE.2) T1S=A(II,1) -Q
      IF(II.GT.2) T1S=A(II,1)
      IF(II.LE.2) T2S=A(II,2)
      IF(II.EQ.3) T2S=A(II,2) -Q
      IF(II.EQ.4) T2S=A(II,2)
      IF(II.EQ.4) T2P=A(II,3) -Q
      IF(II.EQ.4.AND.Q.GT.1.) T2P= 0.
      IF(II.EQ.4.AND.Q.GT.1.) T2S=A(II,2) -(Q-1.)
      IF(II.GE.5) T2S=A(II,2)
      IF(II.LT.4) T2P=A(II,3) 
      IF(II.GE.5) T2P=A(II,3) -Q
      Z(1)=0.
      Z(2)=0.
      Z(3)=0.
      Z1=FLOAT(II)
      IF(II.LE.2.AND.T1S.LE.1.) Z(1)=Z1
      IF(II.LE.2.AND.T1S.GT.1.) Z(1)=Z1-(B1-B2/Z1-B3/(Z1*Z1))*(T1S-1.D0) 
      IF(II.EQ.3) Z(1)=Z1-(B1-B2/Z1-B3/(Z1*Z1))*(T1S-1.)-B4*T2S
      IF(II.EQ.4) Z(1)=Z1-(B1-B2/Z1-B3/(Z1*Z1))*(T1S-1.)-B4*T2S
      IF(II.GE.4) Z(1)=Z1-(B1-B2/Z1-B3/(Z1*Z1))*(T1S-1.)-B4*T2S-B5*T2P
      IF(II.EQ.3.AND.T2S.LE.1.) Z(2)=Z1-B6*T1S
      IF(II.EQ.3.AND.T2S.GT.1.) Z(2)=Z1-B6*T1S-B7*(T2S-1.)
C      IF(II.EQ.4.AND.T2S.GT.1.) Z(2)=Z1-B6*T1S-B7*(T2S-1.)
C      IF(II.EQ.4.AND.T2S.LE.1.) Z(2)=Z1-B6*T1S
      IF(II.GE.4.AND.T2S.GT.1.) Z(2)=Z1-B6*T1S-B7*(T2S-1.)-B8*T2P  
      IF(II.GE.4.AND.T2S.LE.1.) Z(2)=Z1-B6*T1S            -B8*T2P
      IF(II.EQ.3)               Z(3)=Z1-B9*T1S-B10*1.0
C      IF(II.EQ.4.)             Z(3)=Z1-B9*T1S-B10*T2S
      IF(II.GE.4.AND.T2P.LE.1.) Z(3)=Z1-B9*T1S-B10*T2S
      IF(II.GE.4.AND.T2P.GT.1.) Z(3)=Z1-B9*T1S-B10*T2S-(B11-B12/Z1)*
     1 (T2P-1.)      
C      IF(Z1.LE.2..AND.LZ.EQ.0) EMU=Z(1)
C      IF(Z1.GT.2..AND.LZ.EQ.1) EMU=Z(2)/2.
C      IF(Z1.GT.2..AND.LZ.EQ.2) EMU=Z(3)/2.
      IF(Z1.LE.2.) LZ=0
      IF(LZ.EQ.0) EMU=Z(1)
      IF(LZ.EQ.1) EMU=Z(2)/2.
      IF(LZ.EQ.2) EMU=Z(3)/2.
      IF(EMU.LT.0.) EMU=0.
      RETURN
      END
C FUNCTION UX
      FUNCTION UX(NA,QA,NB,QB,DD)
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)         
      COMMON/SCLRS/NXX,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5) 
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      INTEGER CHARGE,AN,OCCA,OCCB,OCCO
      CHARACTER*1 STAR,STARB,STARC
      DIMENSION A(10,3),X(10)
C     DD SHOULD BE IN ATOMIC UNITS; NOT ANGSTROMS
      STARB=' '
      STARC=' '
      IF(STAR(1).EQ.'&'.OR.STAR(2).EQ.'&') STARB='&'
      IF(STAR(1).EQ.'*'.OR.STAR(2).EQ.'*') STARC='*'
      EVAU=27.21
      A(1,1)= 1.
      A(1,2)= 0.
      A(1,3)= 0.
      A(2,1)= 2.
      A(2,2)= 0.
      A(2,3)= 0.
      A(3,1)= 2.
      A(3,2)= 1.
      A(3,3)= 0.
      A(4,1)= 2.
      A(4,2)= 1.      
      A(4,3)= 1.           
C  SOME OF THESE "A" VALUES ABOVE ARE IGNORED.  THEY ARE SET FOR
C  H THRU Be IN VALUES OF CA1, CA2, CA3, CB1, CB2, CB3 BELOW     
      A(5,1)= 2.
      IF(NA.EQ.5.AND.STARB.NE.'&') A(5,2)= 2.
      IF(NA.EQ.5.AND.STARB.NE.'&') A(5,3)= 1.
      IF(NA.EQ.5.AND.STARB.EQ.'&') A(5,2)= 1.
      IF(NA.EQ.5.AND.STARB.EQ.'&') A(5,3)= 2.
      IF(NB.EQ.5.AND.STARB.NE.'&') A(5,2)= 2.
      IF(NB.EQ.5.AND.STARB.NE.'&') A(5,3)= 1.
      IF(NB.EQ.5.AND.STARB.EQ.'&') A(5,2)= 1.
      IF(NB.EQ.5.AND.STARB.EQ.'&') A(5,3)= 2.
C  2s2 2p2 CARBON:
      A(6,1)= 2.
      IF(NA.EQ.6.AND.STARC.NE.'*') A(6,2)= 2.
      IF(NA.EQ.6.AND.STARC.NE.'*') A(6,3)= 2.
      IF(NB.EQ.6.AND.STARC.NE.'*') A(6,2)= 2.
      IF(NB.EQ.6.AND.STARC.NE.'*') A(6,3)= 2.      
C   2s1 2P3 CARBON:
      IF(NA.EQ.6.AND.STARC.EQ.'*') A(6,2)= 1.
      IF(NA.EQ.6.AND.STARC.EQ.'*') A(6,3)= 3.
      IF(NB.EQ.6.AND.STARC.EQ.'*') A(6,2)= 1.
      IF(NB.EQ.6.AND.STARC.EQ.'*') A(6,3)= 3.
      A(7,1)= 2.
      A(7,2)= 2.
      A(7,3)= 3.
      A(8,1)= 2.
      A(8,2)= 2.
      A(8,3)= 4.
      A(9,1)= 2.
      A(9,2)= 2.
      A(9,3)= 5.
      A(10,1)=2.
      A(10,2)=2.
      A(10,3)=6.
        C11=0.
        C12=0.
        C13=0.
        C21=0.
        C22=0.
        C23=0.
        G1A=0.
        G1B=0.
        G1C=0.
        G2A=0.
        G2B=0.
        G2C=0.
        CH1A=0.
        CH1B=0.
        CH1C=0.
        CH2A=0.
        CH2B=0.
        CH2C=0.
        CA1=0.
        CA2=0.
        CA3=0.
        CB1=0.
        CB2=0.
        CB3=0.
        EMA0=0.
        EMA1=0.
        EMA2=0.
        EMB0=0.
        EMB1=0.
        EMB2=0.
       IF(NA.LE.2) EMA0=EMU(NA,0,QA)
       IF(NA.GT.2) EMA0=EMU(NA,0,0.)
       IF(NA.EQ.3) EMA1=EMU(NA,1,QA)
       IF(NA.EQ.4) EMA1=EMU(NA,1,0.)
       IF(NA.EQ.4) EMA2=EMU(NA,2,QA)
       IF(NA.EQ.4.AND.Q.GT.1.) EMA2=EMU(NA,2,0.)
       IF(NA.EQ.4.AND.Q.GT.1.) EMA1=EMU(NA,1,(QA-1.))
       IF(NA.GT.4) EMA1=EMU(NA,1,0.)
       IF(NA.GT.4) EMA2=EMU(NA,2,QA)
                    C11=EMA0*SQRT(EMA0)
C  C12 FOR HYDROGEN-LIKE 2S:
       IF(NA.GT.2) C12=EMA1*SQRT(EMA1)
       IF(NA.GT.2) C13=EMA2*EMA2*SQRT(EMA2)         
       IF(NA.LE.2) CA1=A(NA,1) -QA  
       IF(NA.LE.2) CA2=0.  
       IF(NA.LE.2) CA3=0.
       IF(NA.EQ.3) CA1=2.
       IF(NA.EQ.3) CA2=A(NA,2) -QA
       IF(NA.EQ.3) CA3=0.
       IF(NA.EQ.4) CA1=2.
       IF(NA.EQ.4) CA2=A(NA,2)
       IF(NA.EQ.4) CA3=A(NA,3) -QA
       IF(NA.EQ.4.AND.QA.GT.1.) CA3=0.
       IF(NA.EQ.4.AND.QA.GT.1.) CA2=A(NA,1)-(QA-1.)
       IF(NA.GT.4) CA1=2.
       IF(NA.GT.4) CA2=A(NA,2)
       IF(NA.GT.4) CA3=A(NA,3) -QA    
C
       IF(NB.LE.2) EMB0=EMU(NB,0,QB)
       IF(NB.GT.2) EMB0=EMU(NB,0,0.)
       IF(NB.EQ.3) EMB1=EMU(NB,1,QB)
       IF(NB.EQ.4) EMB1=EMU(NB,1,0.)
       IF(NB.EQ.4) EMB2=EMU(NB,2,QB)
       IF(NB.EQ.4.AND.QB.GT.1.) EMB2=EMU(NB,2,0.)
       IF(NB.EQ.4.AND.QB.GT.1.) EMB1=EMU(NB,1,(QB-1.))
       IF(NB.GT.4) EMB1=EMU(NB,1,0.)
       IF(NB.GT.4) EMB2=EMU(NB,2,QB) 
                    C21=EMB0*SQRT(EMB0)
C  C22 FOR HYDROGEN-LIKE 2S:
       IF(NB.GT.2) C22=EMB1*SQRT(EMB1)
       IF(NB.GT.2) C23=EMB2*EMB2*SQRT(EMB2)
       IF(NB.LE.2) CB1=A(NB,1) -QB  
       IF(NB.LE.2) CB2=0.
       IF(NB.LE.2) CB3=0.
       IF(NB.EQ.3) CB1=2.        
       IF(NB.EQ.3) CB2=A(NB,2) -QB
       IF(NB.EQ.3) CB3=0.
       IF(NB.EQ.4) CB1=2.
       IF(NB.EQ.4) CB2=A(NB,2)
       IF(NB.EQ.4) CB3=A(NB,3) -QB
       IF(NB.EQ.4.AND.QB.GT.1.) CB3=0.
       IF(NB.EQ.4.AND.QB.GT.1.) CB2=A(NB,1)-(QB-1.)
       IF(NB.GT.4) CB1=2.
       IF(NB.GT.4) CB2=A(NB,2)
       IF(NB.GT.4) CB3=A(NB,3) -QB
C  VALUES OF X :  
        X(1)=  1.15
        X(2)=  0.75 
        X(3)=  0.75
        X(4)=  1.00
        X(5)=  1.00  
        X(6)=  1.00 
        X(7)=  0.95 
        X(8)=  0.75
        X(9)=  0.60
        X(10)= 0.55 
C  DA, D AND DELL ARE ALL IN ATOMIC UNITS:  (20 AU = ~10.6 A)
C  INTENSITY OF 2Px ORBITAL IS PI/2 =1.57 (AT THETA =0) COMPARED TO
C  THE AVERAGE RADIAL INTENSITY:
        PPP= 1.57
      HETAX=  -2.0 
      BETAX=  -0.6 
      NETAX=  +0.3  
      CTAX=   +0.3
      BTAX=   +4.3
        P2PA= 0.
        IF(NA.EQ.2.AND.NB.EQ.1) P2PA= 0.
        IF(NA.EQ.2.AND.NB.EQ.2) P2PA= 0.5*HETAX/27.21  
        IF(NA.EQ.2.AND.NB.EQ.10) P2PA= NETAX/27.21 
        IF(NA.EQ.3) P2PA= 0.
        IF(NA.EQ.4) P2PA= BETAX/27.21
        IF(NA.EQ.5.AND.STARB.EQ.'&') P2PA= BTAX/27.21
        IF(NA.EQ.5.AND.STARB.EQ.'&'.AND.NATOMS.EQ.3) P2PA=P2PA/2. 
        IF(NA.EQ.6.AND.STARC.EQ.'*') P2PA= CTAX/27.21
        IF(NA.EQ.6.AND.STARC.EQ.'*'.AND.NATOMS.EQ.3) P2PA=P2PA/2.
        IF(NA.EQ.6.AND.STARC.EQ.'*'.AND.NATOMS.EQ.5) P2PA=P2PA/4.
        IF(NA.EQ.7) P2PA= 0.
        IF(NA.EQ.8) P2PA= 0.
        IF(NA.EQ.9) P2PA= 0.
        IF(NA.EQ.10.AND.NB.EQ.1) P2PA= 0.
        IF(NA.EQ.10.AND.NB.EQ.2) P2PA= NETAX/27.21
        IF(NA.EQ.10.AND.NB.EQ.10) P2PA= 0.5*NETAX/27.21    
C
        P2PB= 0.
        IF(NB.EQ.2.AND.NA.EQ.1) P2PB= 0.
        IF(NB.EQ.2.AND.NA.EQ.2) P2PB= 0.5*HETAX/27.21
        IF(NB.EQ.2.AND.NA.EQ.10) P2PB=0.
        IF(NB.EQ.3) P2PB= 0.
        IF(NB.EQ.4) P2PB= BETAX/27.21
        IF(NB.EQ.5.AND.STARB.EQ.'&') P2PB= BTAX/27.21
        IF(NB.EQ.6.AND.STARC.EQ.'*') P2PB= CTAX/27.21
        IF(NB.EQ.7) P2PB=0.
        IF(NB.EQ.8) P2PB=0.
        IF(NB.EQ.9) P2PB=0.
        IF(NB.EQ.10.AND.NA.EQ.1) P2PB=0.
        IF(NB.EQ.10.AND.NA.EQ.2) P2PB=NETAX/27.21 
        IF(NB.EQ.10.AND.NA.EQ.10) P2PB= 0.5*NETAX/27.21
        AFG=0.
        D=12.00001
        DELL=0.001        
        AVEX=0.5*(X(NA)+X(NB)-0.05*FLOAT(CHARGE))
        XXD=AVEX*DD
        UXX=0.
        DO 119 N=1,12000
        D=D-DELL
        DA=D
        DB=D
        IF((EMA0*DA).LE.88.7228) CH1A=C11*EXP(-EMA0*DA)
        IF((EMA0*DA).GT.88.7228) CH1A=0.
        IF(CH1A.GT.0.)        G1A=G1A+DELL*4.*DA*DA*CH1A*CH1A
C  FOR HYDROGEN-LIKE 2S ORBITAL:
        IF(NA.GT.2.AND.(EMA1*DA).LE.88.7228) CH1B=C12*(2.-2.*EMA1*DA)*
     1 EXP(-EMA1*DA)
        IF(NA.GT.2.AND.(EMA1*DA).GT.88.7228) CH1B=0.        
        IF(NA.GT.2) TA=SQRT(8.)*EMA0**1.5*(2.*EMA1)**1.5*(EMA0-2.*EMA1)/
     1 (EMA0+EMA1)**4.
        IF(NA.GT.2) G1B=G1B+DELL*DA*DA*(CH1B-TA*CH1A)*(CH1B-TA*CH1A)/
     1 (1.-TA*TA)
        IF(NA.GE.4.AND.(EMA2*DA).LE.88.7228) CH1C=C13*DA*EXP(-EMA2*DA)
        IF(NA.GE.4.AND.(EMA2*DA).GT.88.7228) CH1C=0.
       IF(NA.GE.4) G1C=G1C+DELL*(4./3.)*DA*DA*CH1C*CH1C
C  THERE ARE THREE SETS OF 2P ORBITALS (Px, Py and Pz)
C  ONLY THE RADIAL PART IS USED FOR THE 2p ORBITALS:        
       IF((EMB0*DB).LE.88.7228) CH2A=C21*EXP(-EMB0*DB)
       IF((EMB0*DB).GT.88.7228) CH2A=0.
       IF(CH2A.GT.0.)        G2A=G2A+DELL*4.*DB*DB*CH2A*CH2A
C  FOR HYDROGEN-LIKE 2S ORBITAL:
       IF(NB.GT.2.AND.(EMB1*DB).LE.88.7228) CH2B=C22*(2.-2.*EMB1*DB)*
     1 EXP(-EMB1*DB)
       IF(NB.GT.2.AND.(EMB1*DB).GT.88.7228) CH2B=0.
       IF(NB.GT.2) TB=SQRT(8.)*EMB0**1.5*(2.*EMB1)**1.5*(EMB0-2.*EMB1)/
     1 (EMB0+EMB1)**4.
       IF(NB.GT.2) G2B=G2B+DELL*DB*DB*(CH2B-TB*CH1B)*(CH2B-TB*CH1B)/
     1 (1.-TB*TB)
       IF(NB.GE.4.AND.(EMB2*DB).LE.88.7228) CH2C=C23*DB*EXP(-EMB2*DB)
       IF(NB.GE.4.AND.(EMB2*DB).GT.88.7228) CH2C=0.
       IF(NB.GE.4) G2C=G2C+DELL*(4./3.)*DB*DB*CH2C*CH2C
C
       IF(NA.EQ.1.AND.NB.EQ.1.AND.CHARGE.NE.0) GO TO 333
       QQ1=CA1*G1A +CA2*G1B +PPP*CA3*G1C
       QQ2=CB1*G2A +CB2*G2B +PPP*CB3*G2C
333    IF(NA.EQ.1.AND.NB.EQ.1.AND.CHARGE.NE.0) QQ1= 1.
       IF(NA.EQ.1.AND.NB.EQ.1.AND.CHARGE.NE.0) QQ2= G2A
       UXX=UXX +QQ1*QQ2*DELL/(D*D)
C      
      IF(D.LE.XXD) GO TO 120
119   CONTINUE
120   CONTINUE
C   ENERGIES ARE IN HARTREES (27.21 eV/HARTREE) :
      UX= UXX +P2PA +P2PB
      RETURN
      END
C  FUNCTION F2:
      FUNCTION F2(II,Q)
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)         
      COMMON/SCLRS/NXX,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5)
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      CHARACTER*1 STAR,STARB,STARC
      INTEGER CHARGE,AN
      DIMENSION A(10,3)
      STARB=' '
      STARC=' '
      IF(STAR(1).EQ.'&'.OR.STAR(2).EQ.'&') STARB='&'
      IF(STAR(1).EQ.'*'.OR.STAR(2).EQ.'*') STARC='*'
      A(1,2)= 0.
      A(2,2)= 0.
      A(3,2)= 1.
      A(4,2)= 1.
      IF(II.EQ.5.AND.STARB.NE.'&') A(5,2)= 2.
      IF(II.EQ.5.AND.STARB.EQ.'&') A(5,2)= 1. 
C  2s2 2p2 CARBON:
      IF(II.EQ.6.AND.STARC.NE.'*') A(6,2)= 2.
C  2s1 2p3 CARBON:
      IF(II.EQ.6.AND.STARC.EQ.'*') A(6,2)= 1.
      A(7,2)= 2.
      A(8,2)= 2.
      A(9,2)= 2.
      A(10,2)=2.
C  NUMBER OF 2S ELECTRONS IS ONLY NEEDED IN THIS EQUATION:
      F2=2.*EMU(II,2,Q)*(0.092-0.009*A(II,2))
C  THE PRECEEDING VALUE OF F2 IS IN HARTREES (1 HARTREE =27.21 eV)
      IF(II.LT.4) F2=0.
      IF(II.EQ.9.AND.Q.LE.0.) F2=0.
      IF(II.GT.9) F2=0.
      RETURN
      END
C  FUNCTION G1:
      FUNCTION G1(II,Q)
      COMMON/MOLINF/AN(35),CZ(18),C(35,3),U(80),NORB(18),EL(18),ORB(9)
      COMMON/SCLRS/NXX,NATOMS,OCCA,OCCB,ENERGY,ETOTAL,BBB,CHARGE,STAR(5) 
      IMPLICIT REAL (A-H,O-Z)
      IMPLICIT INTEGER (I-N)
      INTEGER CHARGE,AN
      CHARACTER*1 STAR,STARB,STARC
      DIMENSION A(10,3)
      STARB=' '
      STARC=' '
      IF(STAR(1).EQ.'&'.OR.STAR(2).EQ.'&') STARB='&'
      IF(STAR(1).EQ.'*'.OR.STAR(2).EQ.'*') STARC='*'
      A(1,2)= 0.
      A(1,3)= 0.
      A(2,2)= 0.
      A(2,3)= 0.
      A(3,2)= 1.
      A(3,3)= 0.
      A(4,2)= 1.      
      A(4,3)= 1.
      IF(II.EQ.5.AND.STARB.NE.'&') A(5,2)= 2.
      IF(II.EQ.5.AND.STARB.NE.'&') A(5,3)= 1.
      IF(II.EQ.5.AND.STARB.EQ.'&') A(5,2)= 1.
      IF(II.EQ.5.AND.STARB.EQ.'&') A(5,3)= 2.
C  2s2 2p2 CARBON:
      IF(II.EQ.6.AND.STARC.NE.'*') A(6,2)= 2.
      IF(II.EQ.6.AND.STARC.NE.'*') A(6,3)= 2.
C   2s1 2P3 CARBON:
      IF(II.EQ.6.AND.STARC.EQ.'*') A(6,2)= 1.
      IF(II.EQ.6.AND.STARC.EQ.'*') A(6,3)= 3.
      A(7,2)= 2.
      A(7,3)= 3. 
      A(8,2)= 2.
      A(8,3)= 4. 
      A(9,2)= 2.
      A(9,3)= 5. 
      A(10,2)=2.
      A(10,3)=6.
C  THE VALUE OF G1 IS IN UNITS OF HARTREES:  1 HARTREE =27.21 eV
      G1=0.092*2.0*EMU(II,2,Q)
      IF(II.LT.4)       G1=0.
      IF(A(II,2).NE.1.) G1=0.
      RETURN
      END


