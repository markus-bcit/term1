<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
<CFQUERY NAME="SearchInvType" DATASOURCE="RobCor">
    SELECT * FROM INVTYPE 
             WHERE 0=0
    <CFIF #FORM.TY_GROUP# IS NOT "">
		AND INVTYPE.TY_GROUP LIKE '%#FORM.TY_GROUP#%'
	</CFIF>	
     <CFIF #FORM.TY_CLASS# IS NOT "ANY">
        AND INVTYPE.TY_CLASS LIKE '%#FORM.TY_CLASS#%'
	</CFIF>
    ORDER BY TY_GROUP </CFQUERY>
</head>

<body>
<CENTER><H1>Search Inventory Type Results</H1></center>
<br>
  
<CFTABLE QUERY="SearchInvType" STARTROW="1" COLSPACING="1" COLHEADERS>
<CFCOL HEADER="<B>Inventory Group:</B>" WIDTH="14" TEXT="#TY_GROUP#">
<CFCOL HEADER="<B>Inventory Class:</B>" WIDTH="20" TEXT="#TY_CLASS#">
<CFCOL HEADER="<B>Inventory Category:</B>" WIDTH="20" TEXT="#TY_CATEG#">
<CFCOL HEADER="<B>Inventory Type:</B>" WIDTH="20" TEXT="#TY_TYPE#">
<CFCOL HEADER="<B>Inventory Subtype:</B>" WIDTH="20" TEXT="#TY_SUBTY#">
<CFCOL HEADER="<B>Inventory Description:</B>" WIDTH="2" TEXT="#TY_DESCR#">
<CFCOL HEADER="<B>Inventory Unit:</B>" WIDTH="20" TEXT="#TY_UNIT#">
<CFCOL HEADER="<B>Inventory Status:</B>" WIDTH="20" TEXT="#TY_STATUS#">
</CFTABLE>
<CFIF #SEARCHINVTYPE.RECORDCOUNT# IS 0>
  	<H2>No records were found matching your criteria </H2>
<CFELSE>
	<CFOUTPUT>Your seach returned #SearchInvType.RecordCount# record(s).</CFOUTPUT>
</CFIF>


<FORM action="rc-i0.cfm" method="post">
<INPUT type="submit" value="Inventory Menu">
</FORM>
</body>
</html>







