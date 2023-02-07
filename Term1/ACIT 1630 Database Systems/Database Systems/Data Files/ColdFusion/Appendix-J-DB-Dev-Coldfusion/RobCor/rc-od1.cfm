<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<CFQUERY NAME="ordlist" datasource="RobCor">
	SELECT * FROM ORDERS ORDER BY ORD_ID
</CFQUERY>
<html>
<head>
	<title>Rob & Coronel - Cold Fusion Problems</title>
</head>

<body>
<H1><CENTER> Delete Order</center></h1>
<CENTER>

<TABLE>
<TR><TD>
<FORM ACTION="rc-od2.cfm" Method="post">
<input type=hidden name="ORD_ID_required" value="ORD_ID is required">
<SELECT NAME="ORD_ID" SIZE 5>
<CFOUTPUT QUERY="ordlist">
<OPTION VALUE="#ORD_ID#">[#ORD_ID#]-#ORD_DESCRIP#
</cfoutput>
</SELECT>
<INPUT TYPE="Submit" VALUE="Delete" name="ACTION">
</FORM></TD>
<TD><FORM ACTION="rc-p0.cfm" Method="link">
<INPUT TYPE="Submit" VALUE="Main Menu">
</FORM></td>
</center></TR>
</TABLE>
</body>
</html>




