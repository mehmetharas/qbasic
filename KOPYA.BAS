
1 :
DEFINT A-Z         'Default variable type is integer.

DECLARE SUB ScreenTest (EM%, CR%, VL%, VR%, VT%, VB%)

'Set maximum number of iterations per point.
CONST MAXLOOP = 30, MAXSIZE = 1000000
CONST FALSE = 0, TRUE = NOT FALSE       'Boolean constants.
'Set window paramters.
CONST WLeft = -1000, WRight = 250, WTop = 625, WBottom = -625
 
'Call ScreenTest to find out if this is an EGA machine,
'and get coordinates of viewport corners.
ScreenTest EgaMode, ColorRange, VLeft, VRight, VTop, VBottom
 
'Define viewport and corresponding window.
VIEW (VLeft, VTop)-(VRight, VBottom), 0, ColorRange
WINDOW (WLeft, WTop)-(WRight, WBottom)
 
LOCATE 24, 10: PRINT "Press any key to quit.";
 
XLength = VRight - VLeft
YLength = VBottom - VTop
ColorWidth = MAXLOOP \ ColorRange
 
'Loop through each pixel in viewport and calculate whether or not
'it is in the Mandelbrot Set.
FOR Y = 0 TO YLength       'Loop through every line in the viewport.
   LogicY = PMAP(Y, 3)     'Get the pixel's logical y coordinate.
   PSET (WLeft, LogicY)    'Plot leftmost pixel in the line.
   OldColor = 0            'Start with background color.
 
   FOR X = 0 TO XLength    'Loop through every pixel in the line.
      LogicX = PMAP(X, 2)  'Get the pixel's logical x coordinate.
      MandelX& = LogicX
      MandelY& = LogicY
 
      'Do the calculations to see if this point is in the Mandelbrot Set.
      FOR I = 1 TO MAXLOOP
         RealNum& = MandelX& * MandelX&
         ImagNum& = MandelY& * MandelY&
         IF (RealNum& + ImagNum&) >= MAXSIZE THEN EXIT FOR
         MandelY& = (MandelX& * MandelY&) \ 250 + LogicY
         MandelX& = (RealNum& - ImagNum&) \ 500 + LogicX
      NEXT I
 
      'Assign a color to the point.
      PColor = I \ ColorWidth
 
      'If color has changed, draw a line from the last point
      'referenced to the new point, using the old color.
      IF PColor <> OldColor THEN
         LINE -(LogicX, LogicY), (ColorRange - OldColor)
         OldColor = PColor
      END IF
 
      IF INKEY$ <> "" THEN END
   NEXT X
 
   'Draw the last line segment to the right edge of the viewport.
   LINE -(LogicX, LogicY), (ColorRange - OldColor)
 
NEXT Y
DO
LOOP WHILE INKEY$ = ""
 
SCREEN 0, 0             'Restore the screen to text mode,
WIDTH 80                '80 columns.
END
 
BadScreen:              'Error handler that is invoked if
   EgaMode = FALSE      'there is no EGA graphics card.
   RESUME NEXT
GOTO 1

'This procedure tests to see if user has EGA hardware with SCREEN 8.
'If this causes an error, the EM flag is set to FALSE, and the screen
'is set with SCREEN 1. The procedure also sets values for the corners
'of the viewport (VL = left, VR = right, VT = top, VB = bottom),
'scaled with the correct aspect ratio so viewport is a perfect square.
SUB ScreenTest (EM, CR, VL, VR, VT, VB) STATIC
   EM = TRUE
   ON ERROR GOTO BadScreen
   SCREEN 8, 1
   ON ERROR GOTO 0
 
   IF EM THEN           'No error, so SCREEN 8 is OK.
      VL = 110: VR = 529
      VT = 5: VB = 179
      CR = 15           '16 colors (0 - 15).
 
   ELSE                 'Error, so use SCREEN 1.
      SCREEN 1, 1
      VL = 55: VR = 264
      VT = 5: VB = 179
      CR = 3            '4 colors (0 - 3).
   END IF
 
END SUB

