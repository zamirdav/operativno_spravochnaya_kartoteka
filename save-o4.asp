
<html>
<head>
   <meta http-equiv="content-Type" content="text/html; charset=windows-1251">
   <title>edit-zap o4</title>
</HEAD>
<BODY>
<!--#INCLUDE FILE="save.inc"-->
<%
' ���������� ������������� � ����
' ���������� �.�.
' 2019.01.30

OPEN_BAZA("o4")

if NOT Rs.EOF then
   Response.Write "<TABLE border=1>"
   Response.Write "<TR><TD>����<TD>� ����<TD>����� ��������<TD>������"
   Call Write_Rek("�������",   "07")
   Call Write_Rek("���",       "08")
   Call Write_Rek("��������",  "09")
   Call Write_Rek("���� ����", "12")
   Call Write_Rek("���������", "ZZ3")
   Call Write_Rek("���",       "13")
   Call Write_Rek("�����������", "11")
   Call Write_Rek("����� ��������",     "UF")
   Call Write_Rek("�����",     "ZZ1")
   Call Write_MP ("�����",     "ZZ6", "2")
   Call Write_MP ("N ���",     "ZZ5", "3")
   Call Write_Rek("���� ����.","KKK")  
   Response.Write "</Table>"
   Response.Write "</TABLE>"  
   nFmulti=7                                     ' ����� ����� ������
   Set rs2 = db.Execute("Select * From ATOC_" & Name_Zad & "_" & nFmulti & " where AT_1=" & ADRES & ";")
   Response.Write "<Table border=1 cellspacing=0 bgcolor=lavender>"  
   nRea=0      
   Do while NOT Rs2.EOF 
      nRea=nRea+1    
      AdresRecM=rs2.Fields("AT_0").value   ' ��� ����� ������������
      Response.Write "<TR bgColor=LightCyan><TD colspan=4 align=right>" & Adres & "-" & AdresRecM
      Call Write_RekM("����",      		"32") 
      Call Write_RekM("���� ����������", 	"ZZ4")
      Call Write_RekM("��� ������������", 	"HP")
      Call Write_MgMp("�� ��",            	"18", "5")
      Call Write_MgMp("�",         		"P1", "6")
      Call Write_RekM("�����",     		"O")  
      Call Write_RekM("���",	       		"G")  
      Call Write_RekM("� ��_����",     		"N")  
      Call Write_RekM("����� �������", 		"ZZ7") 
      Call Write_RekM("��� �������", 		"34") 
      Call Write_RekM("����",      		"40") 
      Call Write_RekM("����� ������",		"01")
      Call Write_RekM("������� ����",       	"45") 
      Call Write_RekM ("���� ���",   	    	"511")
      Call Write_RekM ("���",       		"512")
      Call Write_RekM ("�������� �� ��", 	"47") 
      Call Write_MgMp ("�",         		"471", "7")
      Call Write_RekM ("��� ���� 1",		"48")
      Call Write_MgMp ("�",         		"481", "8")
      Call Write_RekM ("��� ���� 2",		"49") 
      Call Write_MgMp ("�",         		"491", "9")
      Call Write_MgMp ("��� ���� ���", 		"55", "10")
      Call Write_RekM ("���� ����", 		"44") 
      Call Write_RekM ("������ ������",     	"52") 
      Call Write_MgMp ("������ ���",   		"31", "11")

      Rs2.MoveNext          
   Loop                    
   Set rs2 = Nothing
   Response.Write "</Table>"  
end if

CLOSE_BAZA

%>

end if

CLOSE_BAZA

%>
