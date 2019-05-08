
CLS : COLOR 15, 14
GOTO zz

A$ = "1980"

 A = 0:

DO
SIFRE$ = "": A = A + 1
2 LOCATE 12, 20: COLOR 14, 1: PRINT "ž˜FREY˜ G˜R˜N  ="; A$
COLOR 15, 9: LOCATE 12, 36: PRINT "             ": COLOR 14, 1
  LOCATE 12, 36:

  FOR C = 1 TO 30
  COLOR C + 1, 9
  FOR K = 1 TO 1000: NEXT K
  NEXT C
  
DO

3 TUS$ = INKEY$: IF TUS$ = "" THEN GOTO 3
    IF TUS$ <> CHR$(13) THEN SIFRE$ = SIFRE$ + TUS$: PRINT "*";
LOOP UNTIL TUS$ = CHR$(13)

IF SIFRE$ = A$ THEN : CLS : LOCATE 11, 25: PRINT "ž˜REY˜ BULDUNUZ ": GOTO 5
LOCATE 18, 18: PRINT "YANLIž ž˜FRE G˜RD˜N˜Z = ", SIFRE$

LOOP UNTIL A = 3

DO
BEEP
LOOP UNTIL 1 = 0
zz:
5 LOCATE 15, 15: INPUT "PRO¦RAMA G˜RMEK ˜€˜N ENTER TUžUNA BASINIZ ", enter$: GOTO 10

'**********************************************************************************************
'******************************* ANA MENU *********************************************************
'**********************************************************************************************

10 CLS
COLOR 10, 12
LOCATE 10, 25: PRINT "É"
LOCATE 10, 45: PRINT "»"
LOCATE 15, 25: PRINT "È"
LOCATE 15, 45: PRINT "¼"

FOR A = 26 TO 44
 LOCATE 10, A: PRINT "Í"
 LOCATE 15, A: PRINT "Í"
NEXT A

FOR B = 11 TO 14
 LOCATE B, 25: PRINT "º"
 LOCATE B, 45: PRINT "º"
NEXT B

DIM MENU$(4)
MENU$(1) = "1-MšžTER˜ ADR B˜L  "
MENU$(2) = "2-ELDE BUL šRšNLER "
MENU$(3) = "3-SATIž ˜žLEM˜     "
MENU$(4) = "4-PRO¦RAM SONU     "

FOR A = 1 TO 4
    LOCATE 10 + A, 26: PRINT MENU$(A)
NEXT A

     sat = 1: sat1 = 1
DO
COLOR 10, 12: LOCATE sat1 + 10, 26: PRINT MENU$(sat1)
COLOR 2, 9: LOCATE sat + 10, 26: PRINT MENU$(sat)
20 TUS$ = INKEY$: IF TUS$ = "" THEN GOTO 20
IF TUS$ = CHR$(0) + CHR$(80) THEN sat1 = sat: sat = sat + 1: IF sat > 4 THEN sat1 = 4: sat = 1
IF TUS$ = CHR$(0) + CHR$(72) THEN sat1 = sat: sat = sat - 1: IF sat < 1 THEN sat1 = 1: sat = 4
IF TUS$ = CHR$(13) THEN ON sat GOSUB 1000, 2000, 3000, 4000
LOOP UNTIL (TUS$ = CHR$(27)): END

'********************************************************************************************************
'*************************** MšžTER˜ ADR B˜L MENš *********************************************************
'********************************************************************************************************

1000 CLS : COLOR 10, 12

COLOR 10, 12
LOCATE 10, 35: PRINT "É"
LOCATE 10, 43: PRINT "»"
LOCATE 17, 35: PRINT "È"
LOCATE 17, 43: PRINT "¼"

FOR A = 36 TO 42
 LOCATE 10, A: PRINT "Í"
 LOCATE 17, A: PRINT "Í"
NEXT A

FOR B = 11 TO 16
 LOCATE B, 35: PRINT "º"
 LOCATE B, 43: PRINT "º"
NEXT B



DIM menu1$(6)
menu1$(1) = "1-KAYIT"
menu1$(2) = "2-ARAMA"
menu1$(3) = "3-L˜STE"
menu1$(4) = "4-DE¦˜ž"
menu1$(5) = "5-S˜LME"
menu1$(6) = "6-€IKMA"

FOR A = 1 TO 6
    LOCATE 10 + A, 36: PRINT menu1$(A)
NEXT A
     sat = 1: sat1 = 1

DO
COLOR 10, 12: LOCATE sat1 + 10, 36: PRINT menu1$(sat1)
COLOR 0, 11: LOCATE sat + 10, 36: PRINT menu1$(sat)
1002 TUS$ = INKEY$: IF TUS$ = "" THEN GOTO 1002
IF TUS$ = CHR$(0) + CHR$(80) THEN sat1 = sat: sat = sat + 1: IF sat > 6 THEN sat1 = 6: sat = 1
IF TUS$ = CHR$(0) + CHR$(72) THEN sat1 = sat: sat = sat - 1: IF sat < 1 THEN sat1 = 1: sat = 6
IF TUS$ = CHR$(13) THEN ON sat GOSUB 1050, 1250, 1450, 1650, 1850, 1950

LOOP UNTIL (TUS$ = CHR$(27)): GOTO 10

'***************************************************************************************************
'************************ MšžTER˜ B˜G˜ KAYIT *******************************************************
'***************************************************************************************************

1050 CLS
1055 OPEN "r", #1, "TNS.DAT", 165
FIELD #1, 20 AS AD$, 30 AS ADR1$, 30 AS ADR2$, 30 AS ADR3$, 20 AS ILK$, 20 AS IL$, 15 AS TEL$

1060 CLS : LOCATE 12, 17: COLOR 15, 12: INPUT " KAYIT NUMARANIZI G˜R˜N˜Z =", KNO
1261 CLS : COLOR 2, 9

     LOCATE 2, 27: PRINT "  MšžTER˜ ADRES B˜LG˜LER˜ KAYIT  "
     LOCATE 3, 3: PRINT "É"
     LOCATE 3, 78: PRINT "»"
     LOCATE 23, 3: PRINT "È"
     LOCATE 23, 78: PRINT "¼"

  FOR A = 4 TO 77
     LOCATE 3, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
'     COLOR 15, 12
'     LOCATE 6, A: PRINT "Ä"
'     LOCATE 8, A: PRINT "Ä"
'     LOCATE 12, A: PRINT "Ä"
'     LOCATE 14, A: PRINT "Ä"
'     LOCATE 16, A: PRINT "Ä"
'     LOCATE 18, A: PRINT "Ä"
  NEXT A

  FOR B = 4 TO 22

  LOCATE B, 3: PRINT "º"
  LOCATE B, 78: PRINT "º"
  NEXT B

