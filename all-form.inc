<%
' 2020.08.26 переставил реквизиты местами
'
DIM T
sub FORMA_FIO
%>

поиск по всем базам по ФИО<BR>
<BR>
<BR>
<CENTER>
<table BORDER=40>
   <tr>
   <td WIDTH="340" BGCOLOR="lightblue" valign=top>
   <CENTER><br>
   <FONT size=5> кого будем искать ? </FONT><BR>
   <BR>
   <FORM action="all-poisk.asp">        
      <input type="HIDDEN" name="T" value="1">
      <TABLE>
         <TR><TD>Фамилия    <TD><input type="TEXT" name="P1" value="М">
         <TR><TD>Имя        <TD><input type="TEXT" name="P2" value="">
         <TR><TD>Отчество   <TD><input type="TEXT" name="P3" value="">
         <TR><TD>Дата рожд. <TD><input type="TEXT" name="P4" value="">
         <TR><TD> </TD><TD><BR>
         <input type="SUBMIT" value="Искать"></TD></TR>
      </TABLE>
   </FORM>
   </CENTER>
</table>
</CENTER>
<BR>
<BR>
<%
end sub



sub FORMA_UD
%>
поиск по № УД все базы<BR>
<BR>
<BR>
<CENTER>
<table BORDER=40>
   <tr>
   <td WIDTH="340" BGCOLOR="lightblue" valign=top>
   <CENTER><br>
   <FONT size=5> кого будем искать ? </FONT><BR>
   <BR>
   <FORM action="all-poisk.asp">
      <input type="HIDDEN" name="T" value="2">
      <TABLE>
           <TR><TD>орган    <TD><input type="TEXT" name="P1" value="">
           <TR><TD>год      <TD><input type="TEXT" name="P2" value="">
	   <TR><TD>№ УД     <TD><input type="TEXT" name="P3" value="50">
	   <TR><TD>пор №    <TD><input type="TEXT" name="P4" value="">
	   <TR><TD> </TD><TD><BR>
           <input type="SUBMIT" value="Искать"></TD></TR>
      </TABLE>
   </FORM>
   </CENTER>
</table>
</CENTER>
<BR>
<BR>
<%
end sub

%>
