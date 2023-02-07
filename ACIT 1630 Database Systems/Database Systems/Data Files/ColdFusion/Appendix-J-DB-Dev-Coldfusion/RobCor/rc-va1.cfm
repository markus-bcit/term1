<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>

<body>
<center>
<H1> Add Vendor</h1>
</center>
<FORM action="rc-va2.cfm" method="post">
<input type=hidden name="VEN_CODE_required" value="VEN_CODE is required">
<table width="100" align="RIGHT" valign="TOP" nowrap bgcolor="Silver" bordercolor="Aqua">
	<TR bgcolor="yellow" valign="top" >
    <TD colspan="6"><font size="+1">Vendor Information</font></td></TR>
<TR>
		<TD align="right" nowrap valign="bottom">Vendor Code:</TD>
		<TD valign="bottom"><INPUT name="VEN_CODE" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Vendor Name:</TD>
		<TD valign="bottom"><INPUT name="VEN_NAME" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Contact Person:</TD>
		<TD valign="bottom"><INPUT name="VEN_CONTACT_NAME" maxlength="20"></TD></tr>
 <TR>   <TD align="right" nowrap valign="bottom">Vendor Address:</TD>
        <TD valign="bottom"><INPUT name="VEN_ADDRESS" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">City:</TD>
        <TD valign="bottom"><INPUT name="VEN_CITY" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">State:</TD>
        <TD valign="bottom"><INPUT name="VEN_STATE" maxlength="2"></TD></TR>
 <TR>   <TD align="right" nowrap valign="bottom">Zip:</TD>
        <TD valign="bottom"><INPUT name="VEN_ZIP" maxlength="5"></TD>
        <TD align="right" nowrap valign="bottom">Phone:</TD>
        <TD valign="bottom"><INPUT name="VEN_PH" maxlength="12"></TD>
        <TD align="right" nowrap valign="bottom">Fax:</TD>
        <TD valign="bottom"><INPUT name="VEN_FAX" maxlength="12"></TD></tr>
 <TR>   <TD align="right" nowrap valign="bottom">E-Mail:</TD>
        <TD valign="bottom"><INPUT name="VEN_EMAIL" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Customer ID:</TD>
        <TD valign="bottom"><INPUT name="VEN_CUS_ID" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Support ID:</TD>
        <TD valign="bottom"><INPUT name="VEN_SUPPORT_ID" maxlength="5"></TD></tr>
 <TR>   <TD align="right" nowrap valign="bottom">Support Phone:</TD>
        <TD valign="bottom"><INPUT name="VEN_SUPPORT_PH" maxlength="12"></TD>
        <TD align="right" nowrap valign="bottom">Web Page:</TD>
        <TD valign="bottom"><INPUT name="VEN_WEB_PAGE" maxlength="25"></TD></tr>        
                </tr>
           

<TR><TD colspan="2" valign="top">
<INPUT type="submit" value=" Add Record "></TD>
</FORM>
<TD colspan="2" valign="bottom"><FORM ACTION="rc-v0.cfm" METHOD="POST">
      <INPUT TYPE="Submit" VALUE="Vendor Menu">
	</form></td></TR>
</TABLE>
</body>
</html>