1080 LOCATE 2, 10: PRINT "               MšžTER˜ ADRES B˜LG˜LER˜ KAYIT                        "
     LOCATE 2, 3: COLOR 2, 9: PRINT DATE$
     LOCATE 2, 71: PRINT TIME$
     COLOR 15, 9
     LOCATE 5, 5: PRINT "KAYIT NUMARASINI G˜R˜N           "
     LOCATE 7, 5: PRINT "MšžTER˜N˜N ADINI SOYADINI G˜R˜N  "
     LOCATE 9, 5: PRINT "ADRES                            "
     COLOR 15, 12
     LOCATE 10, 5: PRINT "                                 "
     LOCATE 11, 5: PRINT "                                 "
     COLOR 15, 9
     LOCATE 13, 5: PRINT "˜L€E VE K™V                      "
     LOCATE 15, 5: PRINT "˜L                               "
     LOCATE 17, 5: PRINT "TELEFONU                         "

FOR C = 4 TO 77
     COLOR 15, 12
     LOCATE 6, C: PRINT "Ä"
     LOCATE 8, C: PRINT "Ä"
     LOCATE 12, C: PRINT "Ä"
     LOCATE 14, C: PRINT "Ä"
     LOCATE 16, C: PRINT "Ä"
     LOCATE 18, C: PRINT "Ä"
NEXT C

FOR Z = 4 TO 17
     LOCATE Z, 37: PRINT "³"
NEXT Z
     
     COLOR 15, 12
     LOCATE 5, 39: INPUT "", KAY$
     LOCATE 7, 39: INPUT "", ADI$
     LOCATE 9, 39: INPUT "", ADRES1$
     LOCATE 10, 39: INPUT "", ADRES2$
     LOCATE 11, 39: INPUT "", ADRES3$
     LOCATE 13, 39: INPUT "", ILCEKOV$
     LOCATE 15, 39: INPUT "", ILI$
     LOCATE 17, 39: INPUT "", TELFON$

LSET AD$ = KAY$
LSET AD$ = ADI$
LSET ADR1$ = ADRES1$
LSET ADR2$ = ADRES2$
LSET ADR3$ = ADRES3$
LSET ILK$ = ILCEKOV$
LSET IL$ = ILI$
LSET TEL$ = TELFON$

PUT #1, KNO

LOCATE 21, 17: COLOR 15, 8: INPUT "DEVAM ETMEK ˜ST˜YORMUSUNUZ (E/H) =", DEV$
IF (DEV$ = "E") OR (DEV$ = "e") THEN GOTO 1060

CLOSE #1

1099 CLS : GOTO 1000


'**********************************************************************************************
'********************* MšžTER˜ B˜LG˜LER˜N˜ ARAMA **********************************************
'**********************************************************************************************

1250 CLS
1255 OPEN "r", #1, "TNS.DAT", 165
FIELD #1, 20 AS AD$, 30 AS ADR1$, 30 AS ADR2$, 30 AS ADR3$, 20 AS ILK$, 20 AS IL$, 15 AS TEL$

1260 CLS : LOCATE 12, 17: COLOR 15, 12: INPUT " ARANACAK KAYIT NUMARASI =", AKNO

KNO = 0
CLS : COLOR 2, 9
DO
KNO = KNO + 1
GET #1, KNO
IF KNO = AKNO THEN

     LOCATE 2, 10: PRINT "               MšžTER˜ ADRES B˜LG˜LER˜ ARAMA                        "
     LOCATE 3, 3: PRINT "É"
     LOCATE 3, 78: PRINT "»"
     LOCATE 23, 3: PRINT "È"
     LOCATE 23, 78: PRINT "¼"

  FOR A = 4 TO 77
     LOCATE 3, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
  NEXT A

  FOR B = 4 TO 22
  LOCATE B, 3: PRINT "º"
  LOCATE B, 78: PRINT "º"
  NEXT B

     LOCATE 5, 5: PRINT "ARANILACAK KAYIT B˜LG˜LER˜       "
     LOCATE 2, 3: PRINT DATE$
     LOCATE 2, 71: PRINT TIME$
     COLOR 15, 12
     LOCATE 7, 5: PRINT "MšžTER˜N˜N ADINI SOYADINI G˜R˜N  "; AD$
     LOCATE 9, 5: PRINT "ADRES                            "; ADR1$
     LOCATE 10, 5: PRINT "                                 "; ADR2$
     LOCATE 11, 5: PRINT "                                 "; ADR3$
     LOCATE 13, 5: PRINT "˜L€E VE K™V                      "; ILK$
     LOCATE 15, 5: PRINT "˜L                               "; IL$
     LOCATE 17, 5: PRINT "TELEFONU                         "; TEL$




FOR C = 4 TO 77
     COLOR 15, 12
     LOCATE 6, C: PRINT "Ä"
     LOCATE 8, C: PRINT "Ä"
     LOCATE 12, C: PRINT "Ä"
     LOCATE 14, C: PRINT "Ä"
     LOCATE 16, C: PRINT "Ä"
     LOCATE 18, C: PRINT "Ä"
NEXT C

  FOR Z = 4 TO 17
  LOCATE Z, 37: PRINT "³"
  NEXT Z

END IF

LOOP UNTIL EOF(1)

CLOSE #1

LOCATE 20, 21: COLOR 15, 0: INPUT "DEVAM ETMEK ˜ST˜YOR MUSUNUZ [E/H] =", DEV$
IF (DEV$ = "E") OR (DEV$ = "e") THEN GOTO 1250

1290 CLS : GOTO 1000


'**********************************************************************************************
'********************* MšžTER˜ B˜LG˜LER˜N˜ L˜STELEME ******************************************
'**********************************************************************************************



1450 CLS : COLOR 15, 12
1455 OPEN "r", #1, "TNS.DAT", 165
FIELD #1, 20 AS AD$, 30 AS ADR1$, 30 AS ADR2$, 30 AS ADR3$, 20 AS ILK$, 20 AS IL$, 15 AS TEL$

1458 CLS : COLOR 15, 9

LKNO = 0
DO
AAA:
LKNO = LKNO + 1
GET #1, LKNO
     
