<HTML>
<HEAD>
   <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
   <TITLE>stat_O2_1.asp </TITLE>
</HEAD>
<BODY bgcolor=Tan>
<%
Set db = Server.CreateObject("ADODB.Connection") 
db.Open "ATOC1"   
Name_Zad="ATOC_o2_1"   
pSlv="n1_213"   '��������������---������� ������� �������� ������ ����������
POLE="r13"       '������� ���� �������� ������ ����������


function Slv_Get(pSlv,znaRek)             ' ���������� �� ������� ��� � ����������� 
   A=znaRek 
   On Error Resume Next
   Set rsSLV = db.Execute("Select * From slv_" & pSlv & " where KD=" & znaRek & ";")
   if db.Errors.Count > 0 then
      A=A & " - �� ��������"
   else
      if NOT rsSLV.EOF then A=A & " <FONT size=-1 color=DarkGreen>" & rsSLV.Fields("TX").value & "</FONT>"
      Set rsSLV = Nothing
   end if
   Slv_Get=A
end function


dim MAC(999)


sub MAC_CLEAR
   S=1
   Do while S<999
      MAC(S)=0
      S=S+1
   Loop                    

end sub



sub SPISOK_SHET(POLE)
   call MAC_CLEAR
   ZAPROS = "Select * From "& Name_Zad&" order by "&POLE&";"
   On Error Resume Next          ' �������� �������� ������
   Set rs = db.Execute(ZAPROS)
   if db.Errors.Count > 0 then
      Response.Write "������ ���������� �������<BR>"   
      Response.Write ZAPROS & "<BR>"
      exit sub
   end if
      Do while NOT Rs.EOF 
         S=rs.Fields(POLE).value 
         if S<1 then S=999
         if S>999 then S=999
         MAC(S)=MAC(S)+1
         Rs.MoveNext          
      Loop                    
end sub



sub SPISOK_PRINT
   Response.Write "<TABLE border=><TR><TD>��������������<TD>�����"
   S=1
   KOL=0
   Do while S<999
            	
      ZNA=MAC(S)
      if ZNA>0 then
         ZNA="<A href='STAT_o2_1.asp?ORGAN=" & S & "'>&nbsp;<FONT size=+1>" & ZNA & "</FONT>&nbsp;</A>"
         Response.Write "<TR><TD>" & Slv_Get(pSlv,S) & "<TD align=right>" & ZNA
         KOL=KOL+1
         if (KOL=19)or(KOL=38)or(KOL=57)or(KOL=76)or(KOL=95)or(KOL=114)or(KOL=133)or(KOL=152)or(KOL=171)or(KOL=190) then Response.Write "</TABLE><TABLE border=1 align=left><TR><TD>��������������<TD>�����"
      end if
      S=S+1


   Loop                    
   Response.Write "</TABLE>"
   Response.Write "</TABLE>"
end sub




sub ORGAN_SHET(ORGAN)
   call MAC_CLEAR
   ZAPROS = "Select * From "& Name_Zad&" where "&POLE&"='" & ORGAN & "' order by " &POLE&";"
   On Error Resume Next         
   Set rs = db.Execute(ZAPROS)
   if db.Errors.Count > 0 then
      Response.Write "������ ���������� �������<BR>"   
      Response.Write ZAPROS & "<BR>"
      exit sub
   end if
   KOL_ZAP=0
   Response.Write "<Table border=1 cellspacing=0>"
   Do while NOT Rs.EOF 
      N=rs.Fields("AT_0").value 
      KOL_ZAP = KOL_ZAP + 1 
      Response.Write "<TR><TD align=right><A href='vid-O2.asp?N=" & N & "'>"& KOL_ZAP&"&nbsp;</A>"
      Response.Write "<TD>&nbsp;" & rs.Fields("rF1").value 
      Response.Write "<TD>&nbsp;" & rs.Fields("rF2").value 
      Response.Write "<TD>&nbsp;" & rs.Fields("rF3").value 
      Response.Write "<TD>&nbsp;&nbsp;" & rs.Fields("rDR").value 
   Rs.MoveNext          
   Loop                    
   Response.Write "</TABLE>"
end sub




ORGAN = Request.QueryString("ORGAN") 
Response.Write ORGAN
if ORGAN&"~" = "~" then 
   call SPISOK_SHET(POLE)
   call SPISOK_PRINT
else 
   call ORGAN_SHET(ORGAN)
'   call ORGAN_PRINT(ORGAN)
end if




%>
<BR>                  
<BR>
<BR>
<BR>
<A href="../index.htm"><IMG src="�����.gif" border=0 alt="�����"></A><BR>
<FONT size=1 Color=Tan>  �������� ATOC.mdb ����� ASP &nbsp; &nbsp;  &nbsp; &nbsp; ������ 29.08.2020 </FONT><BR>
</BODY>
</HTML>

