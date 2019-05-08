DECLARE SUB listeislemi ()
DECLARE SUB aramaislemi ()
DECLARE SUB PROGRAMBASI ()
DECLARE SUB kaydet ()
DECLARE SUB BASLANGIC ()
DECLARE SUB SABITLER ()
DECLARE SUB kutu (x!, Y!, X1!, Y1!, YR!, ZR!)
DECLARE SUB KAYITISLEM ()
CLS
'CALL PROGRAMBASI
CALL BASLANGIC
DIM SHARED MENU$(6)
DIM SHARED S$(6), SAHA$(6), satir(6), sutun(6), UZ(6)

SUB aramaislemi
u = 1
COLOR 0, 7: CLS
KNO% = VAL(SAHA$(1))
OPEN "bilgi.dat" FOR RANDOM AS #1 LEN = 79
FIELD #1, 1 AS f$, 10 AS S$(2), 15 AS S$(3), 15 AS S$(4), 25 AS S$(5), 13 AS S$(6)
CALL kutu(10, 10, 20, 70, 8, 0)
COLOR 15, 0: LOCATE 15, 20: PRINT "Aranilan Kayit Numarasi =": LOCATE 15, 45: INPUT "", KNO%
ka:
GET #1, KNO%
'IF f$ <> "*" THEN GOTO ka
CALL kutu(2, 30, 22, 78, 8, 0)
COLOR 14, 0: LOCATE 3, 31: PRINT "ADI"; "            SOYADI"; "        TELEFONU"
LOCATE 4, 31: PRINT STRING$(43, 205)
u = u + 1: IF u > 10 THEN u = 1
COLOR 14, 0: LOCATE u + 4, 31: PRINT S$(3); S$(4); S$(6)

CLOSE #1
I$ = INPUT$(1)
END SUB

SUB BASLANGIC
SCREEN 0, 0
bas:
COLOR 0, 7
CLS :
CALL SABITLER
CALL kutu(7, 22, 17, 50, 8, 0)
FOR A = 1 TO 6
COLOR 15, 0: LOCATE A + 8, 31, 0: PRINT MENU$(A)
NEXT A
LC = 1: lcx = 1
DO
COLOR 15, 0: LOCATE LC + 8, 31, 0: PRINT MENU$(LC)
COLOR 14, 1: LOCATE lcx + 8, 31, 0: PRINT MENU$(lcx)
DO: key$ = INKEY$: LOOP WHILE key$ = ""
IF key$ = CHR$(0) + CHR$(80) THEN
LC = lcx: lcx = lcx + 1: IF lcx > 6 THEN lcx = 1
END IF
IF key$ = CHR$(0) + CHR$(72) THEN
LC = lcx: lcx = lcx - 1: IF lcx < 1 THEN lcx = 6
END IF
IF key$ = CHR$(13) AND lcx = 1 THEN CALL KAYITISLEM: GOTO bas
IF key$ = CHR$(13) AND lcx = 2 THEN CALL aramaislemi: GOTO bas
IF key$ = CHR$(13) AND lcx = 3 THEN CALL listeislemi: GOTO bas
LOOP UNTIL key$ = CHR$(27) OR key$ = CHR$(13) AND lcx = 6
END SUB

SUB kaydet
COLOR 0, 7: CLS
OPEN "bilgi.dat" FOR RANDOM AS #1 LEN = 79
FIELD #1, 1 AS f$, 10 AS S$(2), 15 AS S$(3), 15 AS S$(4), 25 AS S$(5), 13 AS S$(6)
KNO% = VAL(SAHA$(1))
KNO% = INT(LOF(1) / 79)
'kno% = kno% + 1
FOR A = 2 TO 6
LSET S$(A) = SAHA$(A)
NEXT A
IF f$ = "*" THEN LOCATE 22, 10: PRINT "Bu Kayit Girilmis"
PUT #1, KNO%
CLOSE #1
END SUB

