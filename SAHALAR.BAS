DECLARE SUB arama ()
DECLARE SUB LISTEISLEMI ()
DECLARE SUB ara ()
DECLARE SUB aramaislemi ()
DECLARE SUB kaydet ()
DECLARE SUB bosalt ()
DECLARE SUB onay ()
DECLARE SUB kayitislem ()
DECLARE SUB sabitler ()
DECLARE SUB KUTU (x!, Y!, X1!, Y1!, YR!, ZR!)
BASLA:
COLOR 0, 7
CLS
DIM SHARED MENU$(6)
DIM SHARED s$(5), saha$(5), yery(5), yerx(5), uz(5), sah$
DIM SHARED ony$(2)
DIM SHARED sah$(1), SATIR(1), SUTUN(1), UZUNLUK(1)
DIM SHARED men$(6)
CALL sabitler

FOR a = 1 TO 24
COLOR 9, 8
  LOCATE a, 1: PRINT STRING$(80, 219)
NEXT a
CALL KUTU(5, 25, 15, 55, 8, 7)
FOR a = 1 TO 6
COLOR 8, 7: LOCATE a + 6, 38: PRINT MENU$(a)
NEXT a
lc = 1: lcx = 1
DO
COLOR 8, 7: LOCATE lc + 6, 38: PRINT MENU$(lc)
COLOR 15, 1: LOCATE lcx + 6, 38: PRINT MENU$(lcx)
DO: key$ = INKEY$: LOOP WHILE key$ = ""
IF key$ = CHR$(0) + CHR$(80) THEN
 lc = lcx: lcx = lcx + 1: IF lcx > 6 THEN lcx = 1
END IF
IF key$ = CHR$(0) + CHR$(72) THEN
lc = lcx: lcx = lcx - 1: IF lcx < 1 THEN lcx = 6
END IF
IF key$ = CHR$(13) AND lcx = 1 THEN CALL kayitislem: GOTO BASLA

IF key$ = CHR$(27) OR key$ = CHR$(13) AND lcx = 6 THEN CALL onay: GOTO BASLA
IF key$ = CHR$(13) AND lcx = 2 THEN CALL arama: GOTO BASLA
IF key$ = CHR$(13) AND lcx = 3 THEN CALL LISTEISLEMI: GOTO BASLA
LOOP UNTIL key$ = CHR$(27) OR key$ = CHR$(13) AND lcx = 6

SUB ara
COLOR 0, 7: CLS
CALL KUTU(5, 10, 20, 70, 0, 7)
  kno% = VAL(sah$)

GET #1, kno%
'ad$ = s$(2)
'soy$ = s$(3)
'adr$ = s$(4)
'tel$ = s$(5)
LOCATE 7, 15: PRINT "Aranilan Kisinin..."
LOCATE 9, 20: PRINT "Adi         =", ad$
LOCATE 11, 20: PRINT "Soyadi      =", soy$
LOCATE 13, 20: PRINT "Adresi      =", adr$
LOCATE 15, 20: PRINT "Telefonu    =", tel$


i$ = INPUT$(1)
CLOSE #1
END SUB

SUB arama
bas:
COLOR 0, 7: CLS
CALL KUTU(5, 10, 20, 70, 0, 7)
CALL sabitler
FOR a = 1 TO 6
COLOR 0, 7: LOCATE a + 8, 30: PRINT men$(a)
NEXT a
lc = 1: lcx = 1
DO
COLOR 0, 7: LOCATE lc + 8, 30: PRINT men$(lc)
COLOR 7, 0: LOCATE lcx + 8, 30: PRINT men$(lcx)
DO: key$ = INKEY$: LOOP WHILE key$ = ""
IF key$ = CHR$(0) + CHR$(80) THEN
lc = lcx: lcx = lcx + 1: IF lcx > 6 THEN lcx = 1
END IF
IF key$ = CHR$(0) + CHR$(72) THEN
lc = lcx: lcx = lcx - 1: IF lcx < 1 THEN lcx = 6
END IF
IF key$ = CHR$(13) AND lcx = 1 THEN CALL aramaislemi: GOTO bas
IF key$ = CHR$(13) AND lcx = 6 THEN EXIT DO
LOOP UNTIL key$ = CHR$(27)

END SUB

