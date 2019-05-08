10  COLOR 2, 0: CLS
20  X = 1: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
30  X = 4: Y = 5: YL = 68: XL = 15: CL = 1: RS = 1: GOSUB 11080
40  X = 21: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
50  LOCATE 22, 30: COLOR 14, 4: PRINT "ESC=€ I K I "
60  LOCATE 2, 28: COLOR 14, 4
70  PRINT " L O J  S T  K  ": COLOR 14, 1 :GOTO 90
80 FOR I=5 TO 19 :LOCATE I,7:PRINT STRING$ (65," "):NEXT I: COLOR 14, 4
   LOCATE 5,7:PRINT " VERILENLER : ":COLOR 14, 1:
   LOCATE 6,10:PRINT"1- 1 nci IS.SVS.BL.'nun PERSONEL MEVCUDU 137 DIR. "
   LOCATE 7, 16:PRINT "  ( %100 KADRO,SB.-ASTSB. DAHIL.)"
   LOCATE 9,10:PRINT"2- IS.BL.'DE MEVCUT ARACLARIN CINS ve MIKTARLARI ASAGIDADIR."
   LOCATE 10,16:PRINT"  a. ARAC YUK 3/4 TON            : 4  "
   LOCATE 11,16:PRINT"  b. ARAC YUK 21/2 TON           : 3  "
   LOCATE 12,16:PRINT"  c. ARAC TRAKTOR 5 TON (M-52)   : 1  "
   LOCATE 13,16:PRINT"  d. ARAC DAMPERLI 21/2 TON      : 9  "
   LOCATE 14,16:PRINT"  e. ARAC GENEL MAKSAT 1/4 TON   : 1  "
   LOCATE 15,16:PRINT"  f. TRAKTOR PALETLI DESEL       : 1  "
   LOCATE 16,16:PRINT"  g. KOMPRASOR  210 CFM CEKICILI : 1  "
   LOCATE 17,16:PRINT"  h. JENERATOR BENZINLI 1,5 KW   : 1  "
   LOCATE 18,16:PRINT"  i. SEYYAR MUTFAK B PAKETI      : 2  "
   LOCATE 19,16:PRINT"  j. ISITICI                     : 1  "
   LOCATE 22, 15:COLOR 14, 4:PRINT "  ESC -> ANAMENU      RETURN -> DEVAM  "
82 I$ = INKEY$:IF I$="" THEN 82
   IF I$ = CHR$(13) THEN 85
84 IF ASC(I$) = 27 THEN GOTO 90
85 FOR I= 5 TO 19 :LOCATE I, 7:COLOR 14, 1:PRINT STRING$ (65," "):NEXT I
   COLOR 14,1:LOCATE 6,10:PRINT"3- 1 nci IS.SVS.BL.'GU  2'nci P.A.MUH.GR.D/DS OLARAK,  "
   LOCATE 7,10:PRINT"   MUTEDIL IKLIM OZELLIKLERI OLAN BIR BOLGEDE, YOLLARIN"
   LOCATE 8,10:PRINT"   DISINDAN HAREKETLE,SAVUNMA YAPACAGI MEVKIYE 80 KM.LIK"
   LOCATE 9,10:PRINT"   BIR INTIKAL YAPACAKTIR.BOLUGUN IKMAL NOKTALARINA OLAN"
   LOCATE 10,10:PRINT"   ORTALAMA MESAFESI  25 KM.DIR.      "
   LOCATE 12,10:PRINT"4- IS.BL.'DE MEVCUT SILAHLARIN CINS VE MIKTARLARI ASAGIDADIR."
   LOCATE 13,10:PRINT"  a. TABANCA                     : 10 "
   LOCATE 14,10:PRINT"  b. MAKINALI TABANCA            : 10 "
   LOCATE 15,10:PRINT"  c. PIYADE TUFEGI               : 127 "
   LOCATE 16,10:PRINT"  d. MAKINALI TUFEK              : 9  "
   LOCATE 17,10:PRINT"  e. UCAKSAVAR MK.TF.            : 4  "
   LOCATE 18,10:PRINT"  f. ROKETATAR                   : 9  "
   LOCATE 22, 15:COLOR 14, 4:PRINT "  ESC -> ANAMENU      RETURN -> DEVAM  "
A : I$ = INKEY$: IF I$="" THEN GOTO A ELSE IF I$ = CHR$ (32) THEN 87
86 IF I$ = CHR$(27) THEN GOTO 90
87 FOR I= 5 TO 19 :LOCATE I, 7:COLOR 14, 1:PRINT STRING$ (65," "):NEXT I
   LOCATE 7, 7:COLOR 14, 4:PRINT " VAZIFELER : ":COLOR 14, 1
   LOCATE 9, 10:PRINT "1- KIT'A YUKU DEMIRBAS  ERZAK IHTIYACINI BELIRLEYIN  ! "
   LOCATE 10, 10:PRINT "2- KIT'A YK NORMAL    ERZAK IHTIYACINI BELIRLEYIN   ! "
   LOCATE 11, 10:PRINT "3- KIT'A YK AKARYAKIT ve YAG IHTIYACINI BELIRLEYIN  ! "
   LOCATE 12, 10:PRINT "4- KIT'A YK CEPHANE   IHTIYACINI BELIRLEYIN  !       "
   LOCATE 22, 15:COLOR 14, 4:PRINT "  ESC -> ANAMENU      RETURN -> DEVAM  "
88  I$ = INKEY$: IF I$ = "" THEN 88
    IF I$ = CHR$(27) THEN GOTO 90
90  FOR I= 5 TO 19 :LOCATE I, 7:COLOR 14, 1:PRINT STRING$ (65," "):NEXT I
    LOCATE 9, 19:              PRINT "1- KIT'A YK NORMAL    ERZAK IHTIYAC HESABI "
100 LOCATE 11, 19:            PRINT "2- KIT'A YK DEMIRBAS ERZAK IHTIYAC HESABI "
110 LOCATE 13, 19:            PRINT "3- KIT'A YK AKARYAKIT VE YAG  IHTIYAC HESABI "
115 LOCATE 15, 19:            PRINT "4- KIT'A YUKU CEPHANE   HTYAC HESABI "
    LOCATE 17,19:             PRINT "5- MESELE COZUMU                       "
