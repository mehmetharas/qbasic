DECLARE SUB KAYITSIL ()
DECLARE SUB SAHABOSALT ()
DECLARE SUB LISTE ()
DECLARE SUB KAYITOKU ()
DECLARE SUB KAYITYAP ()
DECLARE SUB SESLIUYARI (x!)
DECLARE SUB KAYITISLEMLERI ()
DECLARE SUB sabitler ()
DECLARE SUB KUTU (x!, y!, x1!, y1!, yr!, zr!, gr!)
DECLARE SUB doldur (x!, y!, x1!, y1!, renk!)
BASLA:
COLOR 7, 0
CLS
DIM SHARED S$(4), saha$(4), menu$(3), YERY(4), YERX(4), longx(4)
CALL sabitler


CALL doldur(1, 1, 23, 70, 7)
CALL KUTU(4, 9, 13, 35, 15, 0, 8)

FOR A = 1 TO 3
  COLOR 15, 0
  LOCATE 5 + A, 10: PRINT menu$(A)
NEXT A
lc = 1: lcx = 1
DO
COLOR 15, 0
LOCATE 5 + lc, 10: PRINT menu$(lc)
COLOR 14, 1
LOCATE 5 + lcx, 10: PRINT menu$(lcx)
DO: key$ = INKEY$: LOOP UNTIL key$ <> ""
IF key$ = CHR$(0) + CHR$(80) THEN
lc = lcx: lcx = lcx + 1: IF lcx > 3 THEN lcx = 1
END IF
IF key$ = CHR$(0) + CHR$(72) THEN
lc = lcx: lcx = lcx - 1: IF lcx < 1 THEN lcx = 3
END IF
IF lcx = 1 AND key$ = CHR$(13) THEN CALL KAYITISLEMLERI: GOTO BASLA
IF lcx = 2 AND key$ = CHR$(13) THEN CALL LISTE: GOTO BASLA
LOOP UNTIL key$ = CHR$(27) OR lcx = 3 AND key$ = CHR$(13)

SUB doldur (x, y, x1, y1, renk)
   COLOR renk
   FOR A = x TO x1
      LOCATE A, y: PRINT STRING$(y1 - y, "Û")
   NEXT A
END SUB

SUB KAYITISLEMLERI
   COLOR 7, 0
   CLS
   CALL KUTU(2, 2, 20, 60, 15, 0, 0)

   FOR A = 1 TO 4
     saha$(A) = STRING$(longx(A), 32)
     COLOR 15, 1
     LOCATE YERY(A), YERX(A): PRINT saha$(A)
   NEXT A
LOCATE 5, 5: PRINT "Kayit No"
LOCATE 5, 35: PRINT "ADI"
LOCATE 7, 5: PRINT "TELEFON"
LOCATE 9, 5: PRINT "ADRES   "
COLOR 1, 15: LOCATE 22, 1: PRINT STRING$(70, 219)
COLOR 15, 1: LOCATE 22, 5: PRINT "CTRL+B-->KAYIT CTRL+D->SILME CTRL+A-->OKU F1-BOSALT"
lc = 1: lcx = 1: x = 1
DO
COLOR 15, 1
LOCATE YERY(lc), YERX(lc): PRINT saha$(lc)
COLOR 15, 4
LOCATE YERY(lcx), YERX(lcx): PRINT saha$(lcx)
LOCATE YERY(lcx), YERX(lcx) + x - 1, 1, 0, 7:
DO: key$ = INKEY$: LOOP WHILE key$ = ""

IF key$ = CHR$(13) THEN
  lc = lcx: x = 1: lcx = lcx + 1: IF lcx > 4 THEN lcx = 1
END IF

IF key$ = CHR$(8) AND x > 1 THEN
 x = x - 1
 MID$(saha$(lcx), x, 1) = " "
END IF
IF key$ = CHR$(32) THEN
x = x + 1

MID$(saha$(lcx), x, 1) = " "

END IF


IF key$ >= CHR$(32) AND lcx <> 1 THEN
   MID$(saha$(lcx), x, 1) = UCASE$(key$)
   x = x + 1: IF x > longx(lcx) THEN x = longx(lcx)
END IF
IF (lcx = 1) AND (key$ >= "0" AND key$ <= "9") THEN
   MID$(saha$(lcx), x, 1) = UCASE$(key$)
   x = x + 1: IF x > longx(lcx) THEN x = longx(lcx)
END IF
IF key$ = CHR$(2) AND VAL(saha$(1)) >= 1 THEN
  CALL KAYITYAP
END IF
IF key$ = CHR$(1) AND VAL(saha$(1)) >= 1 THEN
   CALL KAYITOKU
END IF
IF key$ = CHR$(4) AND VAL(saha$(1)) >= 1 THEN
   CALL KAYITSIL
