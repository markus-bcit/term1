<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
<CFQUERY NAME="SearchOrder" DATASOURCE="RobCor">
SELECT *
FROM
ORDERS
WHERE 0=0
<CFIF #FORM.ORD_ID# IS NOT "">
		AND ORDERS.ORD_ID LIKE '%#FORM.ORD_ID#%'
	</CFIF>	
    <CFIF #FORM.ORD_DESCRIP# IS NOT "ANY">
        AND ORDERS.ORD_DESCRIP LIKE '%#FORM.ORD_DESCRIP#%'
	</CFIF>
    ORDER BY ORD_ID
</CFQUERY>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>

<body>
<H1>
<CENTER><B> Search Order Results</B></CENTER>
</H1>
<BR>
<CFTABLE QUERY="SearchOrder" STARTROW="1" COLSPACING="1" COLHEADERS>
<CFCOL HEADER="<B>Order ID</B>" WIDTH="8" TEXT="#ORD_ID#">
<CFCOL HEADER="<B>Date</B>" WIDTH="10" TEXT="#ORD_DATE#">
<CFCOL HEADER="<B>Description</B>" WIDTH="25" TEXT="#ORD_DESCRIP#">
<CFCOL HEADER="<B>Invoice No.</B>" WIDTH="11" TEXT="#ORD_INV_NUM#">
<CFCOL HEADER="<B>PO No.</B>" WIDTH="6" TEXT="#ORD_PO_NUM#">
<CFCOL HEADER="<B>Vendor Code</B>" WIDTH="14" TEXT="#VEN_CODE#">
<CFCOL HEADER="<B>Total</B>" WIDTH="8" TEXT="#ORD_TOT_COST#">
<CFCOL HEADER="<B>Status</B>" WIDTH="10" TEXT="#ORD_STATUS#">

</CFTABLE>
<CFIF #SEARCHORDER.RECORDCOUNT# IS 0>
  	<H2>No records were found matching your criteria </H2>
<CFELSE>
	<CFOUTPUT>Your seach returned #SearchOrder.RecordCount# record(s).</CFOUTPUT>
</CFIF>
<FORM ACTION="rc-os1.cfm" METHOD="POST">
	<INPUT TYPE="submit" VALUE="Search Order Menu ">
</FORM>

</body>
</html>





