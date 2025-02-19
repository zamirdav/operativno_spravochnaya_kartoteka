
<html>
<head>
   <meta http-equiv="content-Type" content="text/html; charset=windows-1251">
   <title>edit o2</title>
</HEAD>
<BODY>
<!--#INCLUDE FILE="edit.inc"-->
<%
' корректирует на экране поля базы
' Довлетбаев З.С.
' 2019.02.18
' 2020.07.01

call OPEN_BAZA("O2")

if RS.EOF then
   Response.Write "не прочиталоь !"
else
   Response.Write chr(13) & "<FORM action='save-O2.asp' method='post'>" 
   Response.Write "<input type='hidden' name='ADRES' value=" & N & ">" ' невидимый
   Response.Write chr(13) & "<CENTER>"
   Response.Write chr(13) & "<TABLE><TR><TD vAlign=Top width=350>" 
   Response.Write chr(13) & "<Table border=1 bgcolor=lavender>" 'открыть таблицу
   Call Edit_Rek ("фамилия",   "07")
   Call Edit_Rek ("имя",       "08")
   Call Edit_Rek ("отчество",  "09")
   Call Edit_Rek ("дата рожд", "12")
   Call Edit_Rek ("должность", "ZZ3")
   Call Edit_Reks("нац",       "13", "N1_213")
   Call Edit_Rek ("гражданство", "11")
   Call Edit_Rek ("место рождения",     "UF")
   Call Edit_Rek ("адрес",     "ZZ1")
   Call Edit_MP  ("дакто",     "ZZ6", "2")
   Call Edit_MP  ("N арх",     "ZZ5", "3")
   Call Edit_Rek ("дата корр.","KKK")
   Response.Write "</Table>"
   Response.Write "<TD vAlign=Top>"

   Set RS2 = db.Execute("Select * From ATOC_"&Name_Zad&"_4 where AT_1=" & N & ";")
   if NOT Rs2.EOF then
      Response.Write "<Table border=1 cellspacing=0 bgcolor=lavender>"                
      nRea=0                        ' счетчик
      Do while NOT RS2.EOF
         nRea=nRea+1
         NN=rs2.Fields("AT_0").value  ' это адрес мультигруппы
         Response.Write "<TR bgColor=LightCyan><TD colspan=2 align=right><A href='multi_del.asp?F=4&NN="&NN&"&N=" & N  & " &NAME="&Name_Zad&"'>del</A>"  'по del в углу вызов функции удаления мультигрупп
         Call Edit_RekMs("мера",      		"32", "N1_13A") 
  	 Call Edit_RekM ("дата пресечения", 	"ZZ4")
         Call Edit_RekMs("вид преступления", 	"HP", "N1_5HS")
         Call Edit_MgMp ("ст УК",            	"18", "5")
         Call Edit_MgMp ("п",         		"P1", "6")
         Call Edit_RekMs("орган",     		"O", "N1_ORG")  
         Call Edit_RekM ("год",	       		"G")  
         Call Edit_RekM ("№ Уг_дела",     		"N")  
         Call Edit_RekM ("район привлек", 		"ZZ7") 
         Call Edit_RekMs("рез расслед", 		"34", "O2_2RS") 
         Call Edit_RekM ("дата",      		"40") 
         Call Edit_RekM ("район осудив",		"01")
         Call Edit_RekMs("решение суда",       	"45", "O2_2RS") 
         Call Edit_RekM ("срок лет",   	    	"511")
         Call Edit_RekM ("мес",       		"512")
         Call Edit_RekM ("приговор по ст", 	"47") 
         Call Edit_MgMp ("п",         		"471", "7")
         Call Edit_RekM ("Доп квал 1",		"48")
         Call Edit_MgMp ("п",         		"481", "8")
         Call Edit_RekM ("Доп квал 2",		"49") 
         Call Edit_MgMp ("п",         		"491", "9")
         Call Edit_MgMp ("доп меры нак", 		"55", "10")
         Call Edit_RekM ("дата приг", 		"44") 
         Call Edit_RekM ("суммма штрафа",     	"52") 
         Call Edit_MgMp ("содерж ИТУ",   		"31", "11")
         RS2.MoveNext          
      Loop                    
      Response.Write "</Table>"
   end if   
   Response.Write "<A href='multi_add.asp?F=4&N=" & N &  " &NAME="&Name_Zad&"'>добавить мультигруппу</A>"
   Response.Write "</TABLE>"
   Response.Write "</CENTER>"
   Response.Write "<DIV align=right> посмотреть <input type='checkbox' name='VID_SAVE' value='V'></DIV>"
   Response.Write "<input type='SUBMIT' value='Записать'>"
   Response.Write "</FORM>"
'  Response.Write " "&ADRES&" "&N&" "&NN
'  Response.Write "<A href='del_ZAP.asp?F=1&NN="&NN&"&N=" & N & "'><DIV align=right>удалить запись полностью</DIV></A>"  
end if

call CLOSE_BAZA

%>
