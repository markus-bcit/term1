<!--- This page allows the user to search for a department 
in the database--->
<HTML>
<CFQUERY NAME="UserData" DATASOURCE="RobCor">
Select * from USER Order by USR_ID
</CFQUERY>
<HEAD>
<TITLE>Rob & Coronel -  Cold Fusion Problems</TITLE>
</HEAD>
<H1>
<CENTER>Search User</H1>

<!---after we get the search criteria, we'll go to the
next page--->
<!---this table below allows user to enter department
id or department description in order to search for department--->
<FORM ACTION="rc-us2.cfm" METHOD="POST">
	<TABLE>
		<TR>
			<TD ALIGN="RIGHT">USER LAST NAME:
			</TD>
			<TD>
				<INPUT TYPE="text" NAME="USR_LNAME" SIZE="10" MAXLENGTH="10">
			</TD>
		</TR>
		<TR>
			<TD ALIGN="right">USER ID:
				<SELECT NAME="USR_ID" SIZE="1">
					<OPTION SELECTED VALUE="ANY">ANY
					<CFOUTPUT QUERY="UserData">
						<OPTION VALUE="#UserData.USR_ID#">#USR_ID#
					</CFOUTPUT>
				</SELECT>
			</TD>
		</TR>
		<TR>
			<TD>
			<CENTER>
				<INPUT TYPE="submit" VALUE="Search">
</FORM>
</TD>
<TD>
	<FORM ACTION="rc-u0.cfm" METHOD="post">
		<INPUT TYPE="Submit" VALUE="User Menu">
	</FORM>
</TD>
</TR></CENTER>
</TABLE>
</BODY>
</HTML>

