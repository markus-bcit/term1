
<CFIF #form.action#EQ"delete">
	<CFLOCATION URL="rc-ud1.cfm?usr_id=#form.USR_ID#" ADDTOKEN="No">
</CFIF>
<CFQUERY DATASOURCE="RobCor" NAME="UserEdit">
SELECT * FROM USER WHERE (USER.USR_ID=#form.USR_ID#)
</CFQUERY>
<CFQUERY DATASOURCE="RobCor" NAME="DeptEdit">
SELECT DEPT_ID FROM DEPARTMENT ORDER BY DEPT_ID
</CFQUERY>
<HTML>
<HEAD>
<TITLE>Rob & Coronel -  Cold Fusion Problems</TITLE>
</HEAD>
<H1>
<CENTER>Edit User</CENTER></H1>
<FORM ACTION="rc-ue2.cfm" METHOD="post">
	<TABLE BGCOLOR="silver">
		<CFOUTPUT QUERY="UserEdit">
			<INPUT TYPE="hidden" NAME="USR_ID" VALUE="#UserEdit.USR_ID#">
			<TR BGCOLOR="yellow" VALIGN="top">
				<TD COLSPAN="6">General Information
				</TD>
			</TR>
			<TR>
				<TD>
					<TR>
						<TD ALIGN="right" NOWRAP VALIGN="bottom">First Name:
						</TD>
						<TD VALIGN="bottom">
							<INPUT TYPE="text" NAME="USR_FNAME" VALUE="#USR_FNAME#" MAXLENGTH="20">
						</TD>
						<TD ALIGN="right" NOWRAP VALIGN="bottom">Middle Name:
						</TD>
						<TD VALIGN="bottom">
							<INPUT TYPE="text" NAME="USR_MNAME" VALUE="#USR_MNAME#" SIZE="2" MAXLENGTH="1">
						</TD>
						<TD ALIGN="right" NOWRAP VALIGN="bottom">Last Name:
						</TD>
						<TD VALIGN="bottom">
							<INPUT TYPE="text" NAME="USR_LNAME" VALUE="#USR_LNAME#" MAXLENGTH="20">
						</TD>
					</TR>
					<TR>
						<TD ALIGN="right" NOWRAP="DESIGNTIMESP"= 17565>S.S.N.:
						</TD>
						<TD>
							<INPUT TYPE="text" NAME="USR_SSN" VALUE="#USR_SSN#" MAXLENGTH="11">
						</TD>
						<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Department ID:
						</TD>
		</CFOUTPUT>
		<TD>
			<SELECT NAME="DEPT_ID" SIZE="1">
				<CFOUTPUT QUERY="DeptEdit">
					<OPTION VALUE="#DEPT_ID#">#DEPT_ID#
				</CFOUTPUT>
			</SELECT>
		</TD>
		<CFOUTPUT QUERY="UserEdit">
			<TD ALIGN="right">Job Title:
			</TD>
			<TD>
				<INPUT NAME="USR_JOBTITLE" VALUE="#USR_JOBTITLE#" MAXLENGTH="20">
			</TD>
</TR>
			<TR BGCOLOR="yellow">
				<TD COLSPAN="6">Business Information
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Business Street:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_BSNS_STREET" VALUE="#USR_BSNS_STREET#" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">City:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_BSNS_CITY" VALUE="#USR_BSNS_CITY#" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">State:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_BSNS_STATE" VALUE="#USR_BSNS_STATE#" MAXLENGTH="2">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Zip:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_BSNS_ZIP" VALUE="#USR_BSNS_ZIP#" MAXLENGTH="5">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Fax Number:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_BSNS_FAX" VALUE="#USR_BSNS_FAX#" MAXLENGTH="10">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Phone Number:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_BSNS_PH" VALUE="#USR_BSNS_PH#" MAXLENGTH="10">
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
					<INPUT TYPE="text" NAME="USR_HOME_STREET" VALUE="#USR_HOME_STREET#" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">City:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_HOME_CITY" VALUE="#USR_HOME_CITY#" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">State:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_HOME_STATE" VALUE="#USR_HOME_STATE#" MAXLENGTH="2">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Zip:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_HOME_ZIP" VALUE="#USR_HOME_ZIP#" MAXLENGTH="5">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Phone Number:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_HOME_PH" VALUE="#USR_HOME_PH#" MAXLENGTH="10">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Pager Number:
				</TD>
				<TD>
					<INPUT TYPE="text" NAME="USR_PAGER" VALUE="#USR_PAGER#" MAXLENGTH="10">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">E-mail:
				</TD>
				<TD>
					<INPUT TYPE="TEXT" NAME="USR_EMAIL" VALUE="#USR_EMAIL#" MAXLENGTH="25">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Gender(M/F):
				</TD>
				<TD>
					<INPUT TYPE="TEXT" NAME="USR_GENDER" SIZE="1" VALUE="#USR_GENDER#" MAXLENGTH="1">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Office:
				</TD>
				<TD>
					<INPUT TYPE="TEXT" NAME="USR_OFFICE" VALUE="#USR_OFFICE#" MAXLENGTH="11">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">PO BOX:
				</TD>
				<TD>
					<INPUT TYPE="TEXT" NAME="USR_POBOX" VALUE="#USR_POBOX#" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="BOTTOM">Web Page:
				</TD>
				<TD>
					<INPUT TYPE="TEXT" NAME="USR_WEB_PAGE" VALUE="#USR_WEB_PAGE#" MAXLENGTH="25">
				</TD>
			</TR>
		</CFOUTPUT>
		<TR ALIGN="RIGHT">
			<TD WIDTH="100" COLSPAN="2" ALIGN="LEFT" VALIGN="bottom">
				<INPUT TYPE="submit" VALUE=" Edit ">
</FORM>
</TD>
<TD VALIGN="bottom">
	<FORM ACTION="rc-u0.cfm" METHOD="post">
		<INPUT TYPE="submit" VALUE="User Menu">
	</FORM>
</TD>
</TR>
</TABLE>
</BODY>
</HTML>

