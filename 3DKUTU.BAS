CLS
DEFINT A-Z

One$ = "BR30 BU25 C1 R54 U45 L54 D45 BE20 P1, 1G20 C2 G20"
Two$ = "R54 E20 L54 BD5 P2, 2 U5 C4 G20 U45 E20 D45 BL5 P4, 4"
Plot$ = One$ + Two$
APage% = 0
VPage% = 1
HPage% = 2
Angle% = 0
SCREEN 7, 0, VPage%, VPage%
LOCATE 1, 18
PRINT "CALISTIRMAK ICIN 'ALT' TUSUNA BASIN"
LOCATE 5, 1
PCOPY VPage%, HPage%
SLEEP 5
DO
    SCREEN 7, 0, APage%, VPage%
    CLS 1
    
    DRAW "TA" + STR$(Angle%) + Plot$
    
    Angle% = (Angle% + 15) MOD 360
    SWAP APage%, VPage%
    Kbd$ = INKEY$
    SELECT CASE Kbd$
    
        CASE CHR$(0) + CHR$(104)
            PCOPY HPage%, APage%
            SLEEP 3
    
        CASE ""
        CASE ELSE
            EXIT DO
    END SELECT
LOOP
END

