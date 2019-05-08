CLS
SCREEN 12
DO
x = INT(RND * 480)
y = INT(RND * 640)
z = INT(RND * 100)
r = INT(RND * 15)

CIRCLE (1, y), z, r
CIRCLE (600, y), z, r
CIRCLE (x, 10), z, r
CIRCLE (x, 500), z, r
LOOP UNTIL INKEY$ = CHR$(27)

