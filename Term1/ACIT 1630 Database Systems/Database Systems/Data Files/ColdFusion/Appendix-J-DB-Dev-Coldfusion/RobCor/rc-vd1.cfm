<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
<CFQUERY NAME="VenData" DATASOURCE="RobCor">
	SELECT * FROM VENDOR WHERE (VENDOR.VEN_CODE='#URL.VEN_CODE#')
    </CFQUERY>
<CFQUERY NAME="VenTot" DATASOURCE="RobCor">	
        SELECT COUNT(*) AS T1 FROM ORDERS
	    WHERE (ORDERS.VEN_CODE = '#URL.VEN_CODE#')</CFQUERY>
</head>

<body>

<center>
<H1>Delete Vendor </h1></center>
<FORM ACTION="rc-vd2.cfm" METHOD="post">

<CFOUTPUT QUERY="VenData">
    
<TABLE ALIGN="CENTER" BGCOLOR="Silver" BORDERCOLOR="Blue">
<TR bgcolor="yellow" valign="top">
		<TD colspan="6" ><font face="" size="+1" color="Black">Vendor Information</font></td></tr>
<TR><TD>Vendor Code:</TD>
     <TD><INPUT NAME="VEN_CODE" VALUE="#Vendata.VEN_CODE#"></TD>
    <TD>Vendor Name:</td>
    <TD><INPUT NAME="VEN_NAME" VALUE="#Vendata.VEN_NAME#"></TD>
    <TD>Contact Person:</td>
    <TD>    <INPUT NAME="VEN_CONTACT_NAME" VALUE="#Vendata.VEN_CONTACT_NAME#"></TD>
    <TR><TD>Vendor Address:</td>
    <TD><INPUT NAME="VEN_ADDRESS" VALUE="#Vendata.VEN_ADDRESS#"></TD>
    <TD>City:</td>
    <TD><INPUT NAME="VEN_CITY" VALUE="#Vendata.VEN_CITY#"></TD>
    <TD>State:</TD>
    <TD><INPUT NAME="VEN_STATE" VALUE="#Vendata.VEN_STATE#"></TD>
</TR>
<TR></tr><TD>Zip:</TD>
    <TD><INPUT NAME="VEN_ZIP" VALUE="#Vendata.VEN_ZIP#"></TD>
    <TD>Vendor Phone:</td>
    <TD><INPUT NAME="VEN_PH" VALUE="#Vendata.VEN_PH#"></TD>
    <TD>Fax:</td>
    <TD><INPUT NAME="VEN_FAX" VALUE="#Vendata.VEN_FAX#"></TD>
<TR><TD>E-Mail:</TD>
    <TD><INPUT NAME="VEN_EMAIL" VALUE="#Vendata.VEN_EMAIL#"></TD>
    <TD>Customer ID:</TD>
    <TD><INPUT NAME="VEN_CUS_ID" VALUE="#Vendata.VEN_CUS_ID#"></TD>
    <TD>Support ID:</TD>
    <TD><INPUT NAME="VEN_SUPPORT_ID" VALUE="#Vendata.VEN_SUPPORT_ID#"></TD>
</TR>
<TR><TD>Support Phone:</TD>
    <TD><INPUT NAME="VEN_SUPPORT_PH" VALUE="#Vendata.VEN_SUPPORT_PH#"></TD>
    <TD>Web Page:</TD>
    <TD><INPUT NAME="VEN_WEB_PAGE" VALUE="#Vendata.VEN_WEB_PAGE#"></TD>
</TR>
    
</CFOUTPUT>
<TR>
<TD valign="bottom">
<CFIF #VENTOT.T1# EQ 0>	
    <INPUT TYPE="submit" VALUE=" Delete ">
<CFELSE>
	<BIG><B>We cannot delete this record<BR> 
	because there are dependent <BR>
    orders assigned to this vendor</B></BIG>
</CFIF>
</FORM>   
</TD>
  <td valign="bottom">  <FORM action="rc-v0.cfm" method="post">
    <INPUT type="submit" value=" Vendor Menu ">
    </FORM></TD></TR>
</TABLE>
</body>
</html>






