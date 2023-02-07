<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>
    <CFQUERY datasource="RobCor" name="OrderList">
        SELECT * FROM ORDERS WHERE (ORDERS.ORD_ID=#FORM.ORD_ID#)
    </CFQUERY>
    <CFQUERY datasource="RobCor" name="VenEdit1">
        SELECT VEN_CODE FROM VENDOR ORDER BY VEN_CODE
    </CFQUERY>
    <CFQUERY datasource="RobCor" name="UserEdit1">
        SELECT USR_ID FROM USER ORDER BY USR_ID
    </CFQUERY>
<body>
<H1>
<CENTER>Edit Order</CENTER></H1>
<TABLE bgcolor="silver">
    <CFOUTPUT QUERY="OrderList">
    <FORM action="rc-oe3.cfm" method="post">
    <TR bgcolor="yellow" valign="top">
		<TD colspan="6"><font size="+1">Order Information</font></TD>
	</TR>
    <TR>
		<TD align="right" nowrap valign="bottom">Order ID:</TD>
        <TD valign="bottom"><INPUT TYPE="number" NAME="ORD_ID" VALUE="#ORD_ID#" MAXLENGTH=4></TD>
        <TD align="right" nowrap valign="bottom">Order Date:</TD>
        <TD valign="bottom"><INPUT TYPE="text" name="ORD_DATE" VALUE="#ORD_DATE#" size=8 maxlength="8"></TD>
        <TD align="right" nowrap valign="bottom">Required No.:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_REQ_NUM" VALUE="#ORD_REQ_NUM#" maxlength="6"></TD>
    </TR>
    <TR><TD align="right" nowrap valign="bottom">PO No.:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_PO_NUM" VALUE="#ORD_PO_NUM#" maxlength="6"></TD></CFOUTPUT>
        <TD align="right" nowrap valign="bottom">Vendor:</td>
        <TD><SELECT name="VEN_CODE" size="1">
            <CFOUTPUT QUERY="VenEdit1">
                <OPTION value="#VEN_CODE#">#VEN_CODE#
            </cfoutput> 
            </SELECT></TD>
        <CFOUTPUT QUERY="OrderList">
        <TD align="right" nowrap valign="bottom">Invoice No.:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_INV_NUM" VALUE="#ORD_INV_NUM#" maxlength="6"></TD>
    </TR>
    <TR><TD align="right" nowrap valign="bottom">Description:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_DESCRIP" VALUE="#ORD_DESCRIP#" maxlength="6"></TD>  
        <TD align="right" nowrap valign="bottom">Ship Cost:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_SHIP_COST" VALUE="#ORD_SHIP_COST#" maxlength="6"></TD>  
        <TD align="right" nowrap valign="bottom">Total Cost:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_TOT_COST" VALUE="#ORD_TOT_COST#" maxlength="6"></TD>  
        </TR>
        </CFOUTPUT>
     <TR><TD align="right" nowrap valign="bottom">User:</TD>
         <TD><SELECT name="USER_ID" size="1">
         <CFOUTPUT QUERY="UserEdit1">
                <OPTION value="#USR_ID#">#USR_ID#
         </CFOUTPUT> 
            </SELECT></TD>
        <CFOUTPUT QUERY="OrderList">
        <TD align="right" nowrap valign="bottom">Date Record:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_DATE_REC" VALUE="#ORD_DATE_REC#" maxlength="6"></TD>  
        <TD align="right" nowrap valign="bottom">Status:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_STATUS" VALUE="#ORD_STATUS#" maxlength="6"></TD></TR> 
     <TR><TD align="right" nowrap valign="bottom">Fund Type:</TD>
        <TD valign="bottom"><INPUT type="text" name="ORD_FUND_TYPE" VALUE="#ORD_FUND_TYPE#" maxlength="6"></TD>  
     </TR>
      <TR align="RIGHT">
            <TD width="100" colspan="2" align="LEFT" valign="BOTTOM">
            <INPUT type="submit" value=" Edit Order">
            </FORM>
			</TD>
             
        </CFOUTPUT>
		<TD valign="baseline"><FORM ACTION="rc-oe1.cfm" METHOD="POST">
		    <INPUT TYPE="Submit" VALUE="Order Menu">
		</form></td> </tr>
</TABLE>
</body>
</html>