1490 LOCATE 2, 10: PRINT "               MšžTER˜ ADRES B˜LG˜LER˜ L˜STELEME                    "
     LOCATE 3, 3: PRINT "É"
     LOCATE 3, 78: PRINT "»"
     LOCATE 23, 3: PRINT "È"
     LOCATE 23, 78: PRINT "¼"

  FOR A = 4 TO 77
     LOCATE 3, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
  NEXT A

  FOR B = 4 TO 22
  LOCATE B, 3: PRINT "º"
  LOCATE B, 78: PRINT "º"
  NEXT B


     LOCATE 2, 3: COLOR 2, 9: PRINT DATE$
     LOCATE 2, 71: PRINT TIME$
     COLOR 15, 9
     LOCATE 5, 5: PRINT "KAYIT NUMARASINI G˜R˜N           "
     LOCATE 7, 5: PRINT "MšžTER˜N˜N ADINI SOYADINI G˜R˜N  "
     LOCATE 9, 5: PRINT "ADRES                            "
     COLOR 15, 12
     LOCATE 10, 5: PRINT "                                 "
     LOCATE 11, 5: PRINT "                                 "
     COLOR 15, 9
     LOCATE 13, 5: PRINT "˜L€E VE K™V                      "
     LOCATE 15, 5: PRINT "˜L                               "
     LOCATE 17, 5: PRINT "TELEFONU                         "
     
FOR C = 4 TO 77
     COLOR 15, 12
     LOCATE 6, C: PRINT "Ä"
     LOCATE 8, C: PRINT "Ä"
     LOCATE 12, C: PRINT "Ä"
     LOCATE 14, C: PRINT "Ä"
     LOCATE 16, C: PRINT "Ä"
     LOCATE 18, C: PRINT "Ä"
NEXT C

FOR Z = 4 TO 17
     LOCATE Z, 37: PRINT "³"
NEXT Z

     COLOR 15, 12
     LOCATE 5, 39: PRINT ""; KAY$
     LOCATE 7, 39: PRINT ""; AD$
     LOCATE 9, 39: PRINT ""; ADR1$
     LOCATE 10, 39: PRINT ""; ADR2$
     LOCATE 11, 39: PRINT ""; ADR3$
     LOCATE 13, 39: PRINT ""; ILK$
     LOCATE 15, 39: PRINT ""; IL$
     LOCATE 17, 39: PRINT ""; TEL$

LOCATE 20, 20: COLOR 15, 9: INPUT "DEVAM ETMEK ISTIYORMUSUNUZ (E/H) =", DEV$
IF (DEV$ = "E") OR (DEV$ = "e") THEN GOTO AAA ELSE GOTO 1520

LOOP UNTIL EOF(1)

1520 CLOSE #1

GOTO 1000


'**********************************************************************************************
'********************* MšžTER˜ B˜LG˜LER˜N˜ DE¦˜žT˜RME *****************************************
'**********************************************************************************************

1650
1655 OPEN "r", #1, "TNS.DAT", 165
FIELD #1, 20 AS AD$, 30 AS ADR1$, 30 AS ADR2$, 30 AS ADR2$, 20 AS ILK$, 20 AS IL$, 15 AS TEL$

1658 COLOR 15, 14
1660 CLS : LOCATE 12, 15: COLOR 15, 12: INPUT " DE¦˜žT˜R˜LECEK KAYIT NUMARASINI G˜R˜N˜Z = ", AKNO

KNO = 0
1665 CLS
DO
KNO = KNO + 1
GET #1, KNO
IF KNO = AKNO THEN
1670 COLOR 2, 9

     LOCATE 2, 10: PRINT "               MšžTER˜ ADRES B˜LG˜LER˜ DE¦˜žT˜RME                   "
     LOCATE 3, 3: PRINT "É"
     LOCATE 3, 78: PRINT "»"
     LOCATE 23, 3: PRINT "È"
     LOCATE 23, 78: PRINT "¼"

  FOR A = 4 TO 77
     LOCATE 3, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
  NEXT A

  FOR B = 4 TO 22
  LOCATE B, 3: PRINT "º"
  LOCATE B, 78: PRINT "º"
  NEXT B

     LOCATE 5, 5: PRINT "DE¦˜žT˜R˜LECEK B˜LG˜LER       "
     LOCATE 2, 3: PRINT DATE$
     LOCATE 2, 71: PRINT TIME$
     COLOR 15, 12
     LOCATE 7, 5: PRINT "MšžTER˜N˜N ADINI SOYADINI G˜R˜N  "; AD$
     LOCATE 9, 5: PRINT "ADRES                            "; ADR1$
     LOCATE 10, 5: PRINT "                                 "; ADR2$
     LOCATE 11, 5: PRINT "                                 "; ADR3$
     LOCATE 13, 5: PRINT "˜L€E VE K™V                      "; ILK$
     LOCATE 15, 5: PRINT "˜L                               "; IL$
     LOCATE 17, 5: PRINT "TELEFONU                         "; TEL$

FOR C = 4 TO 77
     COLOR 15, 12
     LOCATE 6, C: PRINT "Ä"
     LOCATE 8, C: PRINT "Ä"
     LOCATE 12, C: PRINT "Ä"
     LOCATE 14, C: PRINT "Ä"
     LOCATE 16, C: PRINT "Ä"
     LOCATE 18, C: PRINT "Ä"
NEXT C

  FOR Z = 4 TO 17
  LOCATE Z, 37: PRINT "³"
  NEXT Z


     COLOR 15, 12
     LOCATE 7, 38: INPUT "", ADI$
     LOCATE 9, 38: INPUT "", ADRES1$
     LOCATE 10, 38: INPUT "", ADRES2$
     LOCATE 11, 38: INPUT "", ADRES3$
     LOCATE 13, 38: INPUT "", ILCEKOV$
     LOCATE 15, 38: INPUT "", ILI$
     LOCATE 17, 38: INPUT "", TELFON$

LSET AD$ = KAY$
LSET AD$ = ADI$
LSET ADR1$ = ADRES1$
LSET ADR2$ = ADRES2$
LSET ADR3$ = ADRES3$
LSET ILK$ = ILCEKOV$
LSET IL$ = ILI$
LSET TEL$ = TELFON$

PUT #1, KNO

END IF

LOOP UNTIL EOF(1)

CLOSE #1

LOCATE 20, 21: COLOR 15, 0: INPUT "G˜R˜LEN B˜LG˜LER DO¦RUMU [E/H] =", DEV$
IF (DEV$ = "E") OR (DEV$ = "e") THEN GOTO 1680 ELSE 1670

1680
LOCATE 20, 21: COLOR 15, 0: INPUT "DEVAM ETMEK ˜ST˜YOR MUSUNUZ [E/H] =", DEV$
IF (DEV$ = "E") OR (DEV$ = "e") THEN GOTO 1660 ELSE 1690
 
1690 CLS : GOTO 1000: COLOR 15, 9

'**********************************************************************************************
'********************* MšžTER˜ B˜LG˜LER˜N˜ S˜LME **********************************************
'**********************************************************************************************

