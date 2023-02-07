<!--- This page allows the user to see the results of the search
in the database--->
<CFQUERY NAME="SearchUser" DATASOURCE="RobCor">
SELECT * FROM USER WHERE 0=0
	<CFIF #FORM.USR_LNAME# IS NOT "">AND USER.USR_LNAME LIKE '%#FORM.USR_LNAME#%'
	</CFIF>
	<CFIF #FORM.USR_ID# IS NOT "ANY">AND USER.USR_ID LIKE '%#FORM.USR_ID#%'
	</CFIF>
ORDER BY USR_ID
</CFQUERY>
<!---OK, now put results on the page --->
<HTML>
<HEAD>
<TITLE>Rob & Coronel -  Cold Fusion Problems</TITLE>
</HEAD>
<BODY>
<CENTER><H1>Search User Results</H1></CENTER>
</TD>
</TR>
</TABLE><BR><BR><!---If the query gave any results, they will be displayed right here--->
<FONT FACE="Courier" SIZE="-1">
<FORM ACTION="rc-u0.cfm" METHOD="post">
	<CFOUTPUT QUERY="SearchUser">
		<TABLE ALIGN="CENTER" BGCOLOR="Silver" BORDER="1" WIDTH="100%">
			<TR BGCOLOR="Yellow">
				<TD><B>General Information</B>
				</TD>
			</TR>
			<TR>
				<TD><B>User ID: </B>#USR_ID#<B> User Name: </B>#USR_FNAME#  #USR_MNAME# #USR_LNAME#
				</TD>
			</TR>
			<TR>
				<TD><B>Social Security Number: </B>#USR_SSN# <B> Department ID: </B>#DEPT_ID#<B> Job Title: </B>#USR_JOBTITLE#
				</TD>
			</TR>
			<TR>
				<TD><B><I><FONT FACE="Comic Sans MS" COLOR="white">Business Information</FONT></I></B>
				</TD>
			</TR>
			<TR>
				<TD><B>Business Address: </B>#USR_BSNS_STREET# #USR_BSNS_CITY# #USR_BSNS_STATE# #USR_BSNS_ZIP#
				</TD>
			</TR>
			<TR>
				<TD><B>Fax Number: </B>#USR_BSNS_FAX#<B> Phone Number: </B>#USR_BSNS_PH#
				</TD>
			</TR>
			<TR>
				<TD><B><I><FONT FACE="Comic Sans MS" COLOR="white">Personal Information</FONT></I></B>
				</TD>
			</TR>
			<TR>
				<TD><B>Home Address: </B>#USR_HOME_STREET# #USR_HOME_CITY# #USR_HOME_STATE# #USR_HOME_ZIP#
				</TD>
			</TR>
			<TR>
				<TD><B>Home Phone: </B>#USR_HOME_PH#
				</TD>
			</TR>
			<TR>
				<TD><B>Pager: </B>#USR_PAGER# <B> E-mail: </B>#USR_EMAIL#
				</TD>
			</TR>
			<TR>
				<TD><B>Gender: </B>#USR_GENDER# <B> Office: </B>#USR_OFFICE#<B> Web Page: </B>#USR_WEB_PAGE#
				</TD>
			</TR>
		</TABLE><BR>
	</CFOUTPUT>
</FONT>
<!--If nothing is found, tell the user how sorry we are, and suggest they go 
back where they came from :)) --->
	<CFIF #SearchUser.RecordCount# IS 0><H2> No records were found matching your criteria </H2>
<P>Please press BACK and try again.
	</CFIF>
	<INPUT TYPE="submit" VALUE="User Menu">
</FORM><!--- this page doesn't call any other pages, so the only way
out of here is to press the back button--->
</BODY>
</HTML>

