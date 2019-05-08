CLS
RANDOMIZE TIMER
SCREEN 12
x = 120: Y = 110: X1 = 50: Y1 = 100
LINE (10, 5)-(20, 700), 15, BF
LINE (10, 15)-(700, 5), 15, BF
LINE (630, 5)-(700, 700), 15, BF
LINE (630, 450)-(20, 700), 15, BF
t = 1
DO
LINE (x, Y)-(X1, Y1), 15, BF
t = INT(RND * 20)
IF KEY$ = CHR$(0) + CHR$(77) THEN x = x + 6: X1 = X1 + 6

KEY$ = INKEY$



LOOP UNTIL KEY$ = CHR$(27)