1850 COLOR 15, 14: CLS

1855 OPEN "r", #1, "TNS.DAT", 165
FIELD #1, 20 AS AD$, 30 AS ADR1$, 30 AS ADR2$, 30 AS ADR2$, 20 AS ILK$, 20 AS IL$, 15 AS TEL$

1860 OPEN "r", #2, "S˜L.DAT ", 165
FIELD #2, 20 AS SAD$, 30 AS SADR1$, 30 AS SADR2$, 30 AS SADR2$, 20 AS SILK$, 20 AS SIL$, 15 AS STEL$

1870 LOCATE 12, 21: COLOR 15, 11: INPUT "SILINECEK KAYIT NUMARASI =", SKNO

KNO = 0
DO
KNO = KNO + 1
GET #1, KNO
IF KNO <> SKNO THEN

1890 LSET AD$ = KAY$
     LSET AD$ = ADI$
     LSET ADR1$ = ADRES1$
     LSET ADR2$ = ADRES2$
     LSET ADR3$ = ADRES3$
     LSET ILK$ = ILCEKOV$
     LSET IL$ = ILI$
     LSET TEL$ = TELFON$

     PUT #2, KNO

END IF

LOOP UNTIL EOF(1)

CLOSE #1, #2

KILL "TNS.DAT"
NAME "S˜L.DAT" AS "TNS.DAT"

LOCATE 20, 20: COLOR 15, 0: INPUT "DEVAM ETMEK ˜ST˜YOR MUSUNUZ [E/H] =", DEV$
IF (DEV$ = "E") OR (DEV$ = "e") THEN GOTO 1850

CLS : COLOR 15, 14: GOTO 1000

END
'**********************************************************************************************
'********************************   €IKIž   ***************************************************
'**********************************************************************************************

1950 CLS : GOTO 10

'**********************************************************************************************
'************************ ELDE BULUNAN šRšNLER MšNšSš *****************************************
'**********************************************************************************************

2000 CLS : COLOR 10, 12

COLOR 10, 12
LOCATE 10, 35: PRINT "É"
LOCATE 10, 43: PRINT "»"
LOCATE 16, 35: PRINT "È"
LOCATE 16, 43: PRINT "¼"

FOR A = 36 TO 42
 LOCATE 10, A: PRINT "Í"
 LOCATE 16, A: PRINT "Í"
NEXT A

FOR B = 11 TO 15
 LOCATE B, 35: PRINT "º"
 LOCATE B, 43: PRINT "º"
NEXT B


DIM menu2$(5)
menu2$(1) = "1-KAYIT"
menu2$(2) = "2-LISTE"
menu2$(3) = "3-DEG˜ž"
menu2$(4) = "4-SILME"
menu2$(5) = "5-€IKMA"

FOR A = 1 TO 5
    LOCATE 10 + A, 36: PRINT menu2$(A)
NEXT A
     sat = 1: sat1 = 1

DO
COLOR 10, 12: LOCATE sat1 + 10, 36: PRINT menu2$(sat1)
COLOR 0, 2: LOCATE sat + 10, 36: PRINT menu2$(sat)
2020 TUS$ = INKEY$: IF TUS$ = "" THEN GOTO 2020
IF TUS$ = CHR$(0) + CHR$(80) THEN sat1 = sat: sat = sat + 1: IF sat > 5 THEN sat1 = 5: sat = 1
IF TUS$ = CHR$(0) + CHR$(72) THEN sat1 = sat: sat = sat - 1: IF sat < 1 THEN sat1 = 1: sat = 5
IF TUS$ = CHR$(13) THEN ON sat GOSUB 2050, 2450, 2650, 2850, 2950

LOOP UNTIL (TUS$ = CHR$(27)): GOTO 10


'*************************************************************************************
'********************* ELDE BULUNAN šRšN €Ež˜TLER˜N KAYDI ****************************
'*************************************************************************************

DO
CLS
OPEN "R", #1, "DENEME.DAT", 27
FIELD #1, 12 AS ADI$, 5 AS MIK$, 10 AS TANE$
K% = LOF(1) / 27
LOCATE 12, 12: INPUT "ADI....:", AD$
LOCATE 13, 12: INPUT "MIKTAR.:", MIKTAR
LOCATE 14, 12: INPUT "TANE...:", TANE
LSET ADI$ = AD$
LSET MIK$ = MKI$(MIKTAR)
LSET TANE$ = MKI$(TANE)
K% = K% + 1
PUT #1, K%
CLOSE #1
LOCATE 23, 12: INPUT "DEVAM ETMEK ISTIYORMUSUN...(CIKIS=Esc):", A$
IF A$ = "H" OR A$ = "h" THEN EXIT DO
LOOP

2050 CLS : COLOR 15, 12
2055 OPEN "r", #1, "TNS.DAT", 32
FIELD #1, 2 AS SRNO$, 10 AS URAD$, 4 AS MIK$, 8 AS ALF$, 8 AS SATF$
KKNO% = LOF(1) / 32
2060 COLOR 15, 12: CLS : LOCATE 12, 17: COLOR 15, 12: INPUT "KAYIT NUMARANIZI G˜GR˜N = ", KKNO%

2070 CLS : COLOR 15, 12

     LOCATE 3, 3: PRINT "É"
     LOCATE 3, 78: PRINT "»"
     LOCATE 23, 3: PRINT "È"
     LOCATE 23, 78: PRINT "¼"

  FOR A = 4 TO 77
     LOCATE 3, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
     LOCATE 7, A: PRINT "Ä"
     LOCATE 5, A: PRINT "Ä"

  NEXT A

  FOR B = 4 TO 22
  LOCATE B, 3: PRINT "º"
  LOCATE B, 78: PRINT "º"
'  LOCATE B, 14: PRINT "³"
'  LOCATE B, 29: PRINT "³"
'  LOCATE B, 39: PRINT "³"
'  LOCATE B, 56: PRINT "³"
 NEXT B
      
FOR Y = 6 TO 22
  LOCATE Y, 14: PRINT "³"
  LOCATE Y, 37: PRINT "³"
  LOCATE Y, 48: PRINT "³"
  LOCATE Y, 63: PRINT "³"
NEXT Y

2080 LOCATE 2, 3: COLOR 15, 9: PRINT "                    ELDE BULUNAN šRšN €Ež˜TLER˜NDE KAYIT                    "
     LOCATE 4, 68: PRINT DATE$
     LOCATE 4, 4: PRINT TIME$
     COLOR 15, 0
     LOCATE 6, 4: PRINT "  SIRA NO "; SRANO
     LOCATE 6, 15: PRINT "      šRšN ADI        "; URADI$
     LOCATE 6, 38: PRINT "  M˜KTARI "; MIKTAR
     LOCATE 6, 49: PRINT " ALIž F˜YATI  "; ALFIYAT
     LOCATE 6, 64: PRINT " SATIž F˜YATI "; SATFIYAT
     

     COLOR 15, 12
     FOR T = 8 TO 21 STEP 1
     