120 I$ = INKEY$: IF I$ = "" THEN 120
130 IF I$ = CHR$(27) THEN RUN "DERSLER.EXE"
140 IF VAL(I$) < 1 OR VAL(I$) > 5 THEN GOTO 120
150 I = VAL(I$)
170 ON I GOTO 190, 430, 610, TABLO6,80
190 CLS : X = 5: Y = 19: YL = 41: XL = 12: CL = 1: RS = 0: GOSUB 11080
200 X = 1: Y = 19: YL = 41: XL = 1: CL = 12: RS = 0: GOSUB 11080
210 X = 20: Y = 19: YL = 41: XL = 1: CL = 4: RS = 0: GOSUB 11080
220 COLOR 14, 4: LOCATE 21, 34: PRINT "ESC=LOJISTIK"
230 COLOR , 12: LOCATE 2, 30: PRINT "[ L O J I S T I K ]": COLOR 14, 5
250 COLOR 14, 1: LOCATE 10, 24: PRINT "1-BRLK PERSONEL STKAKI          "
260 LOCATE 12, 24: PRINT "2-PERSONEL BAINA STKAKLAR        ": COLOR 14, 1
270 I$ = INKEY$: IF I$ = "" THEN 270
280 IF I$ = CHR$(27) THEN CLS : GOTO 10
290 IF VAL(I$) < 1 OR VAL(I$) > 2 THEN GOTO 270
293 I = VAL(I$)
295 ON I GOTO 300, 405
300 GT = 0: CLS : X = 1: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
310 X = 4: Y = 5: YL = 68: XL = 15: CL = 1: RS = 0: GOSUB 11080
320 X = 21: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
330 LOCATE 22, 30: COLOR 14, 4: PRINT "ESC = LOJSTK ": COLOR 14, 1
335 COLOR 14, 4: LOCATE 2, 20: PRINT "KIT'A  YK  DEMRBA  ERZAK  HESABI": COLOR 14, 1
340 COLOR 3: LOCATE 5, 6: PRINT "BRLK PERSONEL MEVCUDU....="
350 T = 1: Y = 5: W = 34: GOSUB 15000
355 IF ESC = 1 THEN 190 ELSE IF B$ <> "" THEN BPM = VAL(B$)
360 COLOR 10: LOCATE 7, 10: PRINT "ERZAK CNS                1.GN MKTARI    2.GN MKTARI": COLOR 14, 1
361           LOCATE 8, 10: PRINT "--------------------------------------------------------------"
362 COLOR 3: LOCATE 9, 10: PRINT "PEKSMET.................[gr.]"
363         LOCATE 10, 10: PRINT "KONSERVE ve SIฆIR ET....[gr.]"
364         LOCATE 11, 10: PRINT "KONSERVE BARBUNYA PLAK..[gr.]"
365         LOCATE 12, 10: PRINT "KONSERVE FASULYE  PLAK......."
366         LOCATE 13, 10: PRINT "KONSERVE MARMELAT........[gr.]"
367         LOCATE 14, 10: PRINT "TUZ TABLET.............[adet]"
368         LOCATE 15, 10: PRINT "SU TEMZLEME TABLET....[adet]": COLOR 14, 1
369 COLOR 5: LOCATE 17, 10: PRINT "TOPLAM": COLOR 14, 1
370 P = BPM * 450:
    KS = BPM * 200:
    KB = BPM * 200: KBP = BPM * 0
    KF = BPM * 0: KFP = BPM * 200
    KM = BPM * 100:
    TT = BPM * 10:
    STT = BPM * 5
371 LOCATE 9, 40: PRINT P: LOCATE 9, 60: PRINT P
372 LOCATE 10, 40: PRINT KS: LOCATE 10, 60: PRINT KS
373 LOCATE 11, 40: PRINT KB: LOCATE 11, 60: PRINT KBP
374 LOCATE 12, 40: PRINT KF: LOCATE 12, 60: PRINT KFP
375 LOCATE 13, 40: PRINT KM: LOCATE 13, 60: PRINT KM
376 LOCATE 14, 40: PRINT TT: LOCATE 14, 60: PRINT TT
377 LOCATE 15, 40: PRINT STT: LOCATE 15, 60: PRINT STT
378 TOPLAM1 = P + KS + KB + KF + KM: TOPLAM2 = P + KS + KBP + KFP + KM
380 COLOR 5: LOCATE 17, 40: PRINT TOPLAM1: LOCATE 17, 60: PRINT TOPLAM2
382 COLOR 16, 3: LOCATE 7, 67: PRINT "GENEL"
385 GT = TOPLAM1 + TOPLAM2: COLOR 16: LOCATE 17, 67: PRINT GT: COLOR 14, 1
400 I$ = INKEY$: IF I$ = "" THEN 400
401 IF I$ = CHR$(27) THEN 190 ELSE 400
405 GOSUB TABLO1: GOTO 190
430 CLS : X = 5: Y = 19: YL = 41: XL = 12: CL = 1: RS = 0: GOSUB 11080
435 X = 1: Y = 19: YL = 41: XL = 1: CL = 12: RS = 0: GOSUB 11080
440 X = 20: Y = 19: YL = 41: XL = 1: CL = 4: RS = 0: GOSUB 11080
445 COLOR 14, 4: LOCATE 21, 34: PRINT "ESC=LOJISTIK"
450 COLOR , 12: LOCATE 2, 30: PRINT "[ L O J  S T  K ]": COLOR 14, 5
455 COLOR 14, 1: LOCATE 10, 24: PRINT "1-BRLK PERSONEL STKAKI          "
460 LOCATE 12, 24: PRINT "2-PERSONEL BAINA STKAKLAR        ": COLOR 14, 1
465 I$ = INKEY$: IF I$ = "" THEN 465
470 IF I$ = CHR$(27) THEN CLS : GOTO 10
475 IF VAL(I$) < 1 OR VAL(I$) > 2 THEN GOTO 465
480 I = VAL(I$)
485 ON I GOTO 500, 600
500 COLOR 14, 1: CLS : X = 1: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
510 X = 4: Y = 5: YL = 68: XL = 15: CL = 1: RS = 0: GOSUB 11080
520 X = 21: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
530 LOCATE 22, 30: COLOR 14, 4: PRINT "ESC = LOJSTK ": COLOR 14, 1
535 COLOR 14, 4: LOCATE 2, 23: PRINT "KIT'A  YK  NORMAL  ERZAK  HESABI": COLOR 14, 1
540 COLOR 3: LOCATE 5, 6: PRINT "BRLK PERSONEL MEVCUDU....="
550 T = 1: Y = 5: W = 34: GOSUB 15000
555 IF ESC = 1 THEN 430 ELSE IF B$ <> "" THEN BP = VAL(B$)
560 COLOR 10: LOCATE 7, 10: PRINT "ERZAK CNS                1.GN MKTARI    2.GN MKTARI": COLOR 14, 1
561           LOCATE 8, 10: PRINT "--------------------------------------------------------------"
562 COLOR 3: LOCATE 9, 10:  PRINT "PRN€...............[gr.]"
563          LOCATE 10, 10: PRINT "NEBAT MARGARN......[gr.]"
564          LOCATE 11, 10: PRINT "TUZ..................[gr.]"
565          LOCATE 12, 10: PRINT "SAL€A................[gr.]"
566          LOCATE 13, 10: PRINT "KIRMIZI MERCMEK.....[gr.]"
567          LOCATE 14, 10: PRINT "BULGUR...............[gr.]"
568          LOCATE 15, 10: PRINT "NOHUT................[gr.]"
569          LOCATE 16, 10: PRINT "TOZ EKER............[gr.]"
570          LOCATE 17, 10: PRINT "KURU ZM............[gr.]"
571          LOCATE 18, 10: PRINT "KURU FASULYE.........[gr.]"
572 PR = 40 * BP: PIR = 130 * BP
    NM = 75 * BP:
    TUZ = 20 * BP:
    SA = 12 * BP: SAL = 13 * BP:
    KM = 5 * BP: KIM = 10 * BP:
    BUL = 130 * BP: BULG = 40 * BP:
    NH = 10 * BP: NOH = 140 * BP:
    TS = 70 * BP: KU = 60 * BP: KF = 130 * BP: KRF = BP * 0
