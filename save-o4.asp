
<html>
<head>
   <meta http-equiv="content-Type" content="text/html; charset=windows-1251">
   <title>edit-zap o4</title>
</HEAD>
<BODY>
<!--#INCLUDE FILE="save.inc"-->
<%
' записывает корректировки в базу
' Довлетбаев З.С.
' 2019.01.30

OPEN_BAZA("o4")

if NOT Rs.EOF then
   Response.Write "<TABLE border=1>"
   Response.Write "<TR><TD>поле<TD>в базе<TD>новое значение<TD>запрос"
   Call Write_Rek("фамилия",   "07")
   Call Write_Rek("имя",       "08")
   Call Write_Rek("отчество",  "09")
   Call Write_Rek("дата рожд", "12")
   Call Write_Rek("должность", "ZZ3")
   Call Write_Rek("нац",       "13")
   Call Write_Rek("гражданство", "11")
   Call Write_Rek("место рождения",     "UF")
   Call Write_Rek("адрес",     "ZZ1")
   Call Write_MP ("дакто",     "ZZ6", "2")
   Call Write_MP ("N арх",     "ZZ5", "3")
   Call Write_Rek("дата корр.","KKK")  
   Response.Write "</Table>"
   Response.Write "</TABLE>"  
   nFmulti=7                                     ' номер файла мульти
   Set rs2 = db.Execute("Select * From ATOC_" & Name_Zad & "_" & nFmulti & " where AT_1=" & ADRES & ";")
   Response.Write "<Table border=1 cellspacing=0 bgcolor=lavender>"  
   nRea=0      
   Do while NOT Rs2.EOF 
      nRea=nRea+1    
      AdresRecM=rs2.Fields("AT_0").value   ' это адрес мультигруппы
      Response.Write "<TR bgColor=LightCyan><TD colspan=4 align=right>" & Adres & "-" & AdresRecM
      Call Write_RekM("мера",      		"32") 
      Call Write_RekM("дата пресечения", 	"ZZ4")
      Call Write_RekM("вид преступления", 	"HP")
      Call Write_MgMp("ст УК",            	"18", "5")
      Call Write_MgMp("п",         		"P1", "6")
      Call Write_RekM("орган",     		"O")  
      Call Write_RekM("год",	       		"G")  
      Call Write_RekM("№ Уг_дела",     		"N")  
      Call Write_RekM("район привлек", 		"ZZ7") 
      Call Write_RekM("рез расслед", 		"34") 
      Call Write_RekM("дата",      		"40") 
      Call Write_RekM("район осудив",		"01")
      Call Write_RekM("решение суда",       	"45") 
      Call Write_RekM ("срок лет",   	    	"511")
      Call Write_RekM ("мес",       		"512")
      Call Write_RekM ("приговор по ст", 	"47") 
      Call Write_MgMp ("п",         		"471", "7")
      Call Write_RekM ("Доп квал 1",		"48")
      Call Write_MgMp ("п",         		"481", "8")
      Call Write_RekM ("Доп квал 2",		"49") 
      Call Write_MgMp ("п",         		"491", "9")
      Call Write_MgMp ("доп меры нак", 		"55", "10")
      Call Write_RekM ("дата приг", 		"44") 
      Call Write_RekM ("суммма штрафа",     	"52") 
      Call Write_MgMp ("содерж ИТУ",   		"31", "11")

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
