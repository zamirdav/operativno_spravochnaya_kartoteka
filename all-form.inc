<%
' 2020.08.26 ���������� ��������� �������
'
DIM T
sub FORMA_FIO
%>

����� �� ���� ����� �� ���<BR>
<BR>
<BR>
<CENTER>
<table BORDER=40>
   <tr>
   <td WIDTH="340" BGCOLOR="lightblue" valign=top>
   <CENTER><br>
   <FONT size=5> ���� ����� ������ ? </FONT><BR>
   <BR>
   <FORM action="all-poisk.asp">        
      <input type="HIDDEN" name="T" value="1">
      <TABLE>
         <TR><TD>�������    <TD><input type="TEXT" name="P1" value="�">
         <TR><TD>���        <TD><input type="TEXT" name="P2" value="">
         <TR><TD>��������   <TD><input type="TEXT" name="P3" value="">
         <TR><TD>���� ����. <TD><input type="TEXT" name="P4" value="">
         <TR><TD> </TD><TD><BR>
         <input type="SUBMIT" value="������"></TD></TR>
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
����� �� � �� ��� ����<BR>
<BR>
<BR>
<CENTER>
<table BORDER=40>
   <tr>
   <td WIDTH="340" BGCOLOR="lightblue" valign=top>
   <CENTER><br>
   <FONT size=5> ���� ����� ������ ? </FONT><BR>
   <BR>
   <FORM action="all-poisk.asp">
      <input type="HIDDEN" name="T" value="2">
      <TABLE>
           <TR><TD>�����    <TD><input type="TEXT" name="P1" value="">
           <TR><TD>���      <TD><input type="TEXT" name="P2" value="">
	   <TR><TD>� ��     <TD><input type="TEXT" name="P3" value="50">
	   <TR><TD>��� �    <TD><input type="TEXT" name="P4" value="">
	   <TR><TD> </TD><TD><BR>
           <input type="SUBMIT" value="������"></TD></TR>
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
