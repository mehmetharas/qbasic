DECLARE SUB ciz (x!, y!, x1!, y1!, renk!)
CLS
SCREEN 12
COLOR renk
CALL ciz(300, 200, 400, 300, 7)

SUB ciz (x, y, x1, y1, renk)
LINE (x, y)-(x1, y1), renk, BF

END SUB

