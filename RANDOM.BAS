DECLARE SUB listeislem ()
DECLARE SUB sabitler ()
DECLARE SUB kutu (x!, y!, x1!, y1!, yr!, zr!)
DECLARE SUB kayitislem ()
basla:
COLOR 0, 7
CLS
DIM SHARED menu$(6)
CALL sabitler
CALL kutu(8, 30, 15, 45, 0, 7)
FOR a = 1 TO 6
  COLOR 0, 7
  LOCATE a + 8, 35: PRINT menu$(a)
NEXT a
lc = 1: lcx = 1
DO
COLOR 0, 7: LOCATE lc + 8, 35: PRINT menu$(lc)
COLOR 15, 0: LOCATE lcx + 8, 35: PRINT menu$(lcx)
DO: key$ = INKEY$: LOOP WHILE key$ = ""
IF key$ = CHR$(0) + CHR$(80) THEN
 lc = lcx: lcx = lcx + 1: IF lcx > 6 THEN lcx = 1
END IF
IF key$ = CHR$(0) + CHR$(72) THEN
 lc = lcx: lcx = lcx - 1: IF lcx < 1 THEN lcx = 6
END IF
IF key$ = CHR$(13) AND lcx = 1 THEN CALL kayitislem: GOTO basla
IF key$ = CHR$(13) AND lcx = 2 THEN CALL listeislem: GOTO basla

LOOP UNTIL key$ = CHR$(27) OR key$ = CHR$(13) AND lcx = 6

SUB kayitislem
COLOR 7, 0: CLS
OPEN "random.008" FOR RANDOM AS #1 LEN = 54
FIELD #1, 1 AS f$, 10 AS ad$, 10 AS soy$, 20 AS adr$, 13 AS tel$

LOCATE 10, 10: INPUT "kayit no    =", kno%
COLOR 7, 0
CLS
LOCATE 10, 10: INPUT "adi         =", adi$
LOCATE 12, 10: INPUT "soyadi      =", soyad$
LOCATE 14, 10: INPUT "adresi      =", adres$
LOCATE 16, 10: INPUT "telefonu    =", telefon$

LSET f$ = "*"
LSET ad$ = adi$
LSET soy$ = soyad$
LSET adr$ = adres$
LSET tel$ = telefon$
  PUT #1, kno%
LOCATE 23, 10: PRINT "Kayit yapildi..."
LOCATE 23, 40: INPUT "", a


CLOSE #1

END SUB

SUB kutu (x, y, x1, y1, yr, zr)
    COLOR yr, zr
    LOCATE x, y: PRINT "É"; STRING$(y1 - y - 1, 205); "»"
    LOCATE x1, y: PRINT "È"; STRING$(y1 - y - 1, 205); "¼Û"
    LOCATE x1 + 1, y + 1: PRINT STRING$(y1 + 2 - y - 1, 219)
FOR a = x + 1 TO x1 - 1
  LOCATE a, y: PRINT "º"; SPC(y1 - y - 1); "ºÛ"
NEXT a
END SUB

SUB listeislem
a = 3
OPEN "random.008" FOR RANDOM AS #1 LEN = 54
FIELD #1, 1 AS f$, 10 AS ad$, 10 AS soy$, 20 AS adr$, 13 AS tel$
kno% = INT(LOF(1) / 54)
kno% = kno% + 1
COLOR 0, 7: CLS
CALL kutu(2, 4, 20, 50, 8, 0)
COLOR 15, 0
oku:
IF EOF(1) THEN GOTO kapat
GET #1, kno%
a = a + 1
COLOR 0, 7: LOCATE a, 6: PRINT ad$; soy$; tel$
GOTO oku
kapat:
CLOSE #1
i$ = INPUT$(1)
END SUB

SUB sabitler
   menu$(1) = "Kayit"
   menu$(2) = "Liste"
   menu$(3) = "Arama"
   menu$(4) = "Silme"
   menu$(5) = "Duzen"
   menu$(6) = "Cikis"
END SUB

