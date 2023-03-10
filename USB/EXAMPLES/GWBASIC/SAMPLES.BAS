10 REM The IBM Personal Computer Samples
20 REM Version 2.1 (C)Copyright IBM Corp 1983
30 REM Licensed Material - Program Property of IBM
40 KEY OFF:SCREEN 0,1:COLOR 15,0,0:WIDTH 40:CLS:LOCATE 5,19:PRINT "IBM"
50 LOCATE 7,12,0:PRINT "Personal Computer"
60 COLOR 10,0:LOCATE 10,9,0:PRINT CHR$(213)+STRING$(21,205)+CHR$(184)
70 LOCATE 11,9,0:PRINT CHR$(179)+"       SAMPLES       "+CHR$(179)
80 LOCATE 12,9,0:PRINT CHR$(179)+STRING$(21,32)+CHR$(179)
90 LOCATE 13,9,0:PRINT CHR$(179)+"    Version 2.1      "+CHR$(179)
100 LOCATE 14,9,0:PRINT CHR$(212)+STRING$(21,205)+CHR$(190)
110 COLOR 15,0:LOCATE 17,4,0:PRINT "(C) Copyright IBM Corp 1982, 1983"
120 COLOR 14,0:LOCATE 23,7,0:PRINT "Press space bar to continue"
130 REM
140 CMD$ = INKEY$
150 IF CMD$="" THEN GOTO 140
160 IF CMD$ = CHR$(27) THEN GOTO 570
170 IF CMD$ = " " THEN GOTO 190
180 GOTO 130
190 SCREEN 0,1:COLOR 15,0,0:CLS:LOCATE 5,3:PRINT "SAMPLE PROGRAMS"
200 DEFINT A-Z: M=0: DEF SEG=&HFFFF: IF HEX$(PEEK(&HE))="FD" THEN M=1:DEF SEG:ELSE  M=0:DEF SEG
210 LOCATE 7,3,0:PRINT	"A - MUSIC    (64k)"
220 LOCATE 8,3,0:PRINT	"B - ART      (48k-Color/Graphics)"
230 LOCATE 9,3,0:PRINT	"C - MORTGAGE (64k)"
240 LOCATE 10,3,0:PRINT "D - CIRCLE   (BASICA-Color/Graphics)"
250 LOCATE 11,3,0:PRINT "E - DONKEY   (BASICA-Color/Graphics)"
260 LOCATE 12,3,0:PRINT "F - PIECHART (BASICA-Color/Graphics)"
270 LOCATE 13,3,0:PRINT "G - BALL     (BASICA-Color/Graphics)"
280 LOCATE 14,3,0:PRINT "H - COLORBAR (48k)"
290 LOCATE 15,3,0:PRINT "I - SPACE    (BASICA-Color/Graphics)"
300 LOCATE 16,3,0:PRINT "ESC KEY - EXIT"
310 LOCATE 19,3,0:PRINT "ENTER LETTER OF PROGRAM"
320 LOCATE 21,3,0:PRINT "NOTE: All of the above programs"
330 LOCATE 22,3,0:PRINT "      require 64k if using BASICA"
340 REM
350 K$ = INKEY$:IF K$ <> "" THEN GOTO 340
360 K$ = INKEY$:IF K$ = "" THEN GOTO 360
370 IF MID$(K$,1,1) = "A" AND M<>1 THEN CHAIN "MUSIC",1000
375 IF MID$(K$,1,1) = "A" AND M=1  THEN CHAIN "MUSICA",1000
380 IF MID$(K$,1,1) = "B" THEN CHAIN "ART",1000
390 IF MID$(K$,1,1) = "C" THEN CHAIN "MORTGAGE",1000
400 IF MID$(K$,1,1) = "D" THEN CHAIN "CIRCLE",1000
410 IF MID$(K$,1,1) = "E" THEN CHAIN "DONKEY",1000
420 IF MID$(K$,1,1) = "F" THEN CHAIN "PIECHART",1000
430 IF MID$(K$,1,1) = "G" THEN CHAIN "BALL",1000
440 IF MID$(K$,1,1) = "H" THEN CHAIN "COLORBAR",1000
450 IF MID$(K$,1,1) = "I" THEN CHAIN "SPACE",1000
460 IF MID$(K$,1,1) = "a" AND M<>1 THEN CHAIN "MUSIC",1000
465 IF MID$(K$,1,1) = "a" AND M=1  THEN CHAIN "MUSICA",1000
470 IF MID$(K$,1,1) = "b" THEN CHAIN "ART",1000
480 IF MID$(K$,1,1) = "c" THEN CHAIN "MORTGAGE",1000
490 IF MID$(K$,1,1) = "d" THEN CHAIN "CIRCLE",1000
500 IF MID$(K$,1,1) = "e" THEN CHAIN "DONKEY",1000
510 IF MID$(K$,1,1) = "f" THEN CHAIN "PIECHART",1000
520 IF MID$(K$,1,1) = "g" THEN CHAIN "BALL",1000
530 IF MID$(K$,1,1) = "h" THEN CHAIN "COLORBAR",1000
540 IF MID$(K$,1,1) = "i" THEN CHAIN "SPACE",1000
550 IF MID$(K$,1,1) = CHR$(27) THEN GOTO 570
560 GOTO 190
570 SCREEN 0,1:COLOR 7,0:CLS:END
1000 GOTO 190
