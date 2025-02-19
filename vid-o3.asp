
<!--#INCLUDE FILE="vid.inc"-->
<%
call OPEN_BAZA("O3","Bisque")

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

   Set rs2 = db.Execute("Select * From Atoc_o3_4 where AT_1=" & N & ";")
   Response.Write "<Table border=1 cellspacing=0 bgColor=Seashell>"  
   Do while NOT Rs2.EOF 
      NN=rs2.Fields("AT_0").value
      Response.Write "<TR bgColor=LightCyan><TD colspan=2>&nbsp;"
      Call Vid_RekMs("мера",      		"32", "N1_13A") 
      Call Vid_RekM ("дата пресечения", 	"ZZ4")
      Call Vid_RekMs("вид преступления", 	"HP", "N1_5HS")            
      Call Vid_MgMp ("ст УК",            	"18", "5")
      Call Vid_MgMp ("п",         		"P1", "6")
'     Call Vid_RekMexe("орган", 	    	"O", "<A href='poisk-o3_ud?N=")  
      Call Vid_RekMsC ("орган",     		"O", "N1_ORG")  
      Call Vid_RekMC ("год",	       		"G")  
      Call Vid_RekMC ("УД",         		"N")  
      Call Vid_RekM ("район привлек", 		"ZZ7") 
      Call Vid_RekMsC("рез расслед", 		"34", "O2_2RS")      
      Call Vid_RekM ("дата",      		"40") 
      Call Vid_RekMsC ("район осудив",		"01", "N1_ORG")            
      Call Vid_RekMsC("решение суда",       	"45", "O2_2RS") 
      Call Vid_RekMC ("срок лет",   	    	"511")
      Call Vid_RekM ("мес",       		"512")
      Call Vid_RekM ("приговор по ст", 		"47") 
      Call Vid_MgMp ("п",         		"471", "7")
      Call Vid_RekM ("Доп квал 1",		"48")
      Call Vid_MgMp ("п",         		"481", "8")
      Call Vid_RekM ("Доп квал 2",		"49") 
      Call Vid_MgMp ("п",         		"491", "9")
      Call Vid_MgMp ("доп меры нак", 		"55", "10")
      Call Vid_RekM ("дата приг", 		"44") 
      Call Vid_RekM ("суммма штрафа",     	"52") 
      Call Vid_MgMp ("содерж ИТУ",   		"31", "11")
      Rs2.MoveNext          
   Loop                    
   Response.Write "</TABLE>"

   Response.Write "</TABLE>"
else
   Response.Write "не прочиталоь !"
end if

call CLOSE_BAZA

'Response.Write "Довлетбаев З.С.<BR>"
'Response.Write "2019.01.01<BR>"

%>
