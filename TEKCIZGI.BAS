DECLARE SUB kutu (x!, y!, x1!, y1!, yr!, zr!)
COLOR 0, 7
CLS
CALL kutu(4, 10, 20, 50, 8, 0)

SUB kutu (x, y, x1, y1, yr, zr)
COLOR yr, zr
LOCATE x, y: PRINT "з"; STRING$(y1 - y - 1, 196); "©"
LOCATE x1, y: PRINT "ю"; STRING$(y1 - y - 1, 196); "ыш"
LOCATE x1 + 1, y + 1: PRINT STRING$(y1 + 1 - y - 1, 219); "ш"
FOR a = x + 1 TO x1 - 1
LOCATE a, y: PRINT "Ё"; SPC(y1 - y - 1); "Ёш"
NEXT a

' з    =  218
' д    =  196
' ©    =  191
'  ы   =  217
' ю    =  192
' Ё    =  179
END SUB

