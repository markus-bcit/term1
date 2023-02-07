
<HTML>
<CFQUERY NAME="Userdata" DATASOURCE="RobCor">
SELECT * FROM USER WHERE (USER.USR_ID=#URL.USR_ID#)
</CFQUERY>
<CFIF #USERDATA.USR_ID# IS NOT "">
	<CFQUERY DATASOURCE="RobCor" NAME="Usrdata">
SELECT USR_ID, USR_LNAME, USR_FNAME, USR_MNAME 
	  FROM USER WHERE (USER.USR_ID =#USERDATA.usr_id#)
	</CFQUERY>
</CFIF>
<CFQUERY NAME="UsrTot" DATASOURCE="RobCor">
SELECT COUNT(*) AS T1 FROM DEPARTMENT
	    WHERE (DEPARTMENT.USR_ID = #URL.USR_ID#)
</CFQUERY>
<CFQUERY NAME="UsrTot2" DATASOURCE="RobCor">
SELECT COUNT(*) AS T2 FROM ORDERS
	    WHERE (ORDERS.USER_ID = #URL.USR_ID#)
</CFQUERY>
<TITLE>Rob & Coronel -  ColdFusion Problems</TITLE>
<BODY>
<H1>
<CENTER>Delete User</CENTER></H1>
<CFOUTPUT QUERY="Userdata">
	<FORM ACTION="rc-ud2.cfm" METHOD="post">
		<INPUT TYPE="hidden" NAME="USR_ID" VALUE="#Userdata.USR_ID#">
		<TABLE WIDTH="100" ALIGN="right" VALIGN="TOP" NOWRAP BGCOLOR="silver" BORDERCOLOR="aqua">
			<TR BGCOLOR="yellow" VALIGN="top">
				<TD COLSPAN="6">General Information
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP VALIGN="bottom">First Name:
				</TD>
				<TD VALIGN="bottom">
					<INPUT NAME="USR_FNAME" VALUE="#USR_FNAME#" MAXLENGTH="20">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="bottom">Middle Name:
				</TD>
				<TD VALIGN="bottom">
					<INPUT NAME="USR_MNAME" SIZE="2" VALUE="#USR_MNAME#" MAXLENGTH="1">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="bottom">Last Name:
				</TD>
				<TD VALIGN="bottom">
					<INPUT NAME="USR_LNAME" VALUE="#USR_LNAME#" MAXLENGTH="20">
				</TD>
			</TR>
			<TR>
				<TD ALIGN="right" NOWRAP="17565">S.S.N.:
				</TD>
				<TD>
					<INPUT NAME="USR_SSN" VALUE="#USR_SSN#" MAXLENGTH="11">
				</TD>
				<TD ALIGN="right" NOWRAP VALIGN="bottom">Department ID:
				</TD>
				<TD>
					<INPUT NAME="DEPT_ID" VALUE="#DEPT_ID#" MAXLENGTH="11">
				</TD>
				<TD ALIGN="right">Job Title:
				</TD>
				<TD>
					<INPUT NAME="USR_JOBTITLE" VALUE="#USR_JOBTITLE#" MAXLENGTH="20">
				</TD>
				<TR BGCOLOR="yellow">
					<TD COLSPAN="6">Business Information
					</TD>
				</TR>
				<TR>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Business Street:
					</TD>
					<TD>
						<INPUT NAME="USR_BSNS_STREET" VALUE="#USR_BSNS_STREET#" MAXLENGTH="20">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">City:
					</TD>
					<TD>
						<INPUT NAME="USR_BSNS_CITY" VALUE="#USR_BSNS_CITY#" MAXLENGTH="20">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">State:
					</TD>
					<TD>
						<INPUT NAME="USR_BSNS_STATE" VALUE="#USR_BSNS_STATE#" MAXLENGTH="2">
					</TD>
				</TR>
				<TR>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Zip:
					</TD>
					<TD>
						<INPUT NAME="USR_BSNS_ZIP" VALUE="#USR_BSNS_ZIP#" MAXLENGTH="5">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Fax Number:
					</TD>
					<TD>
						<INPUT NAME="USR_BSNS_FAX" VALUE="#USR_BSNS_FAX#" MAXLENGTH="10">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Phone Number:
					</TD>
					<TD>
						<INPUT NAME="USR_BSNS_PH" VALUE="#USR_BSNS_PH#" MAXLENGTH="10">
					</TD>
				</TR>
				<TR BGCOLOR="yellow">
					<TD COLSPAN="6">Personal Information
					</TD>
				</TR>
				<TR>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Home Street:
					</TD>
					<TD>
						<INPUT NAME="USR_HOME_STREET" VALUE="#USR_HOME_STREET#" MAXLENGTH="20">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">City:
					</TD>
					<TD>
						<INPUT NAME="USR_HOME_CITY" VALUE="#USR_HOME_CITY#" MAXLENGTH="20">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">State:
					</TD>
					<TD>
						<INPUT NAME="USR_HOME_STATE" VALUE="#USR_HOME_STATE#" MAXLENGTH="2">
					</TD>
				</TR>
				<TR>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Zip:
					</TD>
					<TD>
						<INPUT NAME="USR_HOME_ZIP" VALUE="#USR_HOME_ZIP#" MAXLENGTH="5">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Phone Number:
					</TD>
					<TD>
						<INPUT NAME="USR_HOME_PH" VALUE="#USR_HOME_PH#" MAXLENGTH="10">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Pager Number:
					</TD>
					<TD>
						<INPUT NAME="USR_PAGER" VALUE="#USR_PAGER#" MAXLENGTH="10">
					</TD>
				</TR>
				<TR>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">E-mail:
					</TD>
					<TD>
						<INPUT NAME="USR_EMAIL" VALUE="#USR_EMAIL#" MAXLENGTH="25">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Gender(M/F):
					</TD>
					<TD>
						<INPUT NAME="USR_GENDER" SIZE="1" VALUE="#USR_GENDER#" MAXLENGTH="1">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Office:
					</TD>
					<TD>
						<INPUT NAME="USR_OFFICE" VALUE="#USR_OFFICE#" MAXLENGTH="11">
					</TD>
				</TR>
				<TR>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">PO BOX:
					</TD>
					<TD>
						<INPUT NAME="USR_POBOX" VALUE="#USR_POBOX#" MAXLENGTH="20">
					</TD>
					<TD ALIGN="right" NOWRAP VALIGN="bottom">Web Page:
					</TD>
					<TD>
						<INPUT NAME="USR_WEB_PAGE" VALUE="#USR_WEB_PAGE#" MAXLENGTH="25">
					</TD>
				</TR>
</CFOUTPUT>
<TR>
	<TD WIDTH="100" COLSPAN="2" ALIGN="left" VALIGN="center">
		<CFIF (#USRTOT.T1# EQ 0) AND (#USRTOT2.T2# EQ 0)>
			<INPUT TYPE="submit" VALUE=" Delete ">
		<CFELSE>
<SMALL>
	<B>We cannot delete this record because there are dependent<BR>tables assigned to this user </B>	</SMALL>
		</CFIF>
</FORM>
	</TD>
	<TD WIDTH="100" COLSPAN="2" ALIGN="left" VALIGN="bottom">
		<FORM ACTION="rc-u0.cfm" METHOD="POST">
			<INPUT TYPE="submit" VALUE="User Menu">
		</FORM>
	</TD>
</TR>
</TABLE>
</BODY>
</HTML>

