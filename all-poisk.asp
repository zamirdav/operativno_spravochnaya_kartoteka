
<html>
<head>
   <meta http-equiv="content-Type" content="text/html; charset=windows-1251">
   <title>����� ALL</title>
</HEAD>
<BODY bgcolor=LightCyan>
<!--#INCLUDE FILE="all-poisk.inc"-->  
<%
' 2020.08.26 ���������� ��������� �������
'2021.08.12 Or F1="" �������� ��� ���������� ������ 40 ��� ����������� �������� 
'
'
Tim_start=Time
'Response.Write "���������� �.�.<BR>"
'Response.Write "2019.01.24<BR>"
'27.11.2020 ������� ����� �� ��� �3


'Response.Write "<DIV align=right><A href='pass.asp'>&nbsp;" & KOT_FIO & "&nbsp;</A></DIV>"  

T = Request.QueryString("T") 

if T="1" then
   if F1="" then 
      Response.Write "��� ������� ������ �� ���� !<BR><BR><BR><BR>"
      Response.Write "<A href='all-form.asp?T=1'> �����</A><BR>"
      Response.end
   end if
'   Call POISK_ZAD("O2", 1, "07", "08", "09", "12", "���������� ���������� ��������� __") ' ����������� ����� 
'   Call POISK_ZAD("O3", 1, "07", "08", "09", "12", "OSK_������") ' ������� 27.11.2020 ����� �
   Call POISK_ZAD("N1",17, "FA", "IM", "OT", "DR", "��.���������� �� 2019 __")  ' � ����� � 4 �������
   Call POISK_ZAD("N7",20, "FA", "IM", "OT", "DR", "��.���������� �� 2019 proba")  ' � ����� � 4 �������
   Call POISK_ZAD("O4", 1, "07", "08", "09", "12", "����� ���������� ���������� ��������� __") ' ����������� ����� 
'   Call POISK_ZAD("N5",20, "FA", "IM", "OT", "DR", "����� ��. ���������� �� 2019 ���� __")  ' � ����� � 4 �������

   Call POISK_ZAD("PR",17, "FA", "IM", "OT", "DR", "��.���������� 2019 ����")  ' ������� ������������ 2019
   Call POISK_ZAD("N2", 1, "07", "08", "09", "12", "����� 2 �� ���� �� 2019 ����")
'   Call POISK_ZAD("RZ", 1, "3" , "4" , "5" , "8" , "������ ��������� __")
'   Call POISK_ZAD("ZZ", 1, "F1", "F2", ""  , "F1", "���� �������")     
'   Call POISK_ZAD("ZZ", 4, "FAM","IMJ",""  , "FAM","���� ������� ������")     
end if

if T="2" then
   if F3="" And F1="" then
      Response.Write "��� � �� ������ �� ���� !<BR>"
      Response.Write "<A href='all-form.asp?T=1'> �����</A><BR>"
      Response.end

   end if
'   Call POISK_ZAD("O2", 4, "O", "G", "N", "32",  "���������� ���������� ��������� __") ' ����������� ����� 
'   Call POISK_ZAD("O3", 4, "O", "G", "N", "32",  "OSK_�������") ' ����������� ����� 
   Call POISK_ZAD("N1", 1, "O", "G", "N", "PNK", "��.���������� �� 2019 ����") ' � ����� � 4 �������
   Call POISK_ZAD("N7", 1, "O", "G", "N", "PNK", "��.���������� �� 2019 ���� proba") ' � ����� � 4 �������
   Call POISK_ZAD("PR", 1, "O", "G", "N", "PNK", "��.���������� 2019 ����") ' 
   Call POISK_ZAD("N2", 1, "O", "G", "N", "05",  "����� 2 �� ���� �� 2019 ����")
'   Call POISK_ZAD("Rz", 1, "O", "G", "N", "2",   "������ ��������� ")
   Call POISK_ZAD("AI", 1, "O", "G", "N", "04",  "�����")
   Call POISK_ZAD("O4", 7, "O", "G", "N", "32",  "����� ���������� ���������� ���������_�") ' ����������� ����� 
'   Call POISK_ZAD("N5", 1, "O", "G", "N", "PNK", "����� ��.���������� �� 2019 ����_� ") ' � ����� � 4 �������
end if

db.Close
Set db = Nothing
Response.Write "<HR><p><font size='1' > "  
Response.Write "����� ������ "  
response.write(DateDiff("s",time,tim_start) & " ������ <br />")
Response.Write " </font> "  
Response.Write "<A href='all-form.asp?T=1'> �����</A><BR>"
%>

<FONT size=1 Color=Tan>  �������� ATOC.mdb ����� ASP &nbsp; &nbsp;  &nbsp; &nbsp; ������ 29.06.2020 </FONT><BR>
</BODY>
</HTML>

