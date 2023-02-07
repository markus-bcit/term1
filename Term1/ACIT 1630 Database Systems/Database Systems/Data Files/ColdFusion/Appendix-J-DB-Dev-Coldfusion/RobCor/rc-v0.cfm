<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<CFQUERY NAME="venlist" datasource="RobCor">
	SELECT * FROM VENDOR ORDER BY VEN_CODE
</CFQUERY>
<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>
<h1><center> Vendor <br></H1>
<body BGCOLOR="LIGHTBLUE">
<TABLE>
<TR>
<TD VALIGN=top>
	<FORM action="rc-va1.cfm"  method="POST">
	<INPUT TYPE="submit" VALUE="Add">
	</FORM>
</TD>
<TD VALIGN=top>
	<FORM ACTION="rc-ve1.cfm" Method="post">
	<input type=hidden name="VEN_CODE_required" value="VEN_CODE is required">
	<SELECT NAME="VEN_CODE" SIZE 20>
		<CFOUTPUT QUERY="venlist">
			<OPTION VALUE="#VEN_CODE#">[#VEN_CODE#] - #VEN_NAME#
		</CFOUTPUT>
	</SELECT>
</TD>
<TD VALIGN=top>
	<INPUT TYPE="Submit" VALUE="Edit" name="ACTION">
</TD>
<TD VALIGN=top>
	<input type="Submit" value="Delete" name="ACTION">
	</FORM>
</TD>
<TD VALIGN=top>
	<FORM ACTION="rc-vs1.cfm" method="post">
		<input type="submit" value="Search">
	</FORM>
</TD>
<TD><FORM ACTION="rc-p0.cfm" method="Link">
		<input type="submit" value="Main Menu">
	</FORM></td>
</TR>
</TABLE>
</body>
</html>





