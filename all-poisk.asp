
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
   Call POISK_ZAD("O4", 1, "07", "08", "09", "12", "новая Оперативно справочная картотека __") ' выполняется поиск 
end if

if T="2" then
   if F3="" And F1="" then
      Response.Write "без № уд искать не буду !<BR>"
      Response.Write "<A href='all-form.asp?T=1'> Выход</A><BR>"
      Response.end

   end if
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