573 COLOR 14, 1: LOCATE 9, 40: PRINT PR: LOCATE 9, 60: PRINT PIR
574 LOCATE 10, 40: PRINT NM: LOCATE 10, 60: PRINT NM
575 LOCATE 11, 40: PRINT TUZ: LOCATE 11, 60: PRINT TUZ
576 LOCATE 12, 40: PRINT SA: LOCATE 12, 60: PRINT SAL
577 LOCATE 13, 40: PRINT KM: LOCATE 13, 60: PRINT KIM
578 LOCATE 14, 40: PRINT BUL: LOCATE 14, 60: PRINT BULG
579 LOCATE 15, 40: PRINT NH: LOCATE 15, 60: PRINT NOH
580 LOCATE 16, 40: PRINT TS: LOCATE 16, 60: PRINT TS
581 LOCATE 17, 40: PRINT KU: LOCATE 17, 60: PRINT KU
582 LOCATE 18, 40: PRINT KF: LOCATE 18, 60: PRINT KRF
583 TP1 = PR + NM + TUZ + SA + KM + BUL + NH + TS + KU + KF: TP2 = PIR + NM + TUZ + SAL + KIM + BULG + NOH + TS + KU + KRF
584 TOP = TP1 + TP2
585 COLOR 5: LOCATE 19, 40: PRINT TP1
586 LOCATE 19, 60: PRINT TP2: LOCATE 19, 10: PRINT "TOPLAM"
587 COLOR 16, 2: LOCATE 19, 67: PRINT TOP: LOCATE 7, 67: PRINT "GENEL": COLOR 14, 1
590 I$ = INKEY$: IF I$ = "" THEN 590
591 IF I$ = CHR$(27) THEN 190 ELSE 590
600 GOSUB TABLO2: GOTO 430
610 COLOR 14, 1: CLS : X = 1: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
611 X = 4: Y = 5: YL = 68: XL = 15: CL = 1: RS = 0: GOSUB 11080
612 X = 21: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
613 COLOR 14, 4: LOCATE 2, 20: PRINT "KIT'A YK AKARYAKIT VE ERZAK  HESAPLAMASI"
614 LOCATE 22, 30: PRINT "ESC = LOJSTK": COLOR 14, 1
615 COLOR 14, 1: LOCATE 6, 12: PRINT "1- ARA€ ADETLERNN BELRLENMES"
616              LOCATE 8, 12: PRINT "2- MESAFE TAYN VE FAKTRLERN BELRLENMES"
617              LOCATE 10, 12: PRINT "3- SONU€LARIN TABLODA GRNTS  "
618              LOCATE 12, 12: PRINT "4- ARA€ CNSNE GRE AKARYAKIT TKETM VE DEPO KAPASTELER"
620              LOCATE 14, 12: PRINT "5-  MAKNALARININ SAATTEK TKETM"
622 I$ = INKEY$: IF I$ = "" THEN 622
624 IF I$ = CHR$(27) THEN CLS : GOTO 10
625 IF VAL(I$) < 1 OR VAL(I$) > 5 THEN GOTO 622
626 I = VAL(I$)
627 ON I GOTO 630, 750, 1000, 631, 632
630 GOTO TABLO3
631 GOSUB TABLO4: GOTO 610
632 GOSUB TABLO5: GOTO 610
10000 REM ************* CERCEVE *************************************
11010 COLOR 0, 0: CLS :
11020 X = 1: Y = 5: YL = 68: XL = 4: CL = 1: RS = 0: GOSUB 11080
11030 X = 7: Y = 5: YL = 68: XL = 13: GOSUB 11080
11040 RETURN
11050 X = 1: Y = 1: YL = 78: XL = 2: CL = 1: RS = 0: GOSUB 11080:
11060 X = 5: Y = 1: YL = 78: XL = 15: CL = 1: RS = 0: GOSUB 11080:
11070 RETURN
11080 COLOR 15, RS: LOCATE X, Y: PRINT CHR$(201); STRING$(YL, 205); CHR$(187)
11090 FOR J = X + 1 TO X + XL
11100 LOCATE J, Y: COLOR 15, RS: PRINT CHR$(186);
11110              COLOR 0, CL: PRINT STRING$(YL, 32);
11120              COLOR 15, RS: PRINT CHR$(186);
11130 NEXT
11140 LOCATE X + XL + 1, Y: PRINT CHR$(200); STRING$(YL, 205); CHR$(188);
11150 RETURN
11160 X = 22: Y = 1: YL = 78: XL = 1: CL = 4: RS = 0: GOSUB 11080
11170 COLOR 14, 4: LOCATE 23, 34: PRINT "ESC = DONUS": COLOR 14, 1
11180 RETURN
11190 LOCATE 6, 5: PRINT SPACE$(40)
11200 RETURN
11210 REM BUYUK CERCEVE
11220 X = 1: Y = 25: XL = 318: YL = 190: GOSUB 11210
11230 RETURN
11240 CLS : COLOR 15, RS: LOCATE X, Y: PRINT CHR$(201); STRING$(YL, 205); CHR$(187)
11250 FOR J = X + 1 TO X + XL
11260 LOCATE J, Y: COLOR 15, RS: PRINT CHR$(186);
11270              COLOR 0, CL: PRINT STRING$(YL, 32);
11280              COLOR 15, RS: PRINT CHR$(186);
11290 NEXT
11300 LOCATE X + XL + 1, Y: PRINT CHR$(200); STRING$(YL, 205); CHR$(188);
11310 RETURN
11320 FOR X = 1 TO 14
11330 X = X + 1
11340 COLOR 14, 1: LOCATE X, Y: PRINT STRING$(YL, 196)
11350 NEXT
11360 RETURN
11370 LOCATE 8, 15: PRINT CHR$(194)
11380 FOR X = 2 TO 21
       IF X > 8 THEN LOCATE X, 15: PRINT CHR$(179)
       LOCATE X, 24: PRINT CHR$(179)
       LOCATE X, 37: PRINT CHR$(179)
       LOCATE X, 50: PRINT CHR$(179)
       LOCATE X, 63: PRINT CHR$(179)
       IF X MOD 2 = 0 AND X > 8 THEN LOCATE X, 15: PRINT CHR$(195)
       IF X MOD 2 = 0 THEN
	 LOCATE X, 24: PRINT CHR$(197)
	 LOCATE X, 37: PRINT CHR$(197)
	 LOCATE X, 50: PRINT CHR$(197)
	 LOCATE X, 63: PRINT CHR$(197)
       END IF
     NEXT X
     LOCATE 22, 15: PRINT CHR$(193)
     LOCATE X, 24: PRINT CHR$(193)
     LOCATE X, 37: PRINT CHR$(193)
     LOCATE X, 50: PRINT CHR$(193)
     LOCATE X, 63: PRINT CHR$(193)
     RETURN
11420 COLOR 14, 1: FOR X = 1 TO 7
      X = X + 1
      LOCATE X, Y: PRINT STRING$(YL, 196)
      NEXT
      FOR X = 7 TO 19
      X = X + 1
      LOCATE X, 16: PRINT STRING$(58, 196)
      NEXT
      LOCATE 22, Y: PRINT STRING$(YL, 196)
      RETURN
11450 FOR X = 2 TO 21
      LOCATE X, 24: PRINT CHR$(179)
      LOCATE X, 37: PRINT CHR$(179)
      LOCATE X, 50: PRINT CHR$(179)
      LOCATE X, 63: PRINT CHR$(179)
      LOCATE X, 24: PRINT CHR$(197)
      LOCATE X, 37: PRINT CHR$(197)
      LOCATE X, 50: PRINT CHR$(197)
      LOCATE X, 63: PRINT CHR$(197)
      NEXT
11460 COLOR 14, 1: FOR X = 3 TO 19
      X = X + 9
      LOCATE X, Y: PRINT STRING$(YL, 196)
      LOCATE X, 16: PRINT STRING$(58, 196)
      NEXT
FOR Z = 6 TO 45
LOCATE 4, Z: PRINT STRING$(29, 196)
NEXT
RETURN
11470 FOR X = 2 TO 21
      LOCATE X, 20: PRINT CHR$(179)
      LOCATE X, 33: PRINT CHR$(179)
      LOCATE X, 46: PRINT CHR$(179)
      LOCATE X, 59: PRINT CHR$(179)
      NEXT
      LOCATE X, 46: PRINT CHR$(193)
      LOCATE X, 20: PRINT CHR$(193)
      LOCATE X, 33: PRINT CHR$(193)
      LOCATE X, 59: PRINT CHR$(193)
