<HTML>
<HEAD>
   <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
   <TITLE>ATOC.asp zapros ALL</TITLE>
</HEAD>
<BODY bgcolor=Tan>
<!--#INCLUDE FILE="all-form.inc"-->
<%
T = Request.QueryString("T") 

if T="1" then
   call FORMA_FIO
end if
if T="2" then
   call FORMA_UD
end if

%>
<BR>
<BR>
<BR>
<BR>
<A href=create_i.asp </A><BR> 
<A href="../index.htm"><IMG src="�����.gif" border=0 alt="�����"></A><BR>
<FONT size=1 Color=Tan>  �������� ATOC.mdb ����� ASP &nbsp; &nbsp;  &nbsp; &nbsp; ������ 27.01.2019 </FONT><BR>
</BODY>
</HTML>

