
<!--#INCLUDE FILE="vid.inc"-->
<script src = "sweetalert.min.js"></script>
<link rel="stylesheet" href="style.css">

<%
sub VID_AI
'   rO=rs2.Fields("rO").value
'   rG=rs2.Fields("rG").value
'   rN=rs2.Fields("rN").value
   ZAPROS = "Select * From ATOC_AI_1 where "
   ZAPROS = ZAPROS & "     rO='" & rO & "' "
   ZAPROS = ZAPROS & " and rG='" & rG & "' "
   ZAPROS = ZAPROS & " and rN='" & rN & "';"
   On Error Resume Next          ' �������� �������� ������
   Set RS_AI = db.Execute(ZAPROS)
   if db.Errors.Count > 0 then
      Response.Write "������ ������� � ������� AI<BR>" & ZAPROS & "<BR>"  
      exit sub
   end if
   

'   Response.Write "O=" & rO & "&G=" & rG & "&N=" & rN & "<BR>"
   if RS_AI.eof then
'      Response.Write "<A href='add_IA.asp?O=" & rO & "&G=" & rG & "&N=" & rN & "'> ��������</A><BR>"
   else
'   Response.Write "<DIV align=center Color=Blue> <FONT color=firebrick> |�������� �����|��������|���� �� ������|����|������|� ���������|"     ' LightCyan

	 Response.Write "<Table border=1 cellspacing=0>"
      Do while NOT RS_AI.EOF 
         N_AI = RS_AI.Fields("AT_0").value 
         PR   = RS_AI.Fields("rAR2").value
'         Response.Write RS_AI.Fields("r"&AR2).value 
         T = Request.QueryString("T") 
'         Response.Write "<FONT size=+3>" "</FONT><BR>" >"
'         Response.Write "<script>swal('�������� ������������ ����', '����������', 'success');</script>"
         Response.Write "<script>swal('�������� ������������ ����', '����������', 'success');</script>"
'         Response.Write "<script>alert('�������� ������������ ����');Color=CornSilk </script><BR>"
'         Response.Write"<div id='blink7'> "
'        Response.Write "<TR><TD align=right >""<div id='blink7'>" �������� ����� <TD> �������� <TD> ���� �� ������ <TD> ���� <TD> ������ <TD> � ���������"</DIV>"
         Response.Write "<TR bgcolor=#FFE4E1 ><TD align=right > �������� ����� </TD><TD> �������� </TD><TD> ���� �� ������ </TD><TD> ���� </TD><TD> ������ </TD><TD> � ���������</TD </DIV></TR>"
'         Response.Write "<DIV align=center Color=Blue> <FONT color=firebrick> |�������� �����|��������|���� �� ������|����|������|� ���������|"     ' LightCyan
         Response.Write "<TR bgcolor=#FFE4E1 <div id='blink-2' ><TD  align=right><A href='Vid-AI.asp?N=" & N_AI & "' target='_blank'>" & PR & " &nbsp;</A></DIV>"
'         Response.Write "<TR><TD align=right><A href='Vid-AI.asp?N=" & N_AI & "'>" & PR & " </A>"
         Response.Write "<TD>&nbsp;" & RS_AI.Fields("rAR13").value 
'Call Vid_RekS("����������",       "AR0", "N1_142")
         Response.Write "<TD>&nbsp;" & RS_AI.Fields("rAR0").value 
         Response.Write "<TD>&nbsp;" & RS_AI.Fields("rAR12").value 
         Response.Write "<TD>&nbsp;" & RS_AI.Fields("rAR16").value 
         Response.Write "<TD>&nbsp;" & RS_AI.Fields("rAR14").value 
         Response.Write "</TD> </TD>"
'         Response.Write"</div>"

'         Response.Write "</FONT><BR>" 
         RS_AI.MoveNext          
      Response.Write "</TABLE>"

      Loop                    
   end if
   Response.Write "</DIV>"
   Set RS_AI = Nothing