RETURN
15000 Q = W: B$ = "": ESC = 0: HATA = 0: LOCATE Y, W: COLOR 31: PRINT "-": COLOR 14, 1
15002 A$ = INKEY$: IF A$ = "" THEN 15002
15004 IF A$ = CHR$(27) THEN ESC = 1: B$ = "": LOCATE Y, W: PRINT " ": RETURN
15006 IF A$ = CHR$(13) THEN LOCATE Y, W: PRINT " ": RETURN
15008 IF A$ = CHR$(8) THEN 15010 ELSE 15016
15010 IF W = Q THEN BEEP: GOTO 15002
15012 LOCATE Y, W - 1: COLOR 31: PRINT "-": COLOR 31: LOCATE Y, W: PRINT " ": W = W - 1: C$ = LEFT$(B$, Q)
15014 LOCATE Y, W: GOTO 15002
15016 IF T = 1 THEN GOSUB 15026
15018 IF HATA = 1 THEN BEEP: GOTO 15002
15019 LOCATE Y, W: PRINT A$; : COLOR 31: PRINT "-": COLOR 14, 1
15020 IF ASC(A$) < 32 OR ASC(A$) > 184 THEN BEEP: GOTO 15002
15022 B$ = MID$(B$, 1, W - Q) + A$: W = W + 1
15024 GOTO 15002
15026 IF (ASC(A$) < 48 OR ASC(A$) > 57) AND A$ <> "." THEN HATA = 1 ELSE HATA = 0
15028 RETURN

TABLO1:
      CLS :
      COLOR 10
      PRINT ""
      PRINT ""
      PRINT ""
      PRINT SPACE$(5); "ษออออออออออหอออออออออออออออออออออออออหอออออออออออออออออออออออออออออออป"
      PRINT SPACE$(5); "บ          บ                         บ               MKTARI         บ"
      PRINT SPACE$(5); "บ          บ                         ฬอออออออออออออออหอออออออออออออออน"
      PRINT SPACE$(5); "บ  SIRA NO บ    ERZAK   CNS        บ   1.NC GN   บ   2.NC GN   บ"
      PRINT SPACE$(5); "ฬออออออออออฮอออออออออออออออออออออออออฮอออออออออออออออฮอออออออออออออออน"
      PRINT SPACE$(5); "บ    1     บ Peksimet                บ   450 gr.     บ   450 gr.     บ"
      PRINT SPACE$(5); "ฬออออออออออฮอออออออออออออออออออออออออฮอออออออออออออออฮอออออออออออออออน"
      PRINT SPACE$(5); "บ    2     บ Konserve ve sงr eti   บ   200 gr.     บ   200 gr.     บ"
      PRINT SPACE$(5); "ฬออออออออออฮอออออออออออออออออออออออออฮอออออออออออออออฮอออออออออออออออน"
      PRINT SPACE$(5); "บ    3     บ Konserve barbunya plaki บ   200 gr.     บ   ----        บ"
      PRINT SPACE$(5); "ฬออออออออออฮอออออออออออออออออออออออออฮอออออออออออออออฮอออออออออออออออน"
      PRINT SPACE$(5); "บ    4     บ Konserve fasulye plaki  บ   ----        บ   200 gr.     บ"
      PRINT SPACE$(5); "ฬออออออออออฮอออออออออออออออออออออออออฮอออออออออออออออฮอออออออออออออออน"
      PRINT SPACE$(5); "บ    5     บ Konserve marmelat       บ   100 gr.     บ   100 gr.     บ"
      PRINT SPACE$(5); "ฬออออออออออฮอออออออออออออออออออออออออฮอออออออออออออออฮอออออออออออออออน"
      PRINT SPACE$(5); "บ    6     บ Tuz  tablet             บ   10 adet     บ   10 adet     บ"
      PRINT SPACE$(5); "ฬออออออออออฮอออออออออออออออออออออออออฮอออออออออออออออฮอออออออออออออออน"
      PRINT SPACE$(5); "บ    7     บ Su temizleme tableti    บ    5 gr.      บ    5 adet     บ"
      PRINT SPACE$(5); "ฬออออออออออสอออออออออออออออออออออออออฮอออออออออออออออฮอออออออออออออออน"
      PRINT SPACE$(5); "บ         T O P L A M                บ   950 gr.     บ   950 gr.     บ"
      PRINT SPACE$(5); "ศออออออออออออออออออออออออออออออออออออสอออออออออออออออสอออออออออออออออผ";
      WHILE INKEY$ = "": WEND
      RETURN


TABLO2:
CLS :
COLOR 10
      PRINT ""
      PRINT ""
      PRINT SPACE$(7); "ษออออออออหออออออออออออออออออหอออออออออออออออหออออออออออออป"
      PRINT SPACE$(7); "บSIRA NO บ ERZAK CNS      บ  1.NC  GN   บ  2.NC GN บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   1    บ Pirin           บ    40 gr.     บ 130 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   2    บ Nebati margarin  บ    75 gr.     บ  75 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   3    บ Tuz              บ    20 gr.     บ  20 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   4    บ Sala            บ    12 gr.     บ  13 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   5    บ Krmz Mercimek บ     5 gr.     บ  10 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   6    บ Bulgur           บ   130 gr.     บ  40 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   7    บ Nohut            บ    10 gr.     บ 140 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   8    บ Toz eker        บ    70 gr.     บ  70 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ   9    บ Kuru  zm       บ    60 gr.     บ  60 gr.    บ"
      PRINT SPACE$(7); "ฬออออออออฮออออออออออออออออออฮอออออออออออออออฮออออออออออออน"
      PRINT SPACE$(7); "บ  10    บ Kuru fasulye     บ   130 gr.     บ  ----      บ"
      PRINT SPACE$(7); "ศออออออออสออออออออออออออออออสอออออออออออออออสออออออออออออผ";
      WHILE INKEY$ = "": WEND
      RETURN

TABLO3:
CLS :
COLOR 10
      PRINT "                                                                                "
      PRINT SPACE$(5); "ษอออออออออหออออออออออออออออออออออออออออออออออหอออออออออออออออออป"
      PRINT SPACE$(5); "บ         บ                                  บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   1     บ Ara  Yk  3 / 4  Ton            บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   2     บ Ara  Yk  2 1/2  Ton            บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   3     บ Ara  Trakt”r  5 Ton (M-52)      บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   4     บ Ara  Damperli 2 1/2 Ton         บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   5     บ Ara  Genel Maksat 1/4 Ton       บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   6     บ Trakt”r Paletli Diesel           บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   7     บ Kompres”r 210 cfm. ekl        บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   8     บ Jenarat”r Benzinli  1.5 kw.      บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ   9     บ Seyyar Mutfak  B  Paketi         บ                 บ"
      PRINT SPACE$(5); "ฬอออออออออฮออออออออออออออออออออออออออออออออออฮอออออออออออออออออน"
      PRINT SPACE$(5); "บ  10     บ Istc                          บ                 บ"
      PRINT SPACE$(5); "ศอออออออออสออออออออออออออออออออออออออออออออออสอออออออออออออออออผ";
COLOR 14: LOCATE 3, 8: PRINT "SIRA NO"
	  LOCATE 3, 28: PRINT "ARA€   CNSLER"
	  LOCATE 3, 55: PRINT "MIKTARI (Adet)": COLOR 14, 1
