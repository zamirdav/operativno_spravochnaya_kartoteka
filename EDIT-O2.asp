
<html>
<head>
   <meta http-equiv="content-Type" content="text/html; charset=windows-1251">
   <title>edit o2</title>
</HEAD>
<BODY>
<!--#INCLUDE FILE="edit.inc"-->
<%
' ������������ �� ������ ���� ����
' ���������� �.�.
' 2019.02.18
' 2020.07.01

call OPEN_BAZA("O2")

if RS.EOF then
   Response.Write "�� ���������� !"
else
   Response.Write chr(13) & "<FORM action='save-O2.asp' method='post'>" 
   Response.Write "<input type='hidden' name='ADRES' value=" & N & ">" ' ���������
   Response.Write chr(13) & "<CENTER>"
   Response.Write chr(13) & "<TABLE><TR><TD vAlign=Top width=350>" 
   Response.Write chr(13) & "<Table border=1 bgcolor=lavender>" '������� �������
   Call Edit_Rek ("�������",   "07")
   Call Edit_Rek ("���",       "08")
   Call Edit_Rek ("��������",  "09")
   Call Edit_Rek ("���� ����", "12")
   Call Edit_Rek ("���������", "ZZ3")
   Call Edit_Reks("���",       "13", "N1_213")
   Call Edit_Rek ("�����������", "11")
   Call Edit_Rek ("����� ��������",     "UF")
   Call Edit_Rek ("�����",     "ZZ1")
   Call Edit_MP  ("�����",     "ZZ6", "2")
   Call Edit_MP  ("N ���",     "ZZ5", "3")
   Call Edit_Rek ("���� ����.","KKK")
   Response.Write "</Table>"
   Response.Write "<TD vAlign=Top>"

   Set RS2 = db.Execute("Select * From ATOC_"&Name_Zad&"_4 where AT_1=" & N & ";")
   if NOT Rs2.EOF then
      Response.Write "<Table border=1 cellspacing=0 bgcolor=lavender>"                
      nRea=0                        ' �������
      Do while NOT RS2.EOF
         nRea=nRea+1
         NN=rs2.Fields("AT_0").value  ' ��� ����� ������������
         Response.Write "<TR bgColor=LightCyan><TD colspan=2 align=right><A href='multi_del.asp?F=4&NN="&NN&"&N=" & N  & " &NAME="&Name_Zad&"'>del</A>"  '�� del � ���� ����� ������� �������� �����������
         Call Edit_RekMs("����",      		"32", "N1_13A") 
  	 Call Edit_RekM ("���� ����������", 	"ZZ4")
         Call Edit_RekMs("��� ������������", 	"HP", "N1_5HS")
         Call Edit_MgMp ("�� ��",            	"18", "5")
         Call Edit_MgMp ("�",         		"P1", "6")
         Call Edit_RekMs("�����",     		"O", "N1_ORG")  
         Call Edit_RekM ("���",	       		"G")  
         Call Edit_RekM ("� ��_����",     		"N")  
         Call Edit_RekM ("����� �������", 		"ZZ7") 
         Call Edit_RekMs("��� �������", 		"34", "O2_2RS") 
         Call Edit_RekM ("����",      		"40") 
         Call Edit_RekM ("����� ������",		"01")
         Call Edit_RekMs("������� ����",       	"45", "O2_2RS") 
         Call Edit_RekM ("���� ���",   	    	"511")
         Call Edit_RekM ("���",       		"512")
         Call Edit_RekM ("�������� �� ��", 	"47") 
         Call Edit_MgMp ("�",         		"471", "7")
         Call Edit_RekM ("��� ���� 1",		"48")
         Call Edit_MgMp ("�",         		"481", "8")
         Call Edit_RekM ("��� ���� 2",		"49") 
         Call Edit_MgMp ("�",         		"491", "9")
         Call Edit_MgMp ("��� ���� ���", 		"55", "10")
         Call Edit_RekM ("���� ����", 		"44") 
         Call Edit_RekM ("������ ������",     	"52") 
         Call Edit_MgMp ("������ ���",   		"31", "11")
         RS2.MoveNext          
      Loop                    
      Response.Write "</Table>"
   end if   
   Response.Write "<A href='multi_add.asp?F=4&N=" & N &  " &NAME="&Name_Zad&"'>�������� ������������</A>"
   Response.Write "</TABLE>"
   Response.Write "</CENTER>"
   Response.Write "<DIV align=right> ���������� <input type='checkbox' name='VID_SAVE' value='V'></DIV>"
   Response.Write "<input type='SUBMIT' value='��������'>"
   Response.Write "</FORM>"
'  Response.Write " "&ADRES&" "&N&" "&NN
'  Response.Write "<A href='del_ZAP.asp?F=1&NN="&NN&"&N=" & N & "'><DIV align=right>������� ������ ���������</DIV></A>"  
end if

call CLOSE_BAZA

%>