SUB aramaislemi
ba:
COLOR 0, 7
CLS
OPEN "random.001" FOR RANDOM AS #1 LEN = 69
FIELD #1, 1 AS f$, 15 AS s$(2), 15 AS s$(3), 25 AS s$(4), 13 AS s$(5)
CALL KUTU(5, 10, 20, 70, 0, 7)

sah$ = STRING$(5, 32)
LOCATE 12, 12: PRINT "ARANILAN KAYIT NUMARASINI GIRIN"
COLOR 9, 0: LOCATE 12, 45: PRINT sah$
x = 1
DO
COLOR 9, 0: LOCATE 12, 45: PRINT sah$
LOCATE 12, 45 + x - 1, 1, 0, 5
DO: key$ = INKEY$: LOOP WHILE key$ = ""
IF key$ >= CHR$(32) THEN
   MID$(sah$, x, 1) = key$
   x = x + 1: IF x > 5 THEN x = 1
END IF
IF key$ = CHR$(8) AND x > 1 THEN
x = x - 1
MID$(sah$, x, 1) = " "
END IF
IF key$ = CHR$(13) AND x > 1 THEN
  CALL ara
  GOTO ba:
END IF
LOOP UNTIL key$ = CHR$(27)
CLOSE #1
END SUB

SUB bosalt
FOR a = 1 TO 5
COLOR 14, 4
saha$(a) = STRING$(uz(a), 32)
LOCATE yery(a), yerx(a): PRINT saha$(a)
NEXT a
END SUB

SUB kaydet
kno% = VAL(saha$(1))
OPEN "random.001" FOR RANDOM AS #1 LEN = 69
FIELD #1, 1 AS f$, 15 AS s$(2), 15 AS s$(3), 25 AS s$(4), 13 AS s$(5)

LSET f$ = "*"
LSET saha$(2) = s$(2)
LSET saha$(3) = s$(3)
LSET saha$(4) = s$(4)
LSET saha$(5) = s$(5)
GET #1, kno%
IF f$ = "*" THEN
LOCATE 15, 50: PRINT "Bu kayit girilmis"
FOR h = 1 TO 1000000: NEXT h
CALL kayitislem
END IF

LSET f$ = "*"
LSET s$(2) = saha$(2)
LSET s$(3) = saha$(3)
LSET s$(4) = saha$(4)
LSET s$(5) = saha$(5)

PUT #1, kno%
LOCATE 1, 1: PRINT "Kayit yapildi"
CLOSE #1


END SUB

SUB kayitislem
CLS
CALL KUTU(6, 1, 20, 45, 0, 7)
LOCATE 7, 18: PRINT "Kayit Bolumu"
LOCATE 10, 2: PRINT "Kayit no  "
LOCATE 10, 18: PRINT "Adi  "
LOCATE 12, 2: PRINT "Soyadi"
LOCATE 14, 2: PRINT "Adresi"
LOCATE 16, 2: PRINT "Telefon"
LOCATE 23, 2: PRINT STRING$(65, 32)
LOCATE 23, 5: PRINT "<  F1-->Kayit  >"
LOCATE 23, 25: PRINT "<  F5-->Bosalt >"
LOCATE 23, 45: PRINT "<  ESC-->ANA MENU >"

FOR a = 1 TO 5
saha$(a) = STRING$(uz(a), 32)
COLOR 14, 4
LOCATE yery(a), yerx(a): PRINT saha$(a)
NEXT a
lc = 1: lcx = 1: x = 1
DO
COLOR 14, 4: LOCATE yery(lc), yerx(lc): PRINT saha$(lc)
COLOR 14, 9: LOCATE yery(lcx), yerx(lcx): PRINT saha$(lcx)
LOCATE yery(lcx), yerx(lcx) + x - 1, 1, 0, 5
DO: key$ = INKEY$: LOOP WHILE key$ = ""
IF key$ = CHR$(13) THEN
lc = lcx: x = 1: lcx = lcx + 1: IF lcx > 5 THEN lcx = 1
END IF
IF key$ >= CHR$(32) THEN
 MID$(saha$(lcx), x, 1) = UCASE$(key$)
x = x + 1: IF x > uz(lcx) THEN x = uz(lcx)
END IF
IF key$ = CHR$(8) AND x > 1 THEN
x = x - 1
MID$(saha$(lcx), x, 1) = " "
END IF
kno% = VAL(saha$(1))

IF key$ = CHR$(0) + CHR$(59) AND VAL(saha$(1)) >= 1 THEN CALL kaydet
IF key$ = CHR$(0) + CHR$(63) THEN CALL bosalt
LOOP UNTIL key$ = CHR$(27)
CLOSE #1

