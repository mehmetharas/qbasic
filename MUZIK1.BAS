CLS
ON PLAY(3) GOSUB Replay
PLAY ON
FElise$ = "o3 L8 E D+ E D+ E o2 B o3 D C L2 o2 A"
PLAY "MB X" + VARPTR$(FElise$)
PLAY STOP
LOCATE 23, 1: PRINT "Press any key to continue."
DO
LOOP WHILE INKEY$ = ""
PLAY ON
LOCATE 23, 1: PRINT "Press any key to stop.    "
DO
    GOSUB BackGround
LOOP WHILE INKEY$ = ""
PLAY OFF
DO
    GOSUB BackGround
LOOP UNTIL NoteCount = 0
END
Replay:
    Count% = Count% + 1
    LOCATE 3, 1: PRINT "Replay routine called"; Count%; "time(s)";
    PLAY "MB X" + VARPTR$(FElise$)
RETURN
BackGround:
    NoteCount = PLAY(0)
    LOCATE 1, 1
    PRINT "Background queue notes remaining --> "; NoteCount
    DO
    LOOP UNTIL NoteCount <> PLAY(0) OR NoteCount = 0
RETURN