END IF
IF key$ = CHR$(0) + CHR$(59) THEN CALL SAHABOSALT


LOOP UNTIL key$ = CHR$(27)
END SUB

SUB KAYITOKU
KNO% = VAL(saha$(1))
OPEN "111.222" FOR RANDOM AS #1 LEN = 51
FIELD #1, 1 AS F$, 10 AS S$(2), 15 AS S$(3), 25 AS S$(4)
GET #1, KNO%
IF F$ <> "*" THEN
   LOCATE 22, 5: PRINT "KAYIT BULUNAMADI"
   CALL SESLIUYARI(100)
   CLOSE #1
    CALL KAYITISLEMLERI
END IF

saha$(2) = S$(2)
saha$(3) = S$(3)
saha$(4) = S$(4)

FOR A = 2 TO 4
  COLOR 15, 1
  LOCATE YERY(A), YERX(A): PRINT saha$(A)
NEXT A
CLOSE #1
I$ = INPUT$(1)
END SUB

 SUB KAYITSIL
KNO% = VAL(saha$(1))
OPEN "111.222" FOR RANDOM AS #1 LEN = 51
FIELD #1, 1 AS F$, 10 AS S$(2), 15 AS S$(3), 25 AS S$(4)

GET #1, KNO%
IF F$ <> "*" THEN
   LOCATE 22, 5: PRINT "KAYIT BULUNAMADI..."
   CALL SESLIUYARI(80)
   CLOSE #1
   CALL KAYITISLEMLERI
END IF
FOR A = 2 TO 4
   COLOR 15, 1
   LOCATE YERY(A), YERX(A): PRINT S$(A)
NEXT A
I$ = INPUT$(1)
CALL SAHABOSALT
LSET F$ = ""
LSET S$(2) = ""
LSET S$(3) = ""
LSET S$(4) = ""
PUT #1, KNO%
CLOSE #1
   LOCATE 21, 5: PRINT "KAYIT SILINDI..."
   CALL SESLIUYARI(80)
   COLOR 0, 0: LOCATE 21, 5: PRINT "                      "
END SUB

SUB KAYITYAP
KNO% = VAL(saha$(1))
OPEN "111.222" FOR RANDOM AS #1 LEN = 51
FIELD #1, 1 AS F$, 10 AS S$(2), 15 AS S$(3), 25 AS S$(4)

  LSET F$ = "*"
  LSET S$(2) = saha$(2)
  LSET S$(3) = saha$(3)
  LSET S$(4) = saha$(4)

PUT #1, KNO%
CLOSE #1
CALL SESLIUYARI(50)
END SUB

SUB KUTU (x, y, x1, y1, yr, zr, gr)
COLOR yr, zr
   LOCATE x, y: PRINT "É"; STRING$(y1 - y - 1, "Í"); "»"
   LOCATE x1, y: PRINT "È"; STRING$(y1 - y - 1, "Í"); "¼"
   FOR A = x + 1 TO x1 - 1
     LOCATE A, y: PRINT "º"; SPC(y1 - y - 1); "º"
   NEXT A
COLOR gr
LOCATE x1 + 1, y + 1: PRINT STRING$(y1 - y + 1, "Û")
FOR A = x + 1 TO x1 + 1
    LOCATE A, y1 + 1: PRINT "Û"
NEXT A
END SUB

SUB LISTE
CALL KUTU(2, 35, 22, 70, 15, 0, 0)

OPEN "111.222" FOR RANDOM AS #1 LEN = 51
FIELD #1, 1 AS F$, 10 AS S$(2), 15 AS S$(3), 25 AS S$(4)

I = 0
KNO% = 0
1
KNO% = KNO% + 1

IF EOF(1) THEN GOTO KAPAT
GET #1, KNO%
IF F$ = "*" THEN
  I = I + 1
  COLOR 15, 1
  LOCATE 3 + I, 36: PRINT S$(2), S$(3)
END IF
GOTO 1
KAPAT:
CLOSE #1
I$ = INPUT$(1)
END SUB

SUB sabitler
 
  menu$(1) = "Kayit Islemleri "
  menu$(2) = "Detay Liste     "
  menu$(3) = "Cikis           "

  YERY(1) = 5: YERX(1) = 20: longx(1) = 5
  YERY(2) = 5: YERX(2) = 40: longx(2) = 10
  YERY(3) = 7: YERX(3) = 20: longx(3) = 15
  YERY(4) = 9: YERX(4) = 20: longx(4) = 25

END SUB

SUB SAHABOSALT
   FOR A = 1 TO 4
      saha$(A) = STRING$(longx(A), 32)
      COLOR 15, 1
      LOCATE YERY(A), YERX(A): PRINT saha$(A)
   NEXT A
END SUB

SUB SESLIUYARI (x)
  FOR A = 1 TO x
    SOUND A * 50, .3
  NEXT A
END SUB

