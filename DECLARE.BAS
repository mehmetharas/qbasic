Option Explicit
'Global matris()   As String
Global dizi(86) As String
Global sesvar, sayfa3, son, hata As Variant
Global DON, sayi, yan1, yan2, yan3 As Integer
Global DATA_db As database
Global data_tb As table
Global counter, par1, para1, para2, para3, para4 As Integer
Global max, sayfa As Integer
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
Dim ii
kaldir



For ii = 0 To 7
 FORM4.Text1(ii).FontName = RTrim(data_tb.Fields("FONT"))
 FORM4.Text1(ii).FontSize = data_tb.Fields("SIZE")
 FORM4.Text1(ii).ForeColor = &H404040
Next ii

For ii = 0 To 15
 FORM7.Text1(ii).FontName = RTrim(data_tb.Fields("FONT"))
 FORM7.Text1(ii).FontSize = data_tb.Fields("SIZE")
 FORM7.Text1(ii).ForeColor = &H404040
Next ii
If data_tb.Fields("IND") = 2 Then
   FORM7.Text1(1).FontSize = 12
'  FORM7.Text1(3).BackColor = &HFFFF&
'  FORM7.Text1(1).ForeColor = &HFF&
  FORM7.Text1(1).FontUnderline = True
  FORM7.Text1(7).FontUnderline = True
  FORM7.Text1(7).FontSize = 12
End If
If data_tb.Fields("IND") = 3 Then
  FORM7.Text1(2).FontSize = 12
  FORM7.Text1(3).FontSize = 12
  FORM7.Text1(4).FontSize = 12
  FORM7.Text1(2).FontUnderline = 12
  FORM7.Text1(3).FontUnderline = 12
  FORM7.Text1(4).FontUnderline = 12

End If
If data_tb.Fields("IND") = 5 Then
   FORM7.Text1(2).FontSize = 12
   FORM7.Text1(2).FontUnderline = True
End If


If data_tb.Fields("IND") = 7 Then
   FORM4.Text1(1).FontSize = 12
   FORM4.Text1(1).FontUnderline = True
 End If
If data_tb.Fields("IND") = 28 Then
   FORM4.Text1(0).FontSize = 12
   FORM4.Text1(0).FontUnderline = True
 End If

If data_tb.Fields("IND") = 9 Then
   FORM7.Text1(1).FontSize = 12
   FORM7.Text1(1).FontUnderline = True
   FORM7.Text1(5).FontUnderline = True
 End If


If data_tb.Fields("IND") = 26 Then
  FORM7.Text1(1).FontSize = 12
  FORM7.Text1(1).FontUnderline = True
  FORM7.Text1(3).FontUnderline = True
End If
 
If data_tb.Fields("IND") = 30 Then FORM7.Text1(2).FontUnderline = True
If data_tb.Fields("IND") = 33 Then
  FORM7.Text1(0).FontSize = 12
  FORM7.Text1(0).FontUnderline = True
End If
If data_tb.Fields("IND") = 36 Then
  FORM7.Text1(2).FontSize = 12
  FORM7.Text1(2).FontUnderline = True
End If

If data_tb.Fields("IND") = 27 Then
  FORM7.Text1(2).FontSize = 12
  FORM7.Text1(2).FontUnderline = True
End If
End Sub

Sub kaldir ()
Dim i, ii
For i = 0 To 15
 FORM7.Text1(i).FontUnderline = False
Next i
For ii = 0 To 7
 FORM4.Text1(ii).FontUnderline = False
Next ii

End Sub

