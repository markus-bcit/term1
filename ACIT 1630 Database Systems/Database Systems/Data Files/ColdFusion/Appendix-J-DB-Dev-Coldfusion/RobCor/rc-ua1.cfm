
<CFQUERY NAME="Deptlist" DATASOURCE="RobCor">
SELECT * FROM DEPARTMENT ORDER BY DEPT_ID
</CFQUERY>
<HTML>
<HEAD>
<TITLE>Rob & Coronel -  Cold Fusion Problems</TITLE>
</HEAD>
<CENTER><H1>Add User</H1>
<FONT SIZE="1">
<FORM ACTION="rc-ua2.cfm" METHOD="post"><!---User id is required to add a User--->

<!---display data for input           --->
	<TABLE WIDTH="100" ALIGN="RIGHT" VALIGN="TOP" NOWRAP BGCOLOR="Silver" BORDERCOLOR="Aqua">
		<TR BGCOLOR="yellow" VALIGN="top">
			<TD COLSPAN="6">General Information
			</TD>
		</TR>
		<TR>
			<TD ALIGN="right" NOWRAP VALIGN="bottom">First Name:
			</TD>
			<TD VALIGN="bottom">
				<INPUT NAME="USR_FNAME" MAXLENGTH="20">
			</TD>
			<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Middle Name:
			</TD>
			<TD VALIGN="bottom">
				<INPUT NAME="USR_MNAME" SIZE="2" MAXLENGTH="1">
			</TD>
			<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Last Name:
			</TD>
			<TD VALIGN="bottom">
				<INPUT NAME="USR_LNAME" MAXLENGTH="20">
			</TD>
		</TR>
		<TR>
			<TD ALIGN="right" NOWRAP VALIGN="bottom">SSN:
			</TD>
			<TD>
				<INPUT NAME="USR_SSN" MAXLENGTH="11">
			</TD>
			<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Department ID:
			</TD>
			<TD>
				<SELECT NAME="DEPT_ID" SIZE="1">
					<CFOUTPUT QUERY="Deptlist">
						<OPTION VALUE="#DEPT_ID#">#DEPT_ID#
					</CFOUTPUT>
				</SELECT>
			</TD>
			<TD ALIGN="right">Job Title:
			</TD>
			<TD>
				<INPUT NAME="USR_JOBTITLE" MAXLENGTH="20">
			</TD>
			<TR BGCOLOR="yellow">
				<TD COLSPAN="6">Business Information
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Business Street:
				</TD>
				<TD>
					<INPUT NAME="USR_BSNS_STREET" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">City:
				</TD>
				<TD>
					<INPUT NAME="USR_BSNS_CITY" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">State:
				</TD>
				<TD>
					<INPUT NAME="USR_BSNS_STATE" MAXLENGTH="2">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Zip:
				</TD>
				<TD>
					<INPUT NAME="USR_BSNS_ZIP" MAXLENGTH="5">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Fax Number:
				</TD>
				<TD>
					<INPUT NAME="USR_BSNS_FAX" MAXLENGTH="10">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Phone Number:
				</TD>
				<TD>
					<INPUT NAME="USR_BSNS_PH" MAXLENGTH="10">
				</TD>
			</TR>
			<TR BGCOLOR="yellow">
				<TD COLSPAN="6">Personal Information
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Home Street:
				</TD>
				<TD>
					<INPUT NAME="USR_HOME_STREET" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">City:
				</TD>
				<TD>
					<INPUT NAME="USR_HOME_CITY" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">State:
				</TD>
				<TD>
					<INPUT NAME="USR_HOME_STATE" MAXLENGTH="2">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Zip:
				</TD>
				<TD>
					<INPUT NAME="USR_HOME_ZIP" MAXLENGTH="5">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Phone Number:
				</TD>
				<TD>
					<INPUT NAME="USR_HOME_ZIP" MAXLENGTH="10">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Pager Number:
				</TD>
				<TD>
					<INPUT NAME="USR_PAGER" MAXLENGTH="10">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">E-mail:
				</TD>
				<TD>
					<INPUT NAME="USR_EMAIL" MAXLENGTH="25">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Gender(M/F):
				</TD>
				<TD>
					<INPUT NAME="USR_GENDER" SIZE="1" MAXLENGTH="1">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Office:
				</TD>
				<TD>
					<INPUT NAME="USR_OFFICE" MAXLENGTH="11">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">PO BOX:
				</TD>
				<TD>
					<INPUT NAME="USR_POBOX" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Web Page:
				</TD>
				<TD>
					<INPUT NAME="USR_WEB_PAGE" MAXLENGTH="25">
				</TD>
			</TR>
			<TR ALIGN="RIGHT">
				<TD WIDTH="100" COLSPAN="2" ALIGN="LEFT" VALIGN="MIDDLE">
					<INPUT TYPE="submit" VALUE=" Add Record ">
</FORM>
</TD>
<TD>
	<FORM ACTION="rc-u0.cfm" METHOD "post">
		<INPUT TYPE="submit" VALUE="User Menu">
	</FORM>
</TD>
</TR>
</TABLE></FONT>
</BODY>
</HTML>

