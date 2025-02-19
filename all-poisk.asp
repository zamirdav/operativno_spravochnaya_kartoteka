
<html>
<head>
   <meta http-equiv="content-Type" content="text/html; charset=windows-1251">
   <title>поиск ALL</title>
</HEAD>
<BODY bgcolor=LightCyan>
<!--#INCLUDE FILE="all-poisk.inc"-->  
<%
' 2020.08.26 переставил реквизиты местами
'2021.08.12 Or F1="" поставил для статистики строка 40 для внутреннего вложения 
'
'
Tim_start=Time
'Response.Write "Довлетбаев З.С.<BR>"
'Response.Write "2019.01.24<BR>"
'27.11.2020 добавил поиск по ОСК О3


'Response.Write "<DIV align=right><A href='pass.asp'>&nbsp;" & KOT_FIO & "&nbsp;</A></DIV>"  

T = Request.QueryString("T") 

if T="1" then
   if F1="" then 
      Response.Write "без фамилии искать не буду !<BR><BR><BR><BR>"
      Response.Write "<A href='all-form.asp?T=1'> Выход</A><BR>"
      Response.end
   end if
'   Call POISK_ZAD("O2", 1, "07", "08", "09", "12", "Оперативно справочная картотека __") ' выполняется поиск 
'   Call POISK_ZAD("O3", 1, "07", "08", "09", "12", "OSK_обновл") ' добавил 27.11.2020 поиск э
   Call POISK_ZAD("N1",17, "FA", "IM", "OT", "DR", "уг.статистика до 2019 __")  ' и вывод в 4 таблицы
   Call POISK_ZAD("N7",20, "FA", "IM", "OT", "DR", "уг.статистика до 2019 proba")  ' и вывод в 4 таблицы
   Call POISK_ZAD("O4", 1, "07", "08", "09", "12", "новая Оперативно справочная картотека __") ' выполняется поиск 
'   Call POISK_ZAD("N5",20, "FA", "IM", "OT", "DR", "новая уг. статистика до 2019 года __")  ' и вывод в 4 таблицы

   Call POISK_ZAD("PR",17, "FA", "IM", "OT", "DR", "уг.статистика 2019 года")  ' добавил преступления 2019
   Call POISK_ZAD("N2", 1, "07", "08", "09", "12", "форма 2 на лица до 2019 года")
'   Call POISK_ZAD("RZ", 1, "3" , "4" , "5" , "8" , "розыск настоящий __")
'   Call POISK_ZAD("ZZ", 1, "F1", "F2", ""  , "F1", "база пробная")     
'   Call POISK_ZAD("ZZ", 4, "FAM","IMJ",""  , "FAM","база пробная мульти")     
end if

if T="2" then
   if F3="" And F1="" then
      Response.Write "без № уд искать не буду !<BR>"
      Response.Write "<A href='all-form.asp?T=1'> Выход</A><BR>"
      Response.end

   end if
'   Call POISK_ZAD("O2", 4, "O", "G", "N", "32",  "Оперативно справочная картотека __") ' выполняется поиск 
'   Call POISK_ZAD("O3", 4, "O", "G", "N", "32",  "OSK_обновле") ' выполняется поиск 
   Call POISK_ZAD("N1", 1, "O", "G", "N", "PNK", "уг.статистика до 2019 года") ' и вывод в 4 таблицы
   Call POISK_ZAD("N7", 1, "O", "G", "N", "PNK", "уг.статистика до 2019 года proba") ' и вывод в 4 таблицы
   Call POISK_ZAD("PR", 1, "O", "G", "N", "PNK", "уг.статистика 2019 года") ' 
   Call POISK_ZAD("N2", 1, "O", "G", "N", "05",  "форма 2 на лица до 2019 года")
'   Call POISK_ZAD("Rz", 1, "O", "G", "N", "2",   "розыск настоящий ")
   Call POISK_ZAD("AI", 1, "O", "G", "N", "04",  "Архив")
   Call POISK_ZAD("O4", 7, "O", "G", "N", "32",  "новая Оперативно справочная картотека_м") ' выполняется поиск 
'   Call POISK_ZAD("N5", 1, "O", "G", "N", "PNK", "новая уг.статистика до 2019 года_м ") ' и вывод в 4 таблицы
end if

db.Close
Set db = Nothing
Response.Write "<HR><p><font size='1' > "  
Response.Write "время поиска "  
response.write(DateDiff("s",time,tim_start) & " секунд <br />")
Response.Write " </font> "  
Response.Write "<A href='all-form.asp?T=1'> Выход</A><BR>"
%>

<FONT size=1 Color=Tan>  просмотр ATOC.mdb через ASP &nbsp; &nbsp;  &nbsp; &nbsp; версия 29.06.2020 </FONT><BR>
</BODY>
</HTML>