COLOR 4:  LOCATE 5, 10: PRINT "1"
	  LOCATE 7, 10: PRINT "2"
	  LOCATE 9, 10: PRINT "3"
	  LOCATE 11, 10: PRINT "4"
	  LOCATE 13, 10: PRINT "5"
	  LOCATE 15, 10: PRINT "6"
	  LOCATE 17, 10: PRINT "7"
	  LOCATE 19, 10: PRINT "8"
	  LOCATE 21, 10: PRINT "9"
	  LOCATE 23, 9: PRINT "10": COLOR 14, 1
650 COLOR 15:
651          T = 1: Y = 5: W = 62: GOSUB 15000:
652                 IF ESC = 1 THEN 610 ELSE IF B$ <> "" THEN A = VAL(B$)
655          T = 1: Y = 7: W = 62: GOSUB 15000
656                 IF ESC = 1 THEN 651 ELSE IF B$ <> "" THEN B = VAL(B$)
670          T = 1: Y = 9: W = 62: GOSUB 15000
672                 IF ESC = 1 THEN 655 ELSE IF B$ <> "" THEN C = VAL(B$)
675          T = 1: Y = 11: W = 62: GOSUB 15000
677                 IF ESC = 1 THEN 670 ELSE IF B$ <> "" THEN D = VAL(B$)
680          T = 1: Y = 13: W = 62: GOSUB 15000
682                 IF ESC = 1 THEN 675 ELSE IF B$ <> "" THEN E = VAL(B$)
685          T = 1: Y = 15: W = 62: GOSUB 15000
687                 IF ESC = 1 THEN 680 ELSE IF B$ <> "" THEN F = VAL(B$)
690          T = 1: Y = 17: W = 62: GOSUB 15000
692                 IF ESC = 1 THEN 685 ELSE IF B$ <> "" THEN G = VAL(B$)
695          T = 1: Y = 19: W = 62: GOSUB 15000
697                 IF ESC = 1 THEN 690 ELSE IF B$ <> "" THEN H = VAL(B$)
700          T = 1: Y = 21: W = 62: GOSUB 15000
702                 IF ESC = 1 THEN 695 ELSE IF B$ <> "" THEN L = VAL(B$)
705          T = 1: Y = 23: W = 62: GOSUB 15000
707                 IF ESC = 1 THEN 700 ELSE IF B$ <> "" THEN K = VAL(B$): COLOR 14, 1
710 I$ = INKEY$: IF I$ = "" THEN 710
715 IF I$ = CHR$(27) THEN 610 ELSE 710
750 CLS : X = 1: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
755 X = 4: Y = 5: YL = 68: XL = 15: CL = 1: RS = 0: GOSUB 11080
760 X = 21: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
762 COLOR 14, 4: LOCATE 2, 20: PRINT "MESAFE  TAYINI  VE  FAKTORLERIN BELIRLENMESI": COLOR 14, 1
765 COLOR 14, 1: LOCATE 6, 8: PRINT "MESAFE [ km ]:"
766 T = 1: Y = 6: W = 22:  GOSUB 15000
767 IF ESC = 1 THEN 610 ELSE IF B$ <> "" THEN MES = VAL(B$)
770 SON1 = MES * .314: IF SON1 > 67 THEN SON1 = SON1 ELSE SON1 = 67
771 SON2 = MES * .4448: IF SON2 > 139 THEN SON2 = SON2 ELSE SON2 = 139
772 SON3 = MES * .595: IF SON3 > 167 THEN SON3 = SON3 ELSE SON3 = 167
773 SON4 = MES * .4448: IF SON4 > 139 THEN SON4 = SON4 ELSE SON4 = 139
774 SON5 = MES * .1253: IF SON5 > 47.78 THEN SON5 = SON5 ELSE SON5 = 47.78
775 SON6 = MES * .8
776 SON7 = MES * 19
777 SON8 = MES * 14
778 SON9 = MES * 42
779 SON10 = MES * 42
783 LOCATE 8, 8: PRINT "ARAZI FAKTORU.....=      "
784 COLOR , 4: LOCATE 22, 7: PRINT "1-DUZ ARAZI 2-DALGALI ARAZI 3-DAGLIK  ARAZI 4-YOL DISI HAREKET": COLOR 14, 1
788 T = 1: Y = 8: W = 27: GOSUB 15000
789 IF ESC = 1 THEN 765 ELSE IF B$ <> "" THEN ARFAK = VAL(B$)
790 IF ARFAK = 1 THEN ARFA = 1: LOCATE 8, 27: PRINT 1
792 IF ARFAK = 2 THEN ARFA = 1.2: LOCATE 8, 27: PRINT 1.2
794 IF ARFAK = 3 THEN ARFA = 1.5: LOCATE 8, 27: PRINT 1.5
796 IF ARFAK = 4 THEN ARFA = 1.5: LOCATE 8, 27: PRINT 1.5
800 LOCATE 10, 8: PRINT "IKLIM FAKTORU.....=       "
805 COLOR , 4: LOCATE 22, 7: PRINT "  1-SICAK IKLIM      2-MUTEDIL IKLIM        3-SOGUK IKLIM      ": COLOR 14, 1
810 T = 1: Y = 10: W = 27: GOSUB 15000
812 IF ESC = 1 THEN 783 ELSE IF B$ <> "" THEN IKFAK = VAL(B$)
815 IF IKFAK = 1 THEN IKFA = .9: LOCATE 10, 27:  PRINT IKFA
817 IF IKFAK = 2 THEN IKFA = 1: LOCATE 10, 27:   PRINT IKFA
819 IF IKFAK = 3 THEN IKFA = 1.3: LOCATE 10, 27: PRINT IKFA
820 LOCATE 12, 8: PRINT "MUHAREBE FAKTORU..=        "
825 COLOR , 4: LOCATE 22, 7: PRINT "1-TAARRUZ 2-OYALAMA-GERI CEKILME  3-SAVUNMA  4-TAKTIK DISI HAREKET": COLOR 14, 1
830 T = 1: Y = 12: W = 27: GOSUB 15000
832 IF ESC = 1 THEN 800 ELSE IF B$ <> "" THEN MUFAK = VAL(B$)
835 IF MUFAK = 1 THEN MUFA = 2.5: LOCATE 12, 27: PRINT MUFA
837 IF MUFAK = 2 THEN MUFA = 2:   LOCATE 12, 27: PRINT MUFA
839 IF MUFAK = 3 THEN MUFA = 1.5: LOCATE 12, 27: PRINT MUFA
841 IF MUFAK = 4 THEN MUFA = 1:   LOCATE 12, 27: PRINT MUFA
843 COLOR , 4: LOCATE 22, 7: PRINT "                         ESC = LOJISTIK                            ": COLOR 14, 1
845 LOCATE 14, 8: PRINT "IKMAL MESAFESI....=      "
850 T = 1: Y = 14: W = 27: GOSUB 15000
851 IF ESC = 1 THEN 820 ELSE IF B$ <> "" THEN IKME = VAL(B$)
'852 LOCATE 16, 8: PRINT "ISITICI SAYISI....="
'853 T = 1: Y = 16: W = 27: GOSUB 15000:
    'IF ESC = 1 THEN 845 ELSE IF B$ <> "" THEN ISSA = VAL(B$)
