
<HTML>
<HEAD>
<TITLE>Rob & Coronel -  Cold Fusion Problems</TITLE>
</HEAD>
<CFQUERY NAME="DeleteUser" DATASOURCE="RobCor">
DELETE FROM USER WHERE (USR_ID=#FORM.USR_ID#)
</CFQUERY>
<BODY>
<CENTER><H1>Delete User Results</H1>

You have been deleted the user record successfully.
<FORM ACTION="rc-u0.cfm" METHOD="post">
	<INPUT TYPE="submit" VALUE=" User Menu ">
</FORM></CENTER>
</BODY>
</HTML>