2090 COLOR 15, 12
     LOCATE T, 7: INPUT "", SRANO
     LOCATE T, 16: INPUT "", URADI$
     LOCATE T, 40: INPUT "", MIKTAR
     LOCATE T, 50: INPUT "", ALFIYAT
     LOCATE T, 65: INPUT "", SATFIYAT
     
     LOCATE 4, 12: COLOR 15, 0: PRINT "          G˜R˜LECEK BAžKA B˜LG˜ VARMI {E/H} =           ", YEN$
     LOCATE 4, 12: COLOR 25, 8: INPUT "          G˜R˜LECEK BAžKA B˜LG˜ VARMI {E/H} =  ", YEN$
     IF YEN$ = "H" OR YEN$ = "h" THEN GOTO REC
     NEXT T


LSET SRNO$ = MIK$(SRANO)
LSET URAD$ = URADI$
LSET MIK$ = MIK$(MIKTAR)
LSET ALF$ = MIK$(ALIYATF)
LSET SATF$ = MIK$(SATFIYAT)

KKNO% = KKNO% + 1

PUT #1, KKNO%

REC: CLS

CLOSE #1

2100 CLS : GOTO 2000


'*************************************************************************************
'******************** ELDE BULUNAN šRšN €Ež˜TLER˜N L˜STES˜ ****************************
'*************************************************************************************

CLS
OPEN "R", #1, "DENEME.DAT", 27
FIELD #1, 12 AS ADI$, 5 AS MIK$, 10 AS TANE$
K% = LOF(1) / 27
LOCATE T + 3, 2: PRINT "ADI                    MIKTARI             TANE"
LOCATE T + 4, 2: PRINT "---------------------------------------------------"

FOR T = 1 TO K%
GET #1, T
MIKTAR = CVI(MIK$)
TANE = CVI(TANE$)
SONUC = TANE * MIKTAR
LOCATE T + 5, 2: PRINT ADI$
LOCATE T + 5, 22: PRINT USING "###,###,###"; MIKTAR
LOCATE T + 5, 45: PRINT USING "###,###,###"; TANE
LOCATE T + 5, 55: PRINT USING "###,###,###"; SONUC
NEXT
LOCATE 1, 60: PRINT "K.S:"; K%
CLOSE #1




2450 CLS : COLOR 15, 12
2455 OPEN "r", #1, "TNS.DAT", 32
FIELD #1, 2 AS SRNO$, 10 AS URAD$, 4 AS MIK$, 8 AS ALF$, 8 AS SATF$
KKNO% = LOF(1) / 32
PRINT KKNO%

2470 CLS : COLOR 15, 12

LKKNO% = 0
DO

FOR LKKNO% = 1 TO KKNO%
BBB: COLOR 15, 12
PRINT LKKNO%
KKNO% = LKKNO% + 1
GET #1, KKNO%

     LOCATE 3, 3: PRINT "É"
     LOCATE 3, 78: PRINT "»"
     LOCATE 23, 3: PRINT "È"
     LOCATE 23, 78: PRINT "¼"

  FOR A = 4 TO 77
     LOCATE 3, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
     LOCATE 7, A: PRINT "Ä"
     LOCATE 5, A: PRINT "Ä"
  NEXT A
  FOR B = 4 TO 22
  LOCATE B, 3: PRINT "º"
  LOCATE B, 78: PRINT "º"
 NEXT B

FOR Y = 6 TO 22
  LOCATE Y, 14: PRINT "³"
  LOCATE Y, 37: PRINT "³"
  LOCATE Y, 48: PRINT "³"
  LOCATE Y, 63: PRINT "³"
NEXT Y

2480 LOCATE 2, 25: COLOR 15, 9: PRINT "  ELDE BULUNAN šRšN €Ež˜TLER˜  "
     LOCATE 4, 68: PRINT DATE$
     LOCATE 4, 4: PRINT TIME$
     COLOR 15, 0
     LOCATE 6, 4: PRINT "  SIRA NO "
     LOCATE 6, 15: PRINT "      šRšN ADI        "
     LOCATE 6, 38: PRINT "  M˜KTARI "
     LOCATE 6, 49: PRINT " ALIž F˜YATI  "
     LOCATE 6, 64: PRINT " SATIž F˜YATI "


     COLOR 15, 12
     LOCATE LKKNO% + 7, 7: PRINT ""; SRANO
     LOCATE LKKNO% + 7, 16: PRINT ""; URADI$
     LOCATE LKKNO% + 7, 40: PRINT ""; MIKTAR
     LOCATE LKKNO% + 7, 50: PRINT ""; ALFIYAT
     LOCATE LKKNO% + 7, 65: PRINT ""; SATFIYAT
     T = T + 1

     DO
     LOOP WHILE INKEY$ = ""

     LOCATE 4, 12: COLOR 15, 0: PRINT "           DEVAM ETMEK ˜ST˜YORMUSUNUZ {E/H} =           ", YEN$
     LOCATE 4, 12: INPUT "           DEVAM ETMEK ˜ST˜YORMUSUNUZ {E/H} =  ", YEN$
     IF YEN$ = "E" OR YEN$ = "e" THEN GOTO 2510 ELSE GOTO 2520: COLOR 15, 12

2510 GOTO BBB: CLS

NEXT
LOOP UNTIL EOF(1)

2520 CLOSE #1
GOTO 2000


'*************************************************************************************
'******************** ELDE BULUNAN šRšN €Ež˜TLER˜N˜ DE¦˜žT˜RME ****************************
'*************************************************************************************

2650 CLS : COLOR 15, 12
2655 OPEN "r", #1, "TNS.DAT", 32
FIELD #1, 2 AS SRNO$, 10 AS URAD$, 4 AS MIK$, 8 AS ALF$, 8 AS SATF$

2660 CLS : COLOR 15, 12

2670 CLS : LOCATE 12, 15: COLOR 15, 12: INPUT " DE¦˜žT˜R˜LECEK KAYIT NUMARASINI G˜R˜N˜Z = ", DKKNO

KKNO = 0
2675 CLS