end sub

call OPEN_BAZA("o4","Bisque")

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


   Set rs2 = db.Execute("Select * From ATOC_o4_7 where AT_1=" & N & ";")


   Do while NOT Rs2.EOF 
      Response.Write "<Table border=1 cellspacing=0 bgColor=Seashell>"  
' 16_04_2021 ��� ��� ���� ������������� ��� VID_AI
      rO=rs2.Fields("rO").value
      rG=rs2.Fields("rG").value
      rN=rs2.Fields("rN").value
      call VID_AI

      Response.Write "<Table border=1 cellspacing=0 bgColor=Seashell>"  
      NN=rs2.Fields("AT_0").value
      Response.Write "<TR bgColor=LightCyan><TD colspan=2>&nbsp;"
      Call Vid_RekMs("����",      		"32", "N1_13A") 
      Call Vid_RekM ("���� ����������", 	"ZZ4")
      Call Vid_RekMs("��� ������������", 	"HP", "N1_5HS")            
      Call Vid_MgMp ("�� ��",            	"18", "10")
      Call Vid_MgMp ("�",         		"P1", "11")
'      Call Vid_RekMexe("�����", 	    	"O", "<A href='dop-poisk.asp?N="&N & "</A>")  
      Call Vid_RekMC ("�����",     		"O")  
      Call Vid_RekMC ("���",	       		"G")  
      Call Vid_RekMC ("��",         		"N")  
      Call Vid_RekMs ("����� �������", 		"ZZ7", "N1_01") 
      Call Vid_RekMsC("��� �������", 		"34", "O2_2RS")      
      Call Vid_RekM  ("����",      		"40") 
      Call Vid_RekMsC ("����� ������",		"01", "N1_01")            
      Call Vid_RekMsC("������� ����",       	"45", "O2_2RS") 
      Call Vid_RekMC ("���� ���",   	    	"511")
      Call Vid_RekM ("���",       		"512")
      Call Vid_RekM ("�������� �� ��", 		"47") 
      Call Vid_MgMp ("�",         		"471","12")
'      Call Vid_RekM ("��� ���� 1",		"48")
      Call Vid_MgMp ("�",         		"481", "14")
'      Call Vid_RekM ("��� ���� 2",		"49") 
      Call Vid_MgMp ("�",         		"491", "15")
      Call Vid_MgMp ("��� ���� ���", 		"55", "9")
      Call Vid_RekM ("���� ����", 		"44") 
      Call Vid_RekM ("������ ������",     	"52") 
      Call Vid_MgMp ("������ ���",   		"31", "13")
      
      Response.Write "</TABLE>"

'      NP=N-1 '�������� ��������� ���������� ������ ������--------------
'      if NP=0 then  NP=NP+1 
'     
'      Response.Write chr(13) & "<BR><A href='vid-" & Name_Zad & ".asp?N=" & NP & "'><DIV align=left>���������� ������</DIV></A><BR>" 
'
'      NK=N+1 '�������� ��������� ��������� ������ ������--------------
'      if NK=0 then  NK=NK+1
'      Response.Write chr(13) & "<A href='vid-" & Name_Zad & ".asp?N=" & NK & "'><DIV align=left>��������� ������</DIV></A><BR>" 
'      Response.Write chr(13) & "<A href='edit-" & Name_Zad & ".asp?N=" & N & "'><DIV align=left> �������������</DIV></A><BR>" 
'      Response.Write "<TD valign=top>"
      Rs2.MoveNext          



   Loop                    
'   Response.Write "</TABLE>"

'   Response.Write "O=" & rO & "&G=" & rG & "&N=" & rN & "<BR>"
'  call VID_AI
   Response.Write "</TABLE>"

else
   Response.Write "�� ���������� !"
end if

call CLOSE_BAZA

'Response.Write "���������� �.�.<BR>"
'Response.Write "2019.01.01<BR>"

%>
