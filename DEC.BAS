Option Explicit
Global DON As Integer
Global DATA_db As database
Global DATA_TB As table
Global counter As Integer
Global max As Integer
Global special1 As Integer
Global special2 As Integer
Global special3 As Integer
Global WA As Integer
Global Const SND_SYNC = 0
Global Const SND_ASYNC = 1
Global Const SND_NODEFAULT = 2
Global Const SND_MEMORY = 4
Global Const SND_LOOP = 8
Global Const SND_NOSTOP = 10
Declare Sub sndplaysound Lib "MMSystem" (ByVal FILENAME As String, ByVal Flags As Integer)





'Global pict As String

Sub FONT_DEGISTIR ()
FORM4.Text1(0).FontName = RTrim(DATA_TB.Fields("FONT"))
FORM4.Text1(1).FontName = RTrim(DATA_TB.Fields("FONT"))
FORM4.Text1(2).FontName = RTrim(DATA_TB.Fields("FONT"))
FORM4.Text1(3).FontName = RTrim(DATA_TB.Fields("FONT"))
FORM4.Text1(4).FontName = RTrim(DATA_TB.Fields("FONT"))
FORM4.Text1(5).FontName = RTrim(DATA_TB.Fields("FONT"))
FORM4.Text1(6).FontName = RTrim(DATA_TB.Fields("FONT"))
FORM4.Text1(7).FontName = RTrim(DATA_TB.Fields("FONT"))

FORM4.Text1(0).FontSize = DATA_TB.Fields("SIZE")

FORM4.Text1(1).FontSize = DATA_TB.Fields("SIZE")
FORM4.Text1(2).FontSize = DATA_TB.Fields("SIZE")
FORM4.Text1(3).FontSize = DATA_TB.Fields("SIZE")
FORM4.Text1(4).FontSize = DATA_TB.Fields("SIZE")
FORM4.Text1(5).FontSize = DATA_TB.Fields("SIZE")
FORM4.Text1(6).FontSize = DATA_TB.Fields("SIZE")
FORM4.Text1(7).FontSize = DATA_TB.Fields("SIZE")


End Sub

