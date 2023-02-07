<!--- This page allows the user to insert a new department in the database--->
<CFUPDATE DATASOURCE="RobCor" TABLENAME="USER">
<HTML>
<HEAD>
<TITLE>Rob & Coronel -  Cold Fusion Problems</TITLE>
</HEAD>
<BODY>
<CENTER><H1>Edit User Results</H1></CENTER><B>You were updated the following record:</B>
<CFOUTPUT>
	<TABLE>
		<TR BGCOLOR="Yellow">
			<TD><B>General Information</B>
			</TD>
		</TR>
		<TR>
			<TD><B>User ID:</B>#USR_ID#  <B>User Name:</B>#USR_FNAME#  #USR_MNAME# #USR_LNAME#
			</TD>
		</TR>
		<TR>
			<TD><B>Social Security Number:</B>#USR_SSN# <B>Department ID:</B>#DEPT_ID#<B>Job Title:</B>#USR_JOBTITLE#
			</TD>
		</TR>
		<TR BGCOLOR="Yellow">
			<TD><B>Business Information</B>
			</TD>
		</TR>
		<TR>
			<TD><B>Business Address:</B>#USR_BSNS_STREET# #USR_BSNS_CITY# #USR_BSNS_STATE# #USR_BSNS_ZIP#
			</TD>
		</TR>
		<TR>
			<TD><B>Fax Number:</B>#USR_BSNS_FAX#<B>Phone Number:</B>#USR_BSNS_PH#
			</TD>
		</TR>
		<TR BGCOLOR="Yellow">
			<TD><B>Personal Information</B>
			</TD>
		</TR>
		<TR>
			<TD><B>Home Address:</B>#USR_HOME_STREET# #USR_HOME_CITY# #USR_HOME_STATE# #USR_HOME_ZIP#
			</TD>
		</TR>
		<TR>
			<TD><B>Home Phone:</B>#USR_HOME_PH#
			</TD>
		</TR>
		<TR>
			<TD><B>Pager:</B>#USR_PAGER# <B>E-mail:</B>#USR_EMAIL#
			</TD>
		</TR>
		<TR>
			<TD><B>Gender:</B>#USR_GENDER# <B>Office:</B>#USR_OFFICE#<B>Web Page:</B>#USR_WEB_PAGE#
			</TD>
		</TR>
	</TABLE>
</CFOUTPUT>
<FORM ACTION="rc-u0.cfm" METHOD="post">
	<INPUT TYPE="submit" VALUE="User Menu">
</FORM>
</BODY>
</HTML>