END SUB

SUB KUTU (x, Y, X1, Y1, YR, ZR)
     COLOR YR, ZR
'FOR A = 1 TO 20
'LOCATE A, 1: PRINT STRING$(70, KOD)
'NEXT A
     LOCATE x, Y: PRINT "É"; STRING$(Y1 - Y - 1, 205); "»"
     LOCATE X1, Y: PRINT "È"; STRING$(Y1 - Y - 1, 205); "¼Û"
     LOCATE X1 + 1, Y + 1: PRINT STRING$(Y1 + 2 - Y - 1, 219)
FOR a = x + 1 TO X1 - 1
 LOCATE a, Y: PRINT "º"; SPC(Y1 - Y - 1); "ºÛ"
NEXT a

END SUB

SUB LISTEISLEMI
OPEN "random.001" FOR RANDOM AS #1 LEN = 69
FIELD #1, 1 AS f$, 15 AS s$(2), 15 AS s$(3), 25 AS s$(4), 13 AS s$(5)
COLOR 0, 7: CLS
CALL KUTU(1, 1, 22, 75, 0, 7)
LOCATE 2, 30: PRINT "GENEL LiSTE"
LOCATE 3, 3: PRINT STRING$(70, 205)
kno% = 1
2
kno% = kno% + 1
IF EOF(1) THEN GOTO kapat
GET #1, kno%
IF f$ <> "*" THEN GOTO 2
a = a + 1: IF a > 20 THEN LOCATE 21, 10: PRINT "Devam icin bir tusa basin..."; 'i$ = INPUT$(1)
LOCATE 5, 3: PRINT STRING$(70, 205)
LOCATE 4, 3: PRINT " Adi", "    Soyadi", "     Adres", "                Telefon"
LOCATE a + 5, 3: PRINT kno%; s$(1); s$(2); s$(3); s$(4); s$(5)
GOTO 2
kapat:
CLOSE #1
i$ = INPUT$(1)

END SUB

SUB onay
1
CALL KUTU(17, 13, 21, 50, 0, 7)
LOCATE 18, 15: PRINT "Programdan Cikmak istiyormusunuz ?"
CALL sabitler
FOR a = 1 TO 2
COLOR 0, 7: LOCATE 20, a * 11 + 12: PRINT ony$(a)
NEXT a
lc = 1: lcx = 1
DO
COLOR 0, 7: LOCATE 20, lc * 11 + 12: PRINT ony$(lc)
COLOR 7, 0: LOCATE 20, lcx * 11 + 12: PRINT ony$(lcx)
DO: key$ = INKEY$: LOOP WHILE key$ = ""
IF key$ = CHR$(0) + CHR$(77) THEN
 lc = lcx: lcx = lcx + 1: IF lcx > 2 THEN lcx = 1
END IF
IF key$ = CHR$(0) + CHR$(75) THEN
 lc = lcx: lcx = lcx - 1: IF lcx < 1 THEN lcx = 2
END IF
IF key$ = CHR$(13) AND lcx = 1 THEN COLOR 7, 0: CLS : END
IF key$ = CHR$(13) AND lcx = 2 THEN EXIT DO
IF key$ = CHR$(27) THEN EXIT DO
LOOP

END SUB

SUB sabitler
  MENU$(1) = "KAYIT"
  MENU$(2) = "ARAMA"
  MENU$(3) = "LISTE"
  MENU$(4) = "DUZEN"
  MENU$(5) = "SILME"
  MENU$(6) = "CIKIS"

yery(1) = 10: yerx(1) = 10: uz(1) = 5
yery(2) = 10: yerx(2) = 25: uz(2) = 15
yery(3) = 12: yerx(3) = 10: uz(3) = 15
yery(4) = 14: yerx(4) = 10: uz(4) = 25
yery(5) = 16: yerx(5) = 10: uz(5) = 13

ony$(1) = "Evet"
ony$(2) = "Hayir"

SATIR(1) = 12: SUTUN(1) = 45: UZUNLUK(1) = 5
men$(1) = "Kayit No'ya gore arama"
men$(2) = "Ada gore arama"
men$(3) = "Soyada gore arama"
men$(4) = "Adrese gore arama"
men$(5) = "Telefona gore arama"
men$(6) = "Ana menu"
END SUB

