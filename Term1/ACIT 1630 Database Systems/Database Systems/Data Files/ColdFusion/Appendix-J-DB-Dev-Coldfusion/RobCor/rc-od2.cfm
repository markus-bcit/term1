<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>
<CFQUERY datasource="RobCor" name="Orderdata">
    SELECT * FROM ORDERS 
    WHERE (ORDERS.ORD_ID=#FORM.ORD_ID#)
</CFQUERY>
<CFQUERY NAME="OrdTot" DATASOURCE="RobCor" >
	    SELECT COUNT(*) AS T1 FROM ORDER_LINE
	    WHERE (ORDER_LINE.ORD_ID = #FORM.ORD_ID#)
</CFQUERY>
<body>
<H1><center> Delete Order</center></h1>
<FORM ACTION="rc-od3.cfm" METHOD="post">
<TABLE ALIGN="CENTER" BGCOLOR="Silver" BORDERCOLOR="Blue">
<CFOUTPUT QUERY="Orderdata">
    <INPUT TYPE="hidden" NAME="ORD_DATE" VALUE="#Orderdata.ORD_DATE#">
    <INPUT TYPE="hidden" NAME="ORD_REQ_NUM" VALUE="#Orderdata.ORD_REQ_NUM#">
    <INPUT TYPE="hidden" NAME="ORD_PO_NUM" VALUE="#Orderdata.ORD_PO_NUM#">
    <INPUT TYPE="hidden" NAME="VEN_CODE" VALUE="#Orderdata.VEN_CODE#">
    <INPUT TYPE="hidden" NAME="ORD_INV_NUM" VALUE="#Orderdata.ORD_INV_NUM#">
    <INPUT TYPE="hidden" NAME="ORD_DESCRIP" VALUE="#Orderdata.ORD_DESCRIP#">
    <INPUT TYPE="hidden" NAME="ORD_SHIP_COST" VALUE="#Orderdata.ORD_SHIP_COST#">
    <INPUT TYPE="hidden" NAME="ORD_TOT_COST" VALUE="#Orderdata.ORD_TOT_COST#">
    <INPUT TYPE="hidden" NAME="USER_ID" VALUE="#Orderdata.USER_ID#">
    <INPUT TYPE="hidden" NAME="ORD_DATE_REC" VALUE="#Orderdata.ORD_DATE_REC#">
    <INPUT TYPE="hidden" NAME="ORD_STATUS" VALUE="#Orderdata.ORD_STATUS#">
    <INPUT TYPE="hidden" NAME="ORD_FUND_TYPE" VALUE="#Orderdata.ORD_FUND_TYPE#">
   
    <TD bgcolor="yellow" colspan="6"><font size="+1">Order Information</font></td>
<TR><TD>Order ID:</TD>
    <TD><INPUT NAME="ORD_ID" VALUE="#Orderdata.ORD_ID#"></td>
    <TD>Date:</td>
    <TD><INPUT NAME="ORD_DATE" VALUE="#Orderdata.ORD_DATE#"></td>
    <TD>Required No.:</td>
    <TD><INPUT NAME="ORD_REQ_NUM" VALUE="#Orderdata.ORD_REQ_NUM#"></td>
</TR>
<TR><TD>PO No.:</td>
    <TD><INPUT NAME="ORD_PO_NUM" VALUE="#Orderdata.ORD_PO_NUM#"></td>
    <TD>Vendor:</td>
    <TD><INPUT NAME="VEN_CODE" VALUE="#Orderdata.VEN_CODE#"></td>
    <TD>Invoice No.:</td>
    <TD><INPUT NAME="ORD_INV_NUM" VALUE="#Orderdata.ORD_INV_NUM#"></td>
</TR>
<TR><TD>Description:</TD>
    <TD><INPUT NAME="ORD_DESCRIP" VALUE="#Orderdata.ORD_DESCRIP#"></td>
    <TD>Ship Cost:</TD>
    <TD><INPUT NAME="ORD_SHIP_COST" VALUE="#Orderdata.ORD_SHIP_COST#"></td>
    <TD>Total Cost:</td>
    <TD><INPUT NAME="ORD_TOT_COST" VALUE="#Orderdata.ORD_TOT_COST#"></td>
</TR>
<TR><TD>User ID:</td>
    <TD><INPUT NAME="USER_ID" VALUE="#Orderdata.USER_ID#"></td>
    <TD>Date Record:</TD>
    <TD><INPUT NAME="ORD_DATE_REC" VALUE="#Orderdata.ORD_DATE_REC#"></td>
    <TD>Status:</TD>
    <TD><INPUT NAME="ORD_STATUS" VALUE="#Orderdata.ORD_STATUS#"></td></TR>    
<TR><TD>Fund Type:</TD>
    <TD><INPUT NAME="ORD_FUND_TYPE" VALUE="#Orderdata.ORD_FUND_TYPE#"></td>
</TR>
    </CFOUTPUT>
<TR>
<TD>
<CFIF #ORDTOT.T1# EQ 0>	
    <INPUT TYPE="submit" VALUE=" Delete ">
<CFELSE>
	<BIG><B>We cannot delete this record<BR> 
	because there are dependent <BR>
    order line assigned to this inventory type</B></BIG>
</CFIF>
<br>
</FORM>   
    <FORM action="rc-od1.cfm" method="post">
    <INPUT type="submit" value=" Order Menu ">
    </FORM></TD></TR>
</TABLE>

</body>
</html>






