
<!--#INCLUDE FILE="vid.inc"-->
<%
call OPEN_BAZA("O3","Bisque")

if NOT Rs.EOF then
   Response.Write "<Table><TR><TD vAlign=Top width=350>"
   Response.Write "<Table border=1 bgcolor=lavender>"
   Call Vid_Rek ("�������",       "07")
   Call Vid_Rek ("���",           "08")
   Call Vid_Rek ("��������",      "09")
   Call Vid_RekD("���� ����",     "12")
   Call Vid_Rek ("���������",     "ZZ3")
   Call Vid_RekS("���",           "13", "N1_213")
   Call Vid_Rek ("�����������",   "11")
   Call Vid_Rek ("����� ��������","UF")
   Call Vid_Rek ("�����",       "ZZ1")
   Call Vid_MP  ("�����",       "ZZ6", "2")
   Call Vid_MP  ("N ���",       "ZZ5", "3")
   Call Vid_RekD("���� ����.",  "KKK")
   Response.Write "</TABLE>"
   Response.Write "<BR>"

   Response.Write "<TD vAlign=Top width=300>"

   Set rs2 = db.Execute("Select * From Atoc_o3_4 where AT_1=" & N & ";")
   Response.Write "<Table border=1 cellspacing=0 bgColor=Seashell>"  
   Do while NOT Rs2.EOF 
      NN=rs2.Fields("AT_0").value
      Response.Write "<TR bgColor=LightCyan><TD colspan=2>&nbsp;"
      Call Vid_RekMs("����",      		"32", "N1_13A") 
      Call Vid_RekM ("���� ����������", 	"ZZ4")
      Call Vid_RekMs("��� ������������", 	"HP", "N1_5HS")            
      Call Vid_MgMp ("�� ��",            	"18", "5")
      Call Vid_MgMp ("�",         		"P1", "6")
'     Call Vid_RekMexe("�����", 	    	"O", "<A href='poisk-o3_ud?N=")  
      Call Vid_RekMsC ("�����",     		"O", "N1_ORG")  
      Call Vid_RekMC ("���",	       		"G")  
      Call Vid_RekMC ("��",         		"N")  
      Call Vid_RekM ("����� �������", 		"ZZ7") 
      Call Vid_RekMsC("��� �������", 		"34", "O2_2RS")      
      Call Vid_RekM ("����",      		"40") 
      Call Vid_RekMsC ("����� ������",		"01", "N1_ORG")            
      Call Vid_RekMsC("������� ����",       	"45", "O2_2RS") 
      Call Vid_RekMC ("���� ���",   	    	"511")
      Call Vid_RekM ("���",       		"512")
      Call Vid_RekM ("�������� �� ��", 		"47") 
      Call Vid_MgMp ("�",         		"471", "7")
      Call Vid_RekM ("��� ���� 1",		"48")
      Call Vid_MgMp ("�",         		"481", "8")
      Call Vid_RekM ("��� ���� 2",		"49") 
      Call Vid_MgMp ("�",         		"491", "9")
      Call Vid_MgMp ("��� ���� ���", 		"55", "10")
      Call Vid_RekM ("���� ����", 		"44") 
      Call Vid_RekM ("������ ������",     	"52") 
      Call Vid_MgMp ("������ ���",   		"31", "11")
      Rs2.MoveNext          
   Loop                    
   Response.Write "</TABLE>"

   Response.Write "</TABLE>"
else
   Response.Write "�� ���������� !"
end if

call CLOSE_BAZA

'Response.Write "���������� �.�.<BR>"
'Response.Write "2019.01.01<BR>"

%>
