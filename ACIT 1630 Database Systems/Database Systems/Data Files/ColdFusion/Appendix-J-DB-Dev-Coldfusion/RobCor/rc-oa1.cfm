<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
    
<CFQUERY NAME="VenList" datasource="RobCor">
    SELECT VEN_CODE FROM VENDOR ORDER BY VEN_CODE
</CFQUERY>    
<CFQUERY NAME="UserList" datasource="RobCor">
    SELECT USR_ID, USR_LNAME, USR_FNAME FROM USER ORDER BY USR_ID
</CFQUERY>        
</head>

<body>
<BR>
<CENTER><H1>Add Order</H1></center>
<FORM action="rc-oa2.cfm" method="post">
<input type=hidden name="ORD_ID_required" value="ORD_ID is required">
<table width="100" align="LEFT" valign="TOP" nowrap bgcolor="Silver" bordercolor="Aqua">
	<TR bgcolor="yellow" valign="top">
    <TD colspan="6"><font size="+1">Order Information</font></td></TR>
<TR>
		<TD align="right" nowrap valign="bottom">Order ID:</TD>
		<TD valign="bottom"><INPUT name="ORD_ID" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Order Date:</TD>
        <TD valign="bottom"><INPUT name="ORD_DATE" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Require Number:</TD>
        <TD valign="bottom"><INPUT name="ORD_REQ_NUM" maxlength="20"></TD>
<TR>    <TD align="right" nowrap valign="bottom">PO. Number:</TD>
        <TD valign="bottom"><INPUT name="ORD_PO_NUM" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Vendor Code:</TD>
        <TD><SELECT name="VEN_CODE" size="1">
            <CFOUTPUT query="VenList">
                <OPTION value="#VEN_CODE#">#VEN_CODE#
            </cfoutput> 
            </SELECT></TD>
        <TD align="right" nowrap valign="bottom">Invoice Number:</TD>
        <TD valign="bottom"><INPUT name="ORD_INV_NUM" maxlength="20"></TD></TR>   
<TR>    <TD align="right" nowrap valign="bottom">Order Description:</TD>
        <TD valign="bottom"><INPUT name="ORD_DESCRIP" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Ship Cost:</TD>
        <TD valign="bottom"><INPUT name="ORD_SHIP_COST" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Total Cost:</TD>
        <TD valign="bottom"><INPUT name="ORD_TOT_COST" maxlength="20"></TD></tr>        
<TR>    <TD align="right" nowrap valign="bottom">User ID:</TD>
        <TD><SELECT name="USER_ID" size="1">
            <CFOUTPUT query="UserList">
                <OPTION value="#USR_ID#">#USR_ID#-#USR_LNAME#, #USR_FNAME#
            </cfoutput> 
            </SELECT></TD>
        <TD align="right" nowrap valign="bottom">Date Record:</TD>
        <TD valign="bottom"><INPUT name="ORD_DATE_REC" maxlength="20"></TD>     
        <TD align="right" nowrap valign="bottom">Order Status:</TD>
        <TD valign="bottom"><INPUT name="ORD_STATUS" maxlength="20"></TD></TR>
<TR>    <TD align="right" nowrap valign="bottom">Fund Type:</TD>
        <TD valign="bottom"><INPUT name="ORD_FUND_TYPE" maxlength="20"></TD></TR>
 		<td width="100" colspan="2" align="LEFT" valign="MIDDLE">
          <INPUT type="submit" value=" Add Order ">
        </FORM></td>
		<TD> <FORM ACTION="rc-p0.cfm" METHOD="LINK">
			<INPUT TYPE="SUBMIT" VALUE=" Main Menu">
			</form></td>	</tr>

</TABLE>
</body>
</html>