DO
KKNO = KKNO + 1
GET #1, KKNO
IF KKNO = DKKNO THEN
2680 COLOR 15, 12
     LOCATE 3, 3: PRINT "É"
     LOCATE 3, 78: PRINT "»"
     LOCATE 23, 3: PRINT "È"
     LOCATE 23, 78: PRINT "¼"

  FOR A = 4 TO 77
     LOCATE 3, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
     LOCATE 7, A: PRINT "Ä"
     LOCATE 5, A: PRINT "Ä"
  NEXT A

  FOR B = 4 TO 22
  LOCATE B, 3: PRINT "º"
  LOCATE B, 78: PRINT "º"
'  LOCATE B, 14: PRINT "³"
'  LOCATE B, 29: PRINT "³"
'  LOCATE B, 39: PRINT "³"
'  LOCATE B, 56: PRINT "³"
 NEXT B

FOR Y = 6 TO 22
  LOCATE Y, 14: PRINT "³"
  LOCATE Y, 37: PRINT "³"
  LOCATE Y, 48: PRINT "³"
  LOCATE Y, 63: PRINT "³"
NEXT Y

     LOCATE 2, 3: COLOR 15, 9: PRINT "                  ELDE BULUNAN šRšN €Ež˜TLER˜NDE DE¦˜žT˜RME                 "
     LOCATE 4, 68: PRINT DATE$
     LOCATE 4, 4: PRINT TIME$
     COLOR 15, 0
     LOCATE 6, 4: PRINT "  SIRA NO "; SRANO
     LOCATE 6, 15: PRINT "      šRšN ADI        "; URADI$
     LOCATE 6, 38: PRINT "  M˜KTARI "; MIKTAR
     LOCATE 6, 49: PRINT " ALIž F˜YATI  "; ALFIYAT
     LOCATE 6, 64: PRINT " SATIž F˜YATI "; SATFIYAT

     COLOR 15, 12
     FOR T = 8 TO 21 STEP 1
2700 COLOR 15, 12
     LOCATE T, 7: INPUT "", SRANO
     LOCATE T, 16: INPUT "", URADI$
     LOCATE T, 40: INPUT "", MIKTAR
     LOCATE T, 50: INPUT "", ALFIYAT
     LOCATE T, 65: INPUT "", SATFIYAT

LSET SRNO$ = MKI$(SRANO): LSET URAD$ = URADI$
LSET MIK$ = MKI$(MIKTAR): LSET ALF$ = MKI$(ALFIYAT)
LSET SATF$ = MKI$(SATFIYAT)



2705 LOCATE 4, 12: COLOR 15, 0: PRINT "          G˜R˜LECEK BAžKA B˜LG˜ VARMI {E/H} =           ", YEN$
     LOCATE 4, 12: INPUT "         G˜R˜LECEK BAžKA B˜LG˜ VARMI {E/H} =  ", GIR$
     IF GIR$ = "E" OR GIR$ = "e" THEN GOTO CCC ELSE GOTO 2710: COLOR 15, 12
     
2710 LOCATE 4, 12: COLOR 15, 0: PRINT "            G˜R˜LEN B˜LG˜LER DO¦RUMU  {E/H} =           ", YEN$
     LOCATE 4, 12: INPUT "           G˜R˜LEN B˜LG˜LER DO¦RUMU  {E/H} =  ", YEN$
     IF YEN$ = "E" OR YEN$ = "e" THEN GOTO 2720 ELSE GOTO 2680: COLOR 15, 12

2720 LOCATE 4, 12: COLOR 15, 0: PRINT "           DEVAM ETMEK ˜ST˜YORMUSUNUZ {E/H} =           ", YEN$
     LOCATE 4, 12: INPUT "           DEVAM ETMEK ˜ST˜YORMUSUNUZ {E/H} =  ", YEN$
     IF YEN$ = "E" OR YEN$ = "e" THEN GOTO 2670 ELSE GOTO 2750: COLOR 15, 12

     NEXT T

CCC: GOTO 2700


PUT #1, KKNO

END IF

LOOP UNTIL EOF(1)

2750 CLOSE #1

CLS : GOTO 2000: COLOR 15, 9


'*************************************************************************************
'******************** ELDE BULUNAN šRšN €Ež˜TLER˜N˜ S˜LME ****************************
'*************************************************************************************


2850 CLS : COLOR 15, 12
2855 OPEN "r", #1, "TNS.DAT", 32
FIELD #1, 2 AS SRNO$, 10 AS URAD$, 4 AS MIK$, 8 AS ALF$, 8 AS SATF$
           
2860 CLS : COLOR 15, 12
2865 OPEN "r", #2, "S˜LD.DAT", 32
FIELD #2, 2 AS SSRNO$, 10 AS SURAD$, 4 AS SMIK$, 8 AS SALF$, 8 AS SSATF$
     LOCATE 2, 3: COLOR 15, 9: PRINT "                  ELDE BULUNAN šRšN €Ež˜TLER˜NDE S˜LME                      "
2870 LOCATE 12, 21: COLOR 15, 11: INPUT "SILINECEK KAYIT NUMARASI =", SKKNO

KKNO = 0
DO
KKNO = KKNO + 1
GET #1, KKNO
IF KKNO <> SKKNO THEN
     LOCATE 6, 4: PRINT "  SIRA NO ", SRANO
     LOCATE 6, 15: PRINT "      šRšN ADI        ", URADI$
     LOCATE 6, 38: PRINT "  M˜KTARI ", MIKTAR
     LOCATE 6, 49: PRINT " ALIž F˜YATI  ", ALFIYAT
     LOCATE 6, 64: PRINT " SATIž F˜YATI ", SATFIYAT



2880 LSET SRNO$ = MKI$(SRANO): LSET URAD$ = URADI$
     LSET MIK$ = MKI$(MIKTAR): LSET ALF$ = MKI$(ALFIYAT)
     LSET SATF$ = MKI$(SATFIYAT)


PUT #2, KKNO

END IF

LOOP UNTIL EOF(1)

CLOSE #1, #2

KILL "TNS.DAT"
NAME "S˜LD.DAT" AS "TNS.DAT"


2900 LOCATE 4, 12: COLOR 15, 0: PRINT "           DEVAM ETMEK ˜ST˜YORMUSUNUZ {E/H} =           ", YEN$
     LOCATE 4, 12: INPUT "           DEVAM ETMEK ˜ST˜YORMUSUNUZ {E/H} =  ", YEN$
     IF YEN$ = "E" OR YEN$ = "e" THEN GOTO 2850 ELSE GOTO 2000: COLOR 15, 12

     
END


'*************************************************************************************
'******************* ELDE BULUNAN šRšN €Ež˜TLER˜DEN €IKIž  ****************************
'*************************************************************************************

2950 CLS : GOTO 10

'*************************************************************************************
'************************** SATIž ˜žLEMLER˜ MENšSš **************************************
'*************************************************************************************

3000 CLS : COLOR 10, 12

