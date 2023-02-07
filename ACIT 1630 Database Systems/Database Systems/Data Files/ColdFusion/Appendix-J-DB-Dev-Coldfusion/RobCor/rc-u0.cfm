<!--- rc-u0.cfm --->
<CFQUERY NAME="usrlist" DATASOURCE="RobCor">
SELECT * FROM USER ORDER BY USR_LNAME, USR_FNAME, USR_MNAME
</CFQUERY>
<HEAD>
<TITLE>Rob & Coronel -  Cold Fusion Problems</TITLE>
</HEAD>
<BODY>
<CENTER><H1>User Management</H1>
<TABLE>
<TR>
	<TD VALIGN="top">
	<FORM ACTION="rc-ua1.cfm" METHOD="POST">
	    <INPUT TYPE="submit" VALUE="Add">
	</FORM>
	</TD>
	<TD VALIGN="top">
	<FORM ACTION="rc-ue1.cfm" METHOD="post">
		<INPUT TYPE="hidden" NAME="USR_ID_required" VALUE="USR_ID is required">
	<SELECT NAME="USR_ID" SIZE 20>
		<CFOUTPUT QUERY="usrlist">
			<OPTION VALUE="#USR_ID#">[#USR_ID#] - #USR_LNAME#, #USR_FNAME# #USR_MNAME#
		</CFOUTPUT>
	</SELECT>
	</TD>
	<TD VALIGN="top">
		<INPUT TYPE="Submit" VALUE="Edit" NAME="ACTION">
	</TD>
	<TD VALIGN="top">
		<INPUT TYPE="Submit" VALUE="Delete" NAME="ACTION">
    </FORM>
	</TD>
	<TD VALIGN="top">
		<FORM ACTION="rc-us1.cfm" METHOD="post">
			<INPUT TYPE="submit" VALUE="Search">
		</FORM>
	</TD>
	<TD VALIGN="top">
		<FORM ACTION="rc-p0.cfm" METHOD="link">
			<INPUT TYPE="submit" VALUE="Main Menu">
		</FORM>
	</TD>
</TR>
</TABLE>
</BODY>
</HTML>