'854 LOCATE 18, 8: INPUT "MUTFAK  SAYISI....=",MUSA
856 ARAC1 = A * SON1 * ARFA * IKFA * MUFA
858 ARAC2 = B * SON2 * ARFA * IKFA * MUFA
860 ARAC3 = C * SON3 * ARFA * IKFA * MUFA
862 ARAC4 = D * SON4 * ARFA * IKFA * MUFA
864 ARAC5 = E * SON5 * ARFA * IKFA * MUFA
'866 ARAC6 = F * SON6 * ARFA * IKFA * MUFA
'868 ARAC7 = G * SON7 * ARFA * IKFA * MUFA
'870 ARAC8 = H * SON8 * ARFA * IKFA * MUFA
'872 ARAC9 = L * SON9 * ARFA * IKFA * MUFA
'874 ARAC10 = K * SON10 * ARFA * IKFA * MUFA
880 HMA = ARAC1 + ARAC2 + ARAC3 + ARAC4 + ARAC5 + ARAC6 + ARAC7 + ARAC8 + ARAC9 + ARAC10
885 IKMS = (HMA / MES) * .1 * IKME
890 HIA = (HMA / MES) * 16
892 ISSA = L * 42: MUSA = K * 42
895 IDIS = ISSA + MUSA
900 KOM = F * 24 * 19 * .84
905 JEN = G * 24 * 14 * .84
910 DOZ = H * 24 * 23 * .84
915 TIM = KOM + JEN
920 TOPLAM = (HMA + IKMS + HIA + IDIS + TIM)
925 FIRE = TOPLAM * .1
930 GBT = TOPLAM + FIRE
935 YAG = (GBT + DOZ) * .04
940 MTY = YAG * .6
945 DSY = YAG * .3
950 GRY = YAG * .1
970 I$ = INKEY$: IF I$ = "" THEN 970
980 IF I$ = CHR$(27) THEN 610 ELSE 970
1000 CLS : X = 1: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
1010 X = 4: Y = 5: YL = 68: XL = 15: CL = 1: RS = 0: GOSUB 11080
1020 X = 21: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080: COLOR 14, 1
1022 COLOR 14, 4: LOCATE 2, 20: PRINT "KIT'A YUKU AKARYAKIT VE ERZAK  HESAPLAMASI"
1023 COLOR 14, 4: LOCATE 22, 30: PRINT "ESC = DEVAM": COLOR 14, 1
1025 COLOR 4: LOCATE 5, 8: PRINT "SONUCLAR": COLOR 14, 1
1030 COLOR 15, 1: LOCATE 6, 8: PRINT "ARAC YUK   3/4 TON.............="; ARAC1
1035 LOCATE 7, 8: PRINT "ARAC YUK 2 1/2 TON.............="; ARAC2
1040 LOCATE 8, 8: PRINT "ARAC TRAKTOR 5 TON (M-52)......="; ARAC3
1045 LOCATE 9, 8: PRINT "ARAC DAMPERLI 2 1/2 TON........="; ARAC4
1050 LOCATE 10, 8: PRINT "ARAC GENEL MAKSAT 1/4 TON......="; ARAC5
1055 LOCATE 11, 8: PRINT "TRAKTOR PALETLI DIESEL.........="; DOZ
1060 LOCATE 12, 8: PRINT "KOMPRESOR 210 CFM CEKILI.......="; KOM
1065 LOCATE 13, 8: PRINT "JENARATOR BENZINLI 1.5 KW......="; JEN
1070 LOCATE 14, 8: PRINT "SEYYAR MUTFAK  B PAKETI........="; MUSA
1072 LOCATE 15, 8: PRINT "ISITICI........................="; ISSA
1075 LOCATE 16, 8: PRINT "HAREKAT MESAFESI AKARYAKITI....="; HMA: LOCATE 16, 55: PRINT "Kg."
1080 LOCATE 17, 8: PRINT "IKMAL MESAFESI ICIN AKARYAKIT..="; IKMS: LOCATE 17, 55: PRINT "Kg."
1085 LOCATE 18, 8: PRINT "HIZMETLER ICIN AKARYAKIT.......="; HIA: LOCATE 18, 55: PRINT "Kg."
1090 LOCATE 19, 8: PRINT "IDARI ISLER ICIN AKARYAKIT.....="; IDIS: LOCATE 19, 55: PRINT "Kg."
1100 I$ = INKEY$: IF I$ = "" THEN 1100
1110 IF I$ = CHR$(27) THEN 1120 ELSE 1100
1120 CLS : X = 1: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080
1130 X = 4: Y = 5: YL = 68: XL = 15: CL = 1: RS = 0: GOSUB 11080
1140 X = 21: Y = 5: YL = 68: XL = 1: CL = 4: RS = 0: GOSUB 11080: COLOR 14, 1
1142 COLOR 14, 4: LOCATE 2, 20: PRINT "KIT'A YUKU AKARYAKIT VE ERZAK  HESAPLAMASI"
1143 COLOR 14, 4: LOCATE 22, 30: PRINT "ESC= LOJISTIK": COLOR 14, 1
1150 COLOR 3: LOCATE 6, 8: PRINT "ISMAKINALARI ICIN AKARYAKIT..": COLOR 15, 1
1160 LOCATE 7, 8: PRINT "KOMPRESOR..............="; KOM: LOCATE 7, 42: PRINT "Kg."
1170 LOCATE 8, 8: PRINT "JENERATOR..............="; JEN: LOCATE 8, 42: PRINT "Kg."
1180 LOCATE 9, 8: PRINT "DOZER..................="; DOZ: LOCATE 9, 42: PRINT "Kg."
1190 LOCATE 10, 8: PRINT "BENZIN GENEL TOPLAMI...="; TOPLAM: LOCATE 10, 42: PRINT "Kg."
1200 LOCATE 11, 8: PRINT "FIRE...................="; FIRE: LOCATE 11, 42: PRINT "Kg."
1201 LOCATE 12, 8: PRINT "GENEL BENZIN TOPLAMI...="; FIRE + TOPLAM: LOCATE 12, 42: PRINT "Kg."
1202 LOCATE 13, 8: PRINT "MOTORIN  TOPLAMI.......="; DOZ: LOCATE 13, 42: PRINT "Kg."
1210 COLOR 3: LOCATE 14, 8: PRINT "YAGLAR": COLOR 15, 1
1220 LOCATE 15, 8: PRINT "YAG....................="; YAG: LOCATE 15, 42: PRINT "Kg."
1230 LOCATE 17, 8: PRINT "DISLI YAGI.............="; DSY: LOCATE 17, 42: PRINT "Kg."
1240 LOCATE 16, 8: PRINT "MOTOR YAGI.............="; MTY: LOCATE 16, 42: PRINT "Kg."
1250 LOCATE 18, 8: PRINT "GRES  YAGI.............="; GRY: LOCATE 18, 42: PRINT "Kg."
1270 I$ = INKEY$: IF I$ = "" THEN 1270
1280 IF I$ = CHR$(27) THEN 610 ELSE 1270

