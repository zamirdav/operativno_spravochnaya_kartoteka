
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
   On Error Resume Next          ' включает контроль ошибок
   Set RS_AI = db.Execute(ZAPROS)
   if db.Errors.Count > 0 then
      Response.Write "ошибка запроса в таблице AI<BR>" & ZAPROS & "<BR>"  
      exit sub
   end if
   

'   Response.Write "O=" & rO & "&G=" & rG & "&N=" & rN & "<BR>"
   if RS_AI.eof then
'      Response.Write "<A href='add_IA.asp?O=" & rO & "&G=" & rG & "&N=" & rN & "'> добавить</A><BR>"
   else
'   Response.Write "<DIV align=center Color=Blue> <FONT color=firebrick> |Архивный номер|выделено|прек по статье|дата|статья|в отношении|"     ' LightCyan

	 Response.Write "<Table border=1 cellspacing=0>"
      Do while NOT RS_AI.EOF 
         N_AI = RS_AI.Fields("AT_0").value 
         PR   = RS_AI.Fields("rAR2").value
'         Response.Write RS_AI.Fields("r"&AR2).value 
         T = Request.QueryString("T") 
'         Response.Write "<FONT size=+3>" "</FONT><BR>" >"
'         Response.Write "<script>swal('Внимание прекращенное дело', 'Посмотреть', 'success');</script>"
         Response.Write "<script>swal('Внимание прекращенное дело', 'Посмотреть', 'success');</script>"
'         Response.Write "<script>alert('Внимание прекращенное дело');Color=CornSilk </script><BR>"
'         Response.Write"<div id='blink7'> "
'        Response.Write "<TR><TD align=right >""<div id='blink7'>" Архивный номер <TD> выделено <TD> прек по статье <TD> дата <TD> статья <TD> в отношении"</DIV>"
         Response.Write "<TR bgcolor=#FFE4E1 ><TD align=right > Архивный номер </TD><TD> выделено </TD><TD> прек по статье </TD><TD> дата </TD><TD> статья </TD><TD> в отношении</TD </DIV></TR>"
'         Response.Write "<DIV align=center Color=Blue> <FONT color=firebrick> |Архивный номер|выделено|прек по статье|дата|статья|в отношении|"     ' LightCyan
         Response.Write "<TR bgcolor=#FFE4E1 <div id='blink-2' ><TD  align=right><A href='Vid-AI.asp?N=" & N_AI & "' target='_blank'>" & PR & " &nbsp;</A></DIV>"
'         Response.Write "<TR><TD align=right><A href='Vid-AI.asp?N=" & N_AI & "'>" & PR & " </A>"
         Response.Write "<TD>&nbsp;" & RS_AI.Fields("rAR13").value 
'Call Vid_RekS("прекращено",       "AR0", "N1_142")
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
   Call Vid_Rek ("фамилия",       "07")
   Call Vid_Rek ("имя",           "08")
   Call Vid_Rek ("отчество",      "09")
   Call Vid_RekD("дата рожд",     "12")
   Call Vid_Rek ("должность",     "ZZ3")
   Call Vid_RekS("нац",           "13", "N1_213")
   Call Vid_Rek ("гражданство",   "11")
   Call Vid_Rek ("место рождения","UF")
   Call Vid_Rek ("адрес",       "ZZ1")
   Call Vid_MP  ("дакто",       "ZZ6", "2")
   Call Vid_MP  ("N арх",       "ZZ5", "3")
   Call Vid_RekD("дата корр.",  "KKK")
   Response.Write "</TABLE>"
   Response.Write "<BR>"
   Response.Write "<TD vAlign=Top width=300>"


   Set rs2 = db.Execute("Select * From ATOC_o4_7 where AT_1=" & N & ";")


   Do while NOT Rs2.EOF 
      Response.Write "<Table border=1 cellspacing=0 bgColor=Seashell>"  
' 16_04_2021 все что ниже предназначено для VID_AI
      rO=rs2.Fields("rO").value
      rG=rs2.Fields("rG").value
      rN=rs2.Fields("rN").value
      call VID_AI

      Response.Write "<Table border=1 cellspacing=0 bgColor=Seashell>"  
      NN=rs2.Fields("AT_0").value
      Response.Write "<TR bgColor=LightCyan><TD colspan=2>&nbsp;"
      Call Vid_RekMs("мера",      		"32", "N1_13A") 
      Call Vid_RekM ("дата пресечения", 	"ZZ4")
      Call Vid_RekMs("вид преступления", 	"HP", "N1_5HS")            
      Call Vid_MgMp ("ст УК",            	"18", "10")
      Call Vid_MgMp ("п",         		"P1", "11")
'      Call Vid_RekMexe("орган", 	    	"O", "<A href='dop-poisk.asp?N="&N & "</A>")  
      Call Vid_RekMC ("орган",     		"O")  
      Call Vid_RekMC ("год",	       		"G")  
      Call Vid_RekMC ("УД",         		"N")  
      Call Vid_RekMs ("район привлек", 		"ZZ7", "N1_01") 
      Call Vid_RekMsC("рез расслед", 		"34", "O2_2RS")      
      Call Vid_RekM  ("дата",      		"40") 
      Call Vid_RekMsC ("район осудив",		"01", "N1_01")            
      Call Vid_RekMsC("решение суда",       	"45", "O2_2RS") 
      Call Vid_RekMC ("срок лет",   	    	"511")
      Call Vid_RekM ("мес",       		"512")
      Call Vid_RekM ("приговор по ст", 		"47") 
      Call Vid_MgMp ("п",         		"471","12")
'      Call Vid_RekM ("Доп квал 1",		"48")
      Call Vid_MgMp ("п",         		"481", "14")
'      Call Vid_RekM ("Доп квал 2",		"49") 
      Call Vid_MgMp ("п",         		"491", "15")
      Call Vid_MgMp ("доп меры нак", 		"55", "9")
      Call Vid_RekM ("дата приг", 		"44") 
      Call Vid_RekM ("суммма штрафа",     	"52") 
      Call Vid_MgMp ("содерж ИТУ",   		"31", "13")
      
      Response.Write "</TABLE>"

'      NP=N-1 'алгоритм просмотра предыдущей записи начало--------------
'      if NP=0 then  NP=NP+1 
'     
'      Response.Write chr(13) & "<BR><A href='vid-" & Name_Zad & ".asp?N=" & NP & "'><DIV align=left>предыдущая запись</DIV></A><BR>" 
'
'      NK=N+1 'алгоритм просмотра следующей записи начало--------------
'      if NK=0 then  NK=NK+1
'      Response.Write chr(13) & "<A href='vid-" & Name_Zad & ".asp?N=" & NK & "'><DIV align=left>следующая запись</DIV></A><BR>" 
'      Response.Write chr(13) & "<A href='edit-" & Name_Zad & ".asp?N=" & N & "'><DIV align=left> Корректировка</DIV></A><BR>" 
'      Response.Write "<TD valign=top>"
      Rs2.MoveNext          



   Loop                    
'   Response.Write "</TABLE>"

'   Response.Write "O=" & rO & "&G=" & rG & "&N=" & rN & "<BR>"
'  call VID_AI
   Response.Write "</TABLE>"

else
   Response.Write "не прочиталоь !"
end if

call CLOSE_BAZA

'Response.Write "Довлетбаев З.С.<BR>"
'Response.Write "2019.01.01<BR>"

%>
