10 KEY 15,CHR$(4)+CHR$(70)
20 KEY 16,CHR$(12)+CHR$(83)
30 ON KEY (15) GOSUB 1000
40 ON KEY (16) GOSUB 1000
50 KEY (15) ON
60 KEY (16) ON
70 CLS:SCREEN 1,0:KEY OFF
80 LOCATE 25,1:PRINT "Please wait and do not type"
90 W$="D6 E3 F3 U6 BL6":E$="R6 BL6 D3 R3 BL3 D3 R6 BH6" :L$="d6 r6 bh6"
100 C$="BR6 bf1 h1 l4 g1 d4 f1 r4 e1 bh5 bl1":O$="D6 R6 U6 L6"
105 O$="BR6 bf1 h1 l4 g1 d4 f1 r4 e1 u4 bu1 bl6"
110 M$="D6 BU6 F3 E3 D6 BH6":SP$="BR8"
300 ANGLE=0:FOR SCALE =1 TO 100 STEP 4
310 DRAW "S ="+VARPTR$(SCALE)
320 GOSUB 1000
330 FOR TIMES=1 TO 1000:NEXT TIMES :CLS
340 NEXT SCALE
350 SCREEN 2:SCREEN 0:END
1000 DRAW "BM 160,100"+"BL28 "
1010  DRAW W$+SP$+E$+SP$+L$+SP$+C$+SP$+O$+SP$+M$+SP$+E$
1020 RETURN