TABLO4: CLS : COLOR 10
      PRINT ""
      PRINT ""
      PRINT ""
      PRINT ""
      PRINT "ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป "
      PRINT "บ  Ara cinslerine g”re bir km. deki akaryakt tketm ve depo kapasiteler   บ "
      PRINT "บ                                                                             บ "
      PRINT "ฬอออออออออหอออออออออออออออออออออออออออออออหอออออออออออหอออออออออออหอออออออออออน "
      PRINT "บ         บ                               บ Km.Bana บ Depo      บ Sias(km.)บ "
      PRINT "บ         บ                               บ Tketim   บ Kapasitesiบ           บ "
      PRINT "บ         บ                               บ           บ           บ           บ "
      PRINT "ฬอออออออออฮอออออออออออออออออออออออออออออออฮอออออออออออฮอออออออออออฮอออออออออออน "
      PRINT "บ    1    บ Ara Yk 3/4 Ton Dodge        บ 0.3140    บ    67     บ    362    บ "
      PRINT "ฬอออออออออฮอออออออออออออออออออออออออออออออฮอออออออออออฮอออออออออออฮอออออออออออน "
      PRINT "บ    2    บ Ara Yk 2 1/2 Ton Reo        บ 0.4448    บ   139     บ    482    บ "
      PRINT "ฬอออออออออฮอออออออออออออออออออออออออออออออฮอออออออออออฮอออออออออออฮอออออออออออน "
      PRINT "บ    3    บ Ara Trakt”r 5 Ton €ekici     บ 0.5950    บ   167     บ    451    บ "
      PRINT "ฬอออออออออฮอออออออออออออออออออออออออออออออฮอออออออออออฮอออออออออออฮอออออออออออน "
      PRINT "บ    4    บ Ara Damperli 2 1/2 Ton       บ 0.4448    บ   139     บ    482    บ "
      PRINT "ฬอออออออออฮอออออออออออออออออออออออออออออออฮอออออออออออฮอออออออออออฮอออออออออออน "
      PRINT "บ    5    บ Ara Genel Maksat 1/2 Ton jeepบ 0.1253    บ   47.780  บ    334    บ "
      PRINT "ศอออออออออสอออออออออออออออออออออออออออออออสอออออออออออสอออออออออออสอออออออออออผ "
COLOR 12: LOCATE 6, 3: PRINT "ARAC CINSLERINE GORE BIR KM. DEKI AKARYAKIT TUKETIMI VE DEPO KAPASITELERI": COLOR 14, 1
COLOR 6:  LOCATE 10, 3: PRINT "SIRA NO"
	  LOCATE 10, 18: PRINT "ARAC CINSLERI": COLOR 14, 1
COLOR 4:  LOCATE 13, 6: PRINT "1"
	  LOCATE 15, 6: PRINT "2"
	  LOCATE 17, 6: PRINT "3"
	  LOCATE 19, 6: PRINT "4"
	  LOCATE 21, 6: PRINT "5": COLOR 14, 1

      WHILE INKEY$ = "": WEND
      RETURN


TABLO5: CLS : COLOR 10
      PRINT SPACE$(8); "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
      PRINT SPACE$(8); "บ              Makinalarnn Saatteki Tketimi               บ"
      PRINT SPACE$(8); "ฬอออออออออหอออออออออออออออออออออออออออออหออออออออออออออออออออออน"
      PRINT SPACE$(8); "บ         บ                             บ    Saatteki  Tketimiบ"
      PRINT SPACE$(8); "บ         บ                             ฬออออออออออหอออออออออออน"
      PRINT SPACE$(8); "บ SIRA NO บ      Makinas cinsi       บ  Benzin  บ  Motorin  บ"
      PRINT SPACE$(8); "ฬอออออออออฮอออออออออออออออออออออออออออออฮออออออออออฮอออออออออออน"
      PRINT SPACE$(8); "บ   1     บ Trakt”r Paletli VD-7 Dizel  บ   0.8    บ   23      บ"
      PRINT SPACE$(8); "ฬอออออออออฮอออออออออออออออออออออออออออออฮออออออออออฮอออออออออออน"
      PRINT SPACE$(8); "บ   2     บ Kompres”r 210 CFM €ekili    บ   19     บ           บ"
      PRINT SPACE$(8); "ฬอออออออออฮอออออออออออออออออออออออออออออฮออออออออออฮอออออออออออน"
      PRINT SPACE$(8); "บ   3     บ Jenat”r  Benzinli 5 Km.     บ   14     บ           บ"
      PRINT SPACE$(8); "ศอออออออออสอออออออออออออออออออออออออออออสออออออออออสอออออออออออผ"
      PRINT ""
      PRINT ""
      PRINT SPACE$(14); "ษอออออออออออออออออออออออออออออออออออออออออออออออออป"
      PRINT SPACE$(14); "บ    Levazm Techizat iin toplama kta yk     บ"
      PRINT SPACE$(14); "ฬอออออออออหออออออออออออออออออออออออหออออออออออออออน"
      PRINT SPACE$(14); "บ SIRA NO บ    Levazm Techizat   บ Miktar (kg.)บ"
      PRINT SPACE$(14); "ฬอออออออออฮออออออออออออออออออออออออฮออออออออออออออน"
      PRINT SPACE$(14); "บ    1    บ Seyyar Mutfak B  paketiบ     42       บ"
      PRINT SPACE$(14); "ฬอออออออออฮออออออออออออออออออออออออฮออออออออออออออน"
      PRINT SPACE$(14); "บ    2    บ Istc                บ     42       บ"
      PRINT SPACE$(14); "ศอออออออออสออออออออออออออออออออออออสออออออออออออออผ";
      WHILE INKEY$ = "": WEND
      RETURN
TABLO6: CLS : COLOR 10:
      PRINT ""
      PRINT ""
      PRINT ""
      PRINT ""
      PRINT ""
      PRINT SPACE$(8); "ษอออออออหออออออออออออออออออออออออออออออออหออออออออออออออป "
      PRINT SPACE$(8); "บSIRA NOบ      SILAH CINSLERI            บMIKTARI (ADET)บ"
      PRINT SPACE$(8); "ฬอออออออฮออออออออออออออออออออออออออออออออฮออออออออออออออน"
      PRINT SPACE$(8); "บ   1   บ TABANCA                        บ              บ"
      PRINT SPACE$(8); "ฬอออออออฮออออออออออออออออออออออออออออออออฮออออออออออออออน"
      PRINT SPACE$(8); "บ   2   บ MAKINALI  TABANCA              บ              บ"
      PRINT SPACE$(8); "ฬอออออออฮออออออออออออออออออออออออออออออออฮออออออออออออออน"
      PRINT SPACE$(8); "บ   3   บ PIYADE    TUFEGI               บ              บ"
      PRINT SPACE$(8); "ฬอออออออฮออออออออออออออออออออออออออออออออฮออออออออออออออน "
      PRINT SPACE$(8); "บ   4   บ MAKINALI  TUFEK                บ              บ "
      PRINT SPACE$(8); "ฬอออออออฮออออออออออออออออออออออออออออออออฮออออออออออออออน "
      PRINT SPACE$(8); "บ   5   บ UCSV.MAKINALI TUFEK            บ              บ "
      PRINT SPACE$(8); "ฬอออออออฮออออออออออออออออออออออออออออออออฮออออออออออออออน "
      PRINT SPACE$(8); "บ   6   บ ROKETATAR                      บ              บ "
      PRINT SPACE$(8); "ศอออออออสออออออออออออออออออออออออออออออออสออออออออออออออผ "
COLOR 4:      LOCATE 7, 10: PRINT "SIRA NO"
	      LOCATE 7, 24: PRINT "SLAH CNSLER"
	      LOCATE 7, 51: PRINT "MKTARI (ADET)"
COLOR 3:     LOCATE 9, 13: PRINT "1"
	      LOCATE 11, 13: PRINT "2"
	      LOCATE 13, 13: PRINT "3"
	      LOCATE 15, 13: PRINT "4"
	      LOCATE 17, 13: PRINT "5"
	      LOCATE 19, 13: PRINT "6"
1300  COLOR 14:
      LOCATE 9, 55: INPUT "", TABA
