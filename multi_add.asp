
<html>
<head>
   <meta http-equiv="content-Type" content="text/html; charset=windows-1251">
   <title>add multi</title>
</HEAD>
<BODY>
<%
'Name_Zad="o2"
Name_Zad = Request.QueryString("NAME")
ADRES =    Request.QueryString("N")
nFil  =    Request.QueryString("F")
Response.Write " " & ADRES & " "& nFil & "<BR>"
Response.Write" Name= "& Name_Zad& "<BR>"
Z_VVOD1 = "insert into ATOC_"& Name_Zad & "_" & nFil & " (AT_1) "
Z_VVOD2 = "values (" & ADRES & ");"
Response.Write Z_VVOD1 & Z_VVOD2 & "<BR>"
Set db = Server.CreateObject("ADODB.Connection") 
db.Open "ATOC1"                                  
Set RZ_Z = DB.Execute(Z_VVOD1&Z_VVOD2) 
Set RZ_Z = Nothing

db.Close
Set db = Nothing

Response.Redirect "edit-"&Name_Zad&".asp?N=" & ADRES
%>
