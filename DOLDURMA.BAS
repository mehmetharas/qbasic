DECLARE SUB SAHABOSALT ()
DECLARE SUB ARAMA ()
DECLARE SUB KAYDET ()
DECLARE SUB SABITLER ()
DECLARE SUB puldown ()
DECLARE SUB kayitislem ()
DECLARE SUB doldur (X!, yr!, zr!)
DECLARE SUB kutu (X!, y!, x1!, y1!, yr!, zr!)
basla:
CLS
CALL doldur(219, 15, 0)
CALL kutu(5, 5, 15, 40, 8, 0)
DIM SHARED menu$(3)
DIM SHARED menu2$(5)
DIM SHARED SAHA$(7), SATIR(7), SUTUN(7), UZ(7)
DIM SHARED S$(7)
CALL SABITLER
FOR b = 1 TO 3
  COLOR 15, 0: LOCATE b + 7, 15: PRINT menu$(b)
NEXT b
A = 1: a1 = 1
DO
  COLOR 15, 0: LOCATE A + 7, 15: PRINT menu$(A)
  COLOR 15, 4: LOCATE a1 + 7, 15: PRINT menu$(a1)
DO: KEY$ = INKEY$: LOOP WHILE KEY$ = ""
IF KEY$ = CHR$(0) + CHR$(80) THEN
A = a1: a1 = a1 + 1: IF a1 > 3 THEN a1 = 1
END IF
IF KEY$ = CHR$(0) + CHR$(72) THEN
A = a1: a1 = a1 - 1: IF a1 < 1 THEN a1 = 3
END IF
IF KEY$ = CHR$(13) AND a1 = 1 THEN CALL puldown: GOTO basla
LOOP UNTIL KEY$ = CHR$(27) OR KEY$ = CHR$(13) AND a1 = 3

SUB ARAMA
KNO% = VAL(SAHA$(1))
OPEN "SIRALI1.DAT" FOR INPUT AS #1
INPUT #1, SAHA$(1), SAHA$(2), SAHA$(3), SAHA$(4), SAHA$(5), SAHA$(6), SAHA$(7)
AKNO% = VAL(SAHA$(1))
CALL SABITLER
IF AKNO% = KNO% THEN
FOR A = 1 TO 7
LOCATE SATIR(A), SUTUN(A): PRINT SAHA$(A)
NEXT A
END IF
CLOSE #1


END SUB

SUB doldur (X, yr, zr)
COLOR yr, zr
FOR A = 1 TO 23
  LOCATE A, 1: PRINT STRING$(80, X)
NEXT A
END SUB

SUB KAYDET
OPEN "SIRALI1.DAT" FOR APPEND AS #1

WRITE #1, SAHA$(2), SAHA$(3), SAHA$(4), SAHA$(5), SAHA$(6), SAHA$(7)


SOUND 1000 / 2, .2
CLOSE #1
END SUB

SUB kayitislem
COLOR 15, 0: CLS
CALL doldur(219, 15, 8)
CALL kutu(2, 3, 20, 60, 8, 0)
CALL SABITLER
COLOR 15, 0
LOCATE 3, 22: PRINT "Kayit Islemleri"
LOCATE 5, 8: PRINT "Kayit No"
LOCATE 5, 26: PRINT "K.Tarihi"
LOCATE 7, 5: PRINT "Ogrenci Adi"
LOCATE 9, 5: PRINT "     Soyadi"
LOCATE 11, 5: PRINT "     Sinifi"
LOCATE 11, 33: PRINT "Ogrenci no"
LOCATE 13, 5: PRINT "  Ogretmeni"
LOCATE 23, 3: PRINT "F1 > KAYIT"
LOCATE 23, 20: PRINT "F2 > ARAMA"

FOR A = 1 TO 7
SAHA$(A) = STRING$(UZ(A), 32)
SAHA$(2) = "  /  /    "
COLOR 14, 4: LOCATE SATIR(A), SUTUN(A): PRINT SAHA$(A)
NEXT A
lc = 1: LCX = 1: X = 1
DO
COLOR 14, 4: LOCATE SATIR(lc), SUTUN(lc): PRINT SAHA$(lc)
COLOR 14, 1: LOCATE SATIR(LCX), SUTUN(LCX): PRINT SAHA$(LCX)
LOCATE SATIR(LCX), SUTUN(LCX) + X - 1, 1, 5, 5
DO: KEY$ = INKEY$: LOOP WHILE KEY$ = ""
IF KEY$ = CHR$(13) OR KEY$ = CHR$(9) THEN
lc = LCX: X = 1: LCX = LCX + 1: IF LCX > 7 THEN LCX = 1
END IF