COLOR 10, 12
LOCATE 10, 35: PRINT "É"
LOCATE 10, 43: PRINT "»"
LOCATE 17, 35: PRINT "È"
LOCATE 17, 43: PRINT "¼"

FOR A = 36 TO 42
 LOCATE 10, A: PRINT "Í"
 LOCATE 17, A: PRINT "Í"
NEXT A

FOR B = 11 TO 16
 LOCATE B, 35: PRINT "º"
 LOCATE B, 43: PRINT "º"
NEXT B



DIM menu3$(6)
menu3$(1) = "1-KAYIT"
menu3$(2) = "2-ARAMA"
menu3$(3) = "3-L˜STE"
menu3$(4) = "4-DE¦˜ž"
menu3$(5) = "5-S˜LME"
menu3$(6) = "6-€IKMA"

FOR A = 1 TO 6
    LOCATE 10 + A, 36: PRINT menu3$(A)
NEXT A
     sat = 1: sat1 = 1

DO
COLOR 10, 12: LOCATE sat1 + 10, 36: PRINT menu3$(sat1)
COLOR 0, 13: LOCATE sat + 10, 36: PRINT menu3$(sat)
3002 TUS$ = INKEY$: IF TUS$ = "" THEN GOTO 3002
IF TUS$ = CHR$(0) + CHR$(80) THEN sat1 = sat: sat = sat + 1: IF sat > 6 THEN sat1 = 6: sat = 1
IF TUS$ = CHR$(0) + CHR$(72) THEN sat1 = sat: sat = sat - 1: IF sat < 1 THEN sat1 = 1: sat = 6
IF TUS$ = CHR$(13) THEN ON sat GOSUB 3050, 3250, 3450, 3650, 3850, 3950

LOOP UNTIL (TUS$ = CHR$(27)): GOTO 10

'*************************************************************************************
'************************* SATIž ˜žLEMLER˜N˜N KAYDI **************************************
'*************************************************************************************

3050 CLS
3055 OPEN "r", #1, "TNS2.DAT", 165
FIELD #1, 20 AS AD$, 30 AS ADR1$, 30 AS ADR2$, 30 AS ADR3$, 20 AS ILK$, 20 AS IL$, 15 AS TEL$

3060 CLS : LOCATE 12, 17: COLOR 15, 12: INPUT " KAYIT NUMARANIZI G˜R˜N˜Z =", KNO
3061 CLS : COLOR 15, 12
     LOCATE 1, 1: PRINT "É"
     LOCATE 1, 80: PRINT "»"
     LOCATE 23, 1: PRINT "È"
     LOCATE 23, 80: PRINT "¼"

  FOR A = 2 TO 79
     LOCATE 1, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
  NEXT A

  FOR B = 2 TO 22
  LOCATE B, 1: PRINT "º"
  LOCATE B, 80: PRINT "º"
  NEXT B

FOR C = 2 TO 79
 LOCATE 6, C: PRINT "Ä"
 LOCATE 8, C: PRINT "Ä"
 LOCATE 12, C: PRINT "Ä"
 LOCATE 14, C: PRINT "Ä"
 LOCATE 16, C: PRINT "Ä"
 LOCATE 18, C: PRINT "Ä"
FOR D = 3 TO 17
 LOCATE D, 38: PRINT "³"
NEXT D
NEXT C

3080 LOCATE 2, 10: COLOR 2, 9: PRINT "               MšžTER˜ ADRES B˜LG˜LER˜ KAYIT                        "
3085 LOCATE 3, 2: COLOR 15, 12: PRINT "------------------------------------------------------------------------------"
     LOCATE 2, 3: COLOR 2, 9: PRINT DATE$
     LOCATE 2, 71: PRINT TIME$
     COLOR 15, 9
     LOCATE 5, 5: PRINT "KAYIT NUMARASINI G˜R˜N           "
     LOCATE 7, 5: PRINT "MšžTER˜N˜N ADINI SOYADINI G˜R˜N  "
     LOCATE 9, 5: PRINT "ADRES                            "
     COLOR 15, 12
     LOCATE 10, 5: PRINT "                                 "
     LOCATE 11, 5: PRINT "                                 "
     COLOR 15, 9
     LOCATE 13, 5: PRINT "˜L€E VE K™V                      "
     LOCATE 15, 5: PRINT "˜L                               "
     LOCATE 17, 5: PRINT "TELEFONU                         "



     COLOR 15, 12
     LOCATE 5, 39: INPUT "", KAY$
     LOCATE 7, 39: INPUT "", ADI$
     LOCATE 9, 39: INPUT "", ADRES1$
     LOCATE 10, 39: INPUT "", ADRES2$
     LOCATE 11, 39: INPUT "", ADRES3$
     LOCATE 13, 39: INPUT "", ILCEKOV$
     LOCATE 15, 39: INPUT "", ILI$
     LOCATE 17, 39: INPUT "", TELFON$

LSET AD$ = KAY$
LSET AD$ = ADI$
LSET ADR1$ = ADRES1$
LSET ADR2$ = ADRES2$
LSET ADR3$ = ADRES3$
LSET ILK$ = ILCEKOV$
LSET IL$ = ILI$
LSET TEL$ = TELFON$

PUT #1, KNO
LOCATE 21, 17: COLOR 15, 8: PRINT "DEVAM ETMEK ˜ST˜YORMUSUNUZ (E/H) =", DEV$
LOCATE 21, 17: COLOR 26, 8: INPUT "DEVAM ETMEK ˜ST˜YORMUSUNUZ (E/H) =", DEV$
IF (DEV$ = "E") OR (DEV$ = "e") THEN GOTO 3060 ELSE GOTO 3099
3099 LOCATE 21, 17: COLOR 15, 8: PRINT "SATIž HESABINA GE€MEK ˜ST˜YORMUSUN (E/H) =", CEV$
LOCATE 21, 17: COLOR 26, 8: INPUT "SATIž HESABINA GE€MEK ˜ST˜YORMUSUN (E/H) =", CEV$
IF (CEV$ = "E") OR (CEV$ = "e") THEN GOTO 3150

3150 CLS

3155 OPEN "r", #2, "TNS3.DAT", 71
FIELD #2, 25 AS AMC$, 4 AS AD$, 12 AS SF$, 15 AS TU$, 15 AS TOP$
3161 CLS : COLOR 15, 12

     LOCATE 1, 1: PRINT "É"
     LOCATE 1, 80: PRINT "»"
     LOCATE 23, 1: PRINT "È"
     LOCATE 23, 80: PRINT "¼"

  FOR A = 2 TO 79
     LOCATE 1, A: PRINT "Í"
     LOCATE 23, A: PRINT "Í"
  NEXT A

  FOR B = 2 TO 22
  LOCATE B, 1: PRINT "º"
  LOCATE B, 80: PRINT "º"
  NEXT B