1305  LOCATE 11, 55: INPUT "", MATA
1310  LOCATE 13, 55: INPUT "", PITU
1315  LOCATE 15, 55: INPUT "", MAKTAB
1320  LOCATE 17, 55: INPUT "", UCSA
1325  LOCATE 19, 55: INPUT "", ROK
1330  SYTB = TABA * 14
1335  SYMT = MATA * 96: MTBK = MATA * 48
1340  SYPT = PITU * 100: PTBK = PITU * 80: PTTK = PITU * 40
1345  SYMAT = MAKTAB * 1000: MKTBK = MAKTAB * 500
1350  SYUV = UCSA * 400: TBUV = UCSA * 350
1355  SYR = ROK * 6: BKR = ROK * 6
1356  GOTO TABLO7
      PRINT "ษอออออออหอออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออออออออออออป"
      PRINT "บSIRA NOบ   SILAH CINSLERI    บ  KIT'A CEPHANE YUKUNUN TASINACAK YER UZAKLIGI  บ"
      PRINT "บ       บ                     ฬอออออออหออออออออออออออหอออออออออออหอออออออออออออน"
      PRINT "บ       บ                     บTOPLAM บER VEYA SILAH บ  BOLUK    บ   TABUR     บ"
      PRINT "บ       บ                     บ       บ   YANINDA    บKADEMESINDEบ KADEMESINDE บ"
      PRINT "ฬอออออออฮอออออออออออออออออออออฮอออออออฮออออออออออออออฮอออออออออออฮอออออออออออออน"
      PRINT "บ   1   บTABANCA              บ  14   บ     14       บ           บ             บ"
      PRINT "ฬอออออออฮอออออออออออออออออออออฮอออออออฮออออออออออออออฮอออออออออออฮอออออออออออออน"
      PRINT "บ   2   บMAKNALI TABANCA     บ 144   บ     96       บ    48     บ             บ"
      PRINT "ฬอออออออฮอออออออออออออออออออออฮอออออออฮออออออออออออออฮอออออออออออฮอออออออออออออน"
      PRINT "บ   3   บPYADE   TFEฆ      บ 220   บ    100       บ    80     บ     40      บ"
      PRINT "ฬอออออออฮอออออออออออออออออออออฮอออออออฮออออออออออออออฮอออออออออออฮอออออออออออออน"
      PRINT "บ   4   บMAKNALI TFEK       บ1500   บ   1000       บ   500     บ             บ"
      PRINT "ฬอออออออฮอออออออออออออออออออออฮอออออออฮออออออออออออออฮอออออออออออฮอออออออออออออน"
      PRINT "บ   5   บU€SV.MAKNALI TFEฆ บ 750   บ    400       บ           บ    350      บ"
      PRINT "ฬอออออออฮอออออออออออออออออออออฮอออออออฮออออออออออออออฮอออออออออออฮอออออออออออออน"
      PRINT "บ   6   บROKETATAR            บ  12   บ      6       บ     6     บ             บ"
      PRINT "ศอออออออสอออออออออออออออออออออสอออออออสออออออออออออออสอออออออออออสอออออออออออออผ"
     
TABLO7: CLS : COLOR 10
      PRINT ""
      PRINT ""
      PRINT ""
      PRINT ""
      PRINT "ษออออหออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออออป "
      PRINT "บSIRAบ    SILAHLARIN        บ           KITA   CEPHANE    YUKU                บ "
      PRINT "บ NO ฬออออออออออออออออออออออฮออออออหอออออออออออออหอออออออหอออออออหออออออออออออน "
      PRINT "บ    บ        CINSI         บMIKTARบER VEYA SILAHบ BOLUK บ TABUR บ  TOPLAM    บ "
      PRINT "บ    บ                      บ(Adet)บ   PAYI      บ PAYI  บ PAYI  บ            บ "
      PRINT "ฬออออฮออออออออออออออออออออออฮออออออฮอออออออออออออฮอออออออฮอออออออฮออออออออออออน "
      PRINT "บ  1 บTABANCA               บ      บ             บ       บ       บ            บ "
      PRINT "ฬออออฮออออออออออออออออออออออฮออออออฮอออออออออออออฮอออออออฮอออออออฮออออออออออออน "
      PRINT "บ  2 บMAKNALI TFEK        บ      บ             บ       บ       บ            บ "
      PRINT "ฬออออฮออออออออออออออออออออออฮออออออฮอออออออออออออฮอออออออฮอออออออฮออออออออออออน "
      PRINT "บ  3 บP. TFEK              บ      บ             บ       บ       บ            บ "
      PRINT "ฬออออฮออออออออออออออออออออออฮออออออฮอออออออออออออฮอออออออฮอออออออฮออออออออออออน "
      PRINT "บ  4 บMAKNALI TFEK        บ      บ             บ       บ       บ            บ "
      PRINT "ฬออออฮออออออออออออออออออออออฮออออออฮอออออออออออออฮอออออออฮอออออออฮออออออออออออน "
      PRINT "บ  5 บ12.7  mm.             บ      บ             บ       บ       บ            บ "
      PRINT "ฬออออฮออออออออออออออออออออออฮออออออฮอออออออออออออฮอออออออฮอออออออฮออออออออออออน "
      PRINT "บ  6 บROKETATAR             บ      บ             บ       บ       บ            บ "
      PRINT "ศออออสออออออออออออออออออออออสออออออสอออออออออออออสอออออออสอออออออสออออออออออออผ "
COLOR 6: LOCATE 6, 2: PRINT "SIRA"
	  LOCATE 7, 3: PRINT "NO"
	  LOCATE 6, 11: PRINT "SLAHLARIN"
	  LOCATE 8, 15: PRINT "CNS"
	  LOCATE 6, 41: PRINT "KITA   CEPHANE    YK"
	  LOCATE 8, 30: PRINT "MKTAR"
	  LOCATE 8, 37: PRINT "ER VEYA SLAH"
	  LOCATE 8, 52: PRINT "BLK"
	  LOCATE 8, 60: PRINT "TABUR"
	  LOCATE 8, 69: PRINT "TOPLAM"
	  LOCATE 9, 30: PRINT "(ADET)"
	  LOCATE 9, 40: PRINT "PAYI"
	  LOCATE 9, 52: PRINT "PAYI"
	  LOCATE 9, 60: PRINT "PAYI": COLOR 14, 1
1400  COLOR 15: LOCATE 11, 31: PRINT TABA: LOCATE 11, 40: PRINT SYTB
1402  LOCATE 13, 31: PRINT MATA: LOCATE 13, 40: PRINT SYMT: LOCATE 13, 52: PRINT MTBK: TOPL1 = SYMT + MTBK
1404  LOCATE 15, 31: PRINT PITU:
      LOCATE 15, 40: PRINT SYPT:
      LOCATE 15, 51: PRINT PTBK:
      LOCATE 15, 60: PRINT PTTK:
      TOPL2 = SYPT + PTBK + PTTK
1406  LOCATE 17, 31: PRINT MAKTAB:
      LOCATE 17, 40: PRINT SYMAT:
      LOCATE 17, 52: PRINT MKTBK:
      TOPL3 = SYMAT + MKTBK
1408  LOCATE 19, 31: PRINT UCSA:
      LOCATE 19, 40: PRINT SYUV:
      LOCATE 19, 60: PRINT TBUV:
      TOPL4 = SYUV + TBUV
1410  LOCATE 21, 31: PRINT ROK:
      LOCATE 21, 40: PRINT SYR:
      LOCATE 21, 52: PRINT BKR:
      TOPL5 = SYR + BKR
1412  COLOR 5:
	       LOCATE 11, 67: PRINT SYTB:
	       LOCATE 13, 67: PRINT TOPL1
1413           LOCATE 15, 67: PRINT TOPL2
1414           LOCATE 17, 67: PRINT TOPL3
1415           LOCATE 19, 67: PRINT TOPL4
1416           LOCATE 21, 67: PRINT TOPL5
1420 I$ = INKEY$: IF I$ = "" THEN 1420
1430 IF I$ = CHR$(27) THEN 610 ELSE 1420

