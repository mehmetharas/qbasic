DEFINT A-Z
DIM SHARED PaletteArray(15)
 
CONST ASPECT = 1 / 3
 
SCREEN 8
FOR I = 0 TO 15
    PaletteArray(I) = I
NEXT I
FOR ColorVal = 15 TO 1 STEP -1
    Radius = 20 * ColorVal
    CIRCLE (320, 100), Radius, ColorVal, , , ASPECT
    PAINT (320, 100), ColorVal
NEXT
DO
    FOR I = 1 TO 15
        PaletteArray(I) = (PaletteArray(I) MOD 15) + 1
    NEXT I
    PALETTE USING PaletteArray(0)
    PALETTE 0, PaletteArray(INT(RND * 15))
 
LOOP WHILE INKEY$ = ""
END
 

