
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
   Call POISK_ZAD("O4", 1, "07", "08", "09", "12", "����� ���������� ���������� ��������� __") ' ����������� ����� 
end if

if T="2" then
   if F3="" And F1="" then
      Response.Write "��� � �� ������ �� ���� !<BR>"
      Response.Write "<A href='all-form.asp?T=1'> �����</A><BR>"
      Response.end

   end if
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