3180 LOCATE 2, 10: COLOR 2, 9: PRINT "                   SATIž HESABI VE ˜žLEMLER                         "
3185 LOCATE 3, 2: COLOR 15, 12: PRINT "------------------------------------------------------------------------------"

     LOCATE 2, 2: COLOR 2, 9: PRINT DATE$
     LOCATE 2, 72: PRINT TIME$
     COLOR 15, 9
     LOCATE 5, 4: PRINT "  ALDI¦I MALIN C˜NS˜   "
     LOCATE 5, 30: PRINT " ADET˜ "
     LOCATE 5, 40: PRINT "   SATIž F˜YATI   "
     LOCATE 5, 60: PRINT "      TUTAR       "
     LOCATE 21, 40: PRINT "     TOPLAM      ="

LOCATE 6, 2: COLOR 15, 0: PRINT "------------------------------------------------------------------------------"
     COLOR 15, 0
     FOR A = 7 TO 19 STEP 1
3190 LOCATE A, 6: PRINT ""; AMC2$
     LOCATE A, 29: PRINT USING "###"; AD2
     LOCATE A, 36: PRINT USING "###,###,###"; SF2
     LOCATE A, 63: PRINT USING "##,###,###,###"; TU2
     LOCATE 21, 63: PRINT USING "#,###,###,###"; TOP2


     LOCATE A, 6: INPUT "", AMC2$
     LOCATE A, 28: INPUT "   ", AD2
     LOCATE A, 39: INPUT "       ", SF2
'     LOCATE A , 62: INPUT "", TU2
'     LOCATE 21, 60: INPUT "", TOP2


LSET AMC$ = AMC2$
LSET AD$ = MKI$(AD2)
LSET SF$ = MKI$(SF2)

LSET TU$ = MKI$(TU2)
LSET TOP$ = MKI$(TOP2)

AD2 = CVI(AD$)
SF2 = CVI(SF$)
TU2 = SF2 * AD2
TOP2 = TU2

LOCATE A, 62: PRINT "            "; TU2
'TU2 = CVI(TU$)
'TOP2 = CVI(TOP$)
TP2 = TOP2 + TU2
TOP2 = TP2
LOCATE 21, 60: PRINT "             "; TOP2

LOCATE 22, 19: COLOR 26, 8: INPUT "G˜R˜LECEK BAžKA B˜LG˜ VARMI (E/H) =", DEV$
IF (DEV$ = "E") OR (DEV$ = "e") THEN GOTO R ELSE GOTO 3200
3200 LOCATE 22, 19: COLOR 26, 8: PRINT "DEVAM EDDECEK M˜S˜N˜Z  (E/H) =       ", CEV$
     LOCATE 22, 19: COLOR 26, 8: INPUT "DEVAM EDDECEK M˜S˜N˜Z  (E/H) =", CEV$
     IF (CEV$ = "E") OR (CEV$ = "e") THEN GOTO 3060 ELSE GOTO 3210



NEXT A
A = A + 1
R: GOTO 3190


CLOSE #2

CLOSE #1

'CLS
'OPEN "R", #1, "DENEME.DAT", 27
'FIELD #1, 12 AS ADI$, 5 AS MIK$, 10 AS TANE$
'K% = LOF(1) / 27
'LOCATE T + 3, 2: PRINT "ADI                    MIKTARI             TANE"
'LOCATE T + 4, 2: PRINT "---------------------------------------------------"

'FOR T = 1 TO K%
'GET #1, T
'MIKTAR = CVI(MIK$)
'TANE = CVI(TANE$)
'SONUC = TANE * MIKTAR
'LOCATE T + 5, 2: PRINT ADI$
'LOCATE T + 5, 22: PRINT USING "###,###,###"; MIKTAR
'LOCATE T + 5, 45: PRINT USING "###,###,###"; TANE
'LOCATE T + 5, 55: PRINT USING "###,###,###"; SONUC
'NEXT
'LOCATE 1, 60: PRINT "K.S:"; K%
'CLOSE #1

















3210 CLS : GOTO 3000


'*************************************************************************************
'************************** SATIž ˜žLEMLER˜N˜ ARAMA **************************************
'*************************************************************************************

3250
'*************************************************************************************
'*********************** SATIž ˜žLEMLER˜N˜ L˜TELEME **************************************
'*************************************************************************************

3450
'*************************************************************************************
'********************** SATIž ˜žLEMLER˜N˜ DE¦˜žT˜RME ********************************
'*************************************************************************************

3650
'*************************************************************************************
'************************* SATIž ˜žLEMLER˜NDEN S˜LME **************************************
'*************************************************************************************

3850

'*************************************************************************************
'************************* SATIž ˜žLEMLER˜NDEN €IKIž **************************************
'********************************************************************************

3950 GOTO 10





'*************************************************************************************
'****************************** PRO¦RAM SONU *****************************************
'*************************************************************************************

4000 CLS : COLOR 15, 12

     LOCATE 7, 11: PRINT "É"
     LOCATE 7, 73: PRINT "»"
     LOCATE 16, 11: PRINT "È"
     LOCATE 16, 73: PRINT "¼"

  FOR K = 12 TO 72
     LOCATE 7, K: PRINT "Í"
     LOCATE 16, K: PRINT "Í"
  NEXT K

  FOR B = 8 TO 15
  LOCATE B, 11: PRINT "º"
  LOCATE B, 73: PRINT "º"
  NEXT B

4100 LOCATE 9, 14: COLOR 0, 2: PRINT "     BU PRO¦RAM MUHAMMED D˜YARBAKIR TARAFINDAN HAZIRLANMIžTIR    "
     LOCATE 10, 14: COLOR 15, 9: PRINT "                                                         "
     LOCATE 11, 14: COLOR 15, 2: PRINT "  BU PRO¦RAMA G˜RMEDEN ™NCE ž˜FRE SORULUR E¦ER ž˜FREY˜   "
     LOCATE 12, 14: COLOR 15, 2: PRINT " €™ZERSEN˜Z PRO¦RAMA G˜RER,BU ž˜FREDE S˜ZE š€ HAK TANIN  "
     LOCATE 13, 14: COLOR 15, 2: PRINT " MIžTIR š€šNšDE YANLIž ž˜FRE G˜RD˜¦˜N˜ZDE B˜LG˜SAYARINIZ "
     LOCATE 14, 14: COLOR 15, 2: PRINT " K˜TLEN˜R VE S˜Z˜ UYARMAK ˜€˜N SONSUZ SES €IKARIR........"













































