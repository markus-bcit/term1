<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>

    <CFQUERY NAME="InvData" DATASOURCE="RobCor">
	    SELECT * FROM INVTYPE WHERE (INVTYPE.TY_GROUP='#URL.TY_GROUP#')
    </CFQUERY>
    <CFQUERY NAME="InvTot" DATASOURCE="RobCor">	
        SELECT COUNT(*) AS T1 FROM ORDER_LINE
	    WHERE (ORDER_LINE.TY_GROUP = '#URL.TY_GROUP#')
    </CFQUERY>

</head>

<body>
<CENTER><H1>Delete Inventory Type</H1></center>
  <FORM ACTION="rc-id2.cfm" METHOD="post">
    <CFOUTPUT QUERY="InvData">

<TABLE ALIGN="CENTER" BGCOLOR="Silver" BORDERCOLOR="Blue">
    <TR bgcolor="yellow" valign="top">
		<TD colspan="6" ><font face="" size="+1" color="Black">Inventory Information</font></td></tr>
        <TR><TD>Type Group:</TD>
        <TD valign="bottom"><INPUT name="TY_GROUP" value="#InvData.TY_GROUP#" ></TD>
        <TD>Type Class:</TD>
        <TD align="bottom"><INPUT NAME="TY_CLASS" VALUE="#InvData.TY_CLASS#"></td>
        <TD>Type Category: </TD>
        <TD><INPUT NAME="TY_CATEG" VALUE="#InvData.TY_CATEG#"></td>
        <TD>Type Type:</TD>
        <TD><INPUT NAME="TY_TYPE" VALUE="#InvData.TY_TYPE#"></td></tr>
    <TR><TD>Subtype:</TD>
        <TD><INPUT NAME="TY_SUBTY" VALUE="#InvData.TY_SUBTY#"></td>
        <TD>Description:</TD>
        <TD><INPUT NAME="TY_DESCR" VALUE="#InvData.TY_DESCR#"></td>
        <TD>Type Unit: </TD>
        <TD><INPUT NAME="TY_UNIT" VALUE="#InvData.TY_UNIT#"></TD>
        <TD>Type Status:</TD> 
        <TD><INPUT NAME="TY_STATUS" VALUE="#Invdata.TY_STATUS#"></TD></TR>
    </CFOUTPUT>
    <TR>
        <TD>
    <CFIF #INVTOT.T1# EQ 0>	
       <INPUT TYPE="submit" VALUE=" Delete ">
    <CFELSE>
	    <BIG><B>We cannot delete this record<BR> 
    	        because there are dependent <BR>
                order line assigned to this inventory type</B></BIG>
    </CFIF>
<BR>
    </FORM>   
    <FORM action="rc-i0.cfm" method="post">
        <INPUT type="submit" value=" Inventory Menu ">
    </FORM>
    </TD></TR>
</TABLE>
</body>
</html>