SUB KAYITISLEM
basl:
COLOR 0, 7: CLS
CALL kutu(4, 5, 20, 70, 8, 0)
CALL SABITLER
COLOR 15, 7: LOCATE 2, 30: PRINT "Kayit Islem Bilgileri"
COLOR 15, 0: LOCATE 6, 13: PRINT "KAYIT NUMARASI"
LOCATE 8, 15: PRINT "KAYIT TARIHI"
LOCATE 10, 24: PRINT "ADI"
LOCATE 12, 21: PRINT "SOYADI"
LOCATE 14, 21: PRINT "ADRESI"
LOCATE 16, 19: PRINT "TELEFONU"
FOR A = 1 TO 6
SAHA$(A) = STRING$(UZ(A), 32)
SAHA$(2) = "  /  /    "
COLOR 15, 7: LOCATE satir(A), sutun(A): PRINT SAHA$(A)
NEXT A
LC = 1: lcx = 1: x = 1
DO
COLOR 15, 7: LOCATE satir(LC), sutun(LC): PRINT SAHA$(LC)
COLOR 15, 9: LOCATE satir(lcx), sutun(lcx): PRINT SAHA$(lcx)
LOCATE satir(lcx), sutun(lcx) + x - 1, 1, 5, 7
DO: key$ = INKEY$: LOOP WHILE key$ = ""
IF key$ = CHR$(13) OR key$ = CHR$(0) + CHR$(80) THEN
LC = lcx: x = 1: lcx = lcx + 1: IF lcx > 6 THEN lcx = 1
END IF
IF key$ = CHR$(0) + CHR$(72) THEN
LC = lcx: x = 1: lcx = lcx - 1: IF lcx < 1 THEN lcx = 6
END IF
IF key$ >= CHR$(32) THEN
MID$(SAHA$(lcx), x, 1) = UCASE$(key$)
x = x + 1: IF x > UZ(lcx) THEN x = UZ(lcx)
END IF
IF key$ = CHR$(8) AND x > 1 THEN
x = x - 1
MID$(SAHA$(lcx), x, 1) = " "
END IF
IF lcx = 2 AND (x = 3 OR x = 6) THEN x = x + 1
'IF lcx <> 1 AND key$ >= "0" OR key$ <= "9" THEN
'MID$(saha$(lcx), x, 1) = key$
'END IF
IF key$ = CHR$(0) + CHR$(59) THEN CALL kaydet: GOTO basl

LOOP UNTIL key$ = CHR$(27)
END SUB

SUB kutu (x, Y, X1, Y1, YR, ZR)
COLOR YR, ZR
LOCATE x, Y: PRINT "É"; STRING$(Y1 - Y - 1, 205); "»"
LOCATE X1, Y: PRINT "È"; STRING$(Y1 - Y - 1, 205); "¼Û"
LOCATE X1 + 1, Y + 1: PRINT STRING$(Y1 + 2 - Y - 1, 219)
FOR A = x + 1 TO X1 - 1
LOCATE A, Y: PRINT "º"; SPC(Y1 - Y - 1); "ºÛ"
NEXT A
END SUB

SUB listeislemi
'kno% = VAL(s$(1))
A = 4
COLOR 0, 7: CLS
CALL kutu(2, 10, 22, 70, 8, 0)
OPEN "bilgi.dat" FOR RANDOM AS #1 LEN = 79
FIELD #1, 1 AS f$, 10 AS S$(2), 15 AS S$(3), 15 AS S$(4), 25 AS S$(5), 13 AS S$(6)

KNO% = INT(LOF(1) / 79)
KNO% = KNO% + 1
'DO
OKU:
GET #1, KNO%
'IF f$ <> "*" THEN GOTO OKU
FOR A = 2 TO 6
SAHA$(A) = S$(A)
NEXT A
FOR A = 1 TO KNO%
LOCATE A, 20: PRINT SAHA$(A)
NEXT A
'LOOP UNTIL EOF(1)
I$ = INPUT$(1)
CLOSE #1
END SUB

SUB PROGRAMBASI
CLS
SCREEN 8
COLOR 14, 0: LOCATE 7, 32: PRINT "TEMA BILGISAYAR KURSU"
LOCATE 13, 37: PRINT "HAZIRLAYAN"
LOCATE 15, 35: PRINT "CUNEYT YARBASI"
LOCATE 18, 25: PRINT "DEVAM ETMEK ICIN 'ENTER' TUSUNA BASIN"
x = 1
DO
key$ = INKEY$
FOR A = 1 TO 100
RENK = INT(RND * 15)
x = INT(RND * 640)
CIRCLE (x, 200), A, RENK
CIRCLE (50, x), A, RENK
CIRCLE (620, x), A, RENK
CIRCLE (x, 1), A, RENK
NEXT A
IF key$ = CHR$(13) THEN GOTO CIK
LOOP UNTIL key$ = CHR$(27)
SCREEN 0, 0: CLS : END
CIK:
END SUB

SUB SABITLER

MENU$(1) = "   KAYIT   "
MENU$(2) = "   ARAMA   "
MENU$(3) = "   LISTE   "
MENU$(4) = "   DUZEN   "
MENU$(5) = "   SILME   "
MENU$(6) = "   CIKIS   "

satir(1) = 6: sutun(1) = 30: UZ(1) = 5 'KAYIT NO
satir(2) = 8: sutun(2) = 30: UZ(2) = 10 'KAYIT TARIHI
satir(3) = 10: sutun(3) = 30: UZ(3) = 15 'ADI
satir(4) = 12: sutun(4) = 30: UZ(4) = 15 'SOYADI
satir(5) = 14: sutun(5) = 30: UZ(5) = 25 'ADRESI
satir(6) = 16: sutun(6) = 30: UZ(6) = 13 'TELEFON
END SUB