IF KEY$ >= CHR$(32) AND LCX <> 1 AND LCX <> 2 AND LCX <> 6 THEN
  MID$(SAHA$(LCX), X, 1) = KEY$
  X = X + 1: IF X > UZ(LCX) THEN X = 1
END IF
IF (LCX = 1 OR LCX = 2 OR LCX = 6) AND (KEY$ >= "0" AND KEY$ <= "9") OR KEY$ = CHR$(32) THEN
  MID$(SAHA$(LCX), X, 1) = KEY$
  X = X + 1: IF X > UZ(LCX) THEN X = 1
  IF LCX = 5 AND X = 3 OR X = 6 THEN X = X + 1
END IF

IF KEY$ = CHR$(8) AND X > 1 THEN
X = X - 1
MID$(SAHA$(LCX), X, 1) = " "
END IF
IF LCX = 2 AND (X = 3 OR X = 6) THEN X = X + 1
IF KEY$ = CHR$(0) + CHR$(59) THEN CALL KAYDET
IF KEY$ = CHR$(0) + CHR$(60) AND LCX = 1 AND X > 1 THEN CALL ARAMA
IF KEY$ = CHR$(0) + CHR$(63) THEN CALL SAHABOSALT

LOOP UNTIL KEY$ = CHR$(27)
END SUB

SUB kutu (X, y, x1, y1, yr, zr)
COLOR yr, zr
LOCATE X, y: PRINT "з"; STRING$(y1 - y - 1, 196); "©"
LOCATE x1, y: PRINT "х"; STRING$(y1 - y - 1, 196); "ыш"
LOCATE x1 + 1, y + 1: PRINT STRING$(y1 + 1 - y - 1, 219); "ш"
FOR A = X + 1 TO x1 - 1
   LOCATE A, y: PRINT "Ё"; SPC(y1 - y - 1); "Ёш"
NEXT A
' з    =  218
' д    =  196
' ©    =  191
'  ы   =  217
' ю    =  192
' Ё    =  179
END SUB

SUB puldown
bas:
CALL SABITLER
CALL kutu(5, 45, 18, 73, 8, 0)
FOR A = 1 TO 5
COLOR 15, 0: LOCATE A + 8, 49: PRINT menu2$(A)
NEXT A
lc = 1: LCX = 1
DO
COLOR 15, 0: LOCATE lc + 8, 49: PRINT menu2$(lc)
COLOR 15, 4: LOCATE LCX + 8, 49: PRINT menu2$(LCX)
DO: KEY$ = INKEY$: LOOP WHILE KEY$ = ""
IF KEY$ = CHR$(0) + CHR$(80) THEN
lc = LCX: LCX = LCX + 1: IF LCX > 5 THEN LCX = 1
END IF
IF KEY$ = CHR$(0) + CHR$(72) THEN
lc = LCX: LCX = LCX - 1: IF LCX < 1 THEN LCX = 5
END IF
IF KEY$ = CHR$(13) AND LCX = 1 THEN CALL kayitislem: GOTO bas
LOOP UNTIL KEY$ = CHR$(27) OR KEY$ = CHR$(13) AND LCX = 5
END SUB

SUB SABITLER
menu$(1) = "Ogrenci Isleri"
menu$(2) = "Genel Liste"
menu$(3) = "Program Sonu"

menu2$(1) = "ogrenci kayit isleri "
menu2$(2) = "ogrenci sicil isleri "
menu2$(3) = "ogrenci devamsizlik  "
menu2$(4) = "ogrenci sevk isleri  "
menu2$(5) = "Ana menuye donus     "

SATIR(1) = 5: SUTUN(1) = 20: UZ(1) = 5 'kayit numarasi
SATIR(2) = 5: SUTUN(2) = 35: UZ(2) = 10 'kayit tarihi
SATIR(3) = 7: SUTUN(3) = 20: UZ(3) = 15 'ogrenci adi
SATIR(4) = 9: SUTUN(4) = 20: UZ(4) = 15 'soyadi
SATIR(5) = 11: SUTUN(5) = 20: UZ(5) = 5 'sinifi
SATIR(6) = 11: SUTUN(6) = 45: UZ(6) = 5 'ogrenci numarasi
SATIR(7) = 13: SUTUN(7) = 20: UZ(7) = 25 'ogretmeni

END SUB

SUB SAHABOSALT
CALL SABITLER
'S$ = STRING$(UZ(A), 32)
FOR A = 1 TO 7
LOCATE SATIR(A), SUTUN(A): PRINT STRING$(UZ(A), 32)
NEXT A
END SUB

