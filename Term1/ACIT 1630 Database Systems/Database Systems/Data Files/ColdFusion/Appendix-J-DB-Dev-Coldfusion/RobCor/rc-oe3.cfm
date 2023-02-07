<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<CFUPDATE datasource="RobCor" Tablename="ORDERS">
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>

<body><Center>
<H1>Edit Order Results</h1>

    <CFOUTPUT>
<TABLE>
    <TR bgcolor="Yellow" colspan="3"><TD><B>Order Information:</B></TD></tr>
    <TR><TD><B>Order ID:</B><TD>#ORD_ID#</TD>
        <TD><B>Date:</B></TD><TD>#ORD_DATE#</TD>
        <TD><B>Required No.:</B></TD><TD>#ORD_REQ_NUM#</TD>
    </TR>
    <TR><TD><B>PO No.:</B></TD><TD>#ORD_PO_NUM#</TD>
        <TD><B>Vendor:</B></TD><TD>#VEN_CODE#</TD>
        <TD><B>Invoice No.:</B></TD><TD>#ORD_INV_NUM#</TD>
        </TR>    
    <TR><TD><B>Description:</B></TD><TD>#ORD_DESCRIP#</TD>
        <TD><B>Ship Cost:</B></TD><TD>#ORD_SHIP_COST#</TD>
        <TD><B>Total Cost:</B></TD><TD>#ORD_TOT_COST#</TD>
    </TR>    
    <TR><TD><B>User ID:</B></TD><TD>#USER_ID#</TD>
        <TD><B>Date Record:</B></TD><TD>#ORD_DATE_REC#</TD>
        <TD><B>Status:</B></TD><TD>#ORD_STATUS#</TD>
    </TR>
    <TR><TD><B>Fund Type:</B></TD><TD>#ORD_FUND_TYPE#</TD>
    </TR>
    </CFOUTPUT>
    <TR><TD align="center" colspan="3"><FORM ACTION="rc-oe1.cfm" method="post">
                <input type="submit" value="Order Menu">
            </FORM></TD>
    </TR>

</TABLE>
</CENTER>
</body>
</html>




