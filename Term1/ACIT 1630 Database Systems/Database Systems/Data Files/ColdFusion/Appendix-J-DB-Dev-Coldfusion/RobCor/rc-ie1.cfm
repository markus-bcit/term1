    <cfif #form.action#EQ"delete">
        <cflocation url="rc-id1.cfm?TY_GROUP=#form.TY_GROUP#" addtoken="No">
    </cfif>
    <CFQUERY datasource="RobCor" name="InventEdit">
        SELECT * FROM INVTYPE WHERE (INVTYPE.TY_GROUP='#form.TY_GROUP#')
    </CFQUERY>

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>
<body>
    <H1><CENTER>Edit Inventory Type</CENTER></H1>

    <FORM action="rc-ie2.cfm" method="post">
    <table width="100" align="RIGHT" valign="TOP" nowrap bgcolor="Silver" bordercolor="Aqua">
	    <TR bgcolor="yellow" valign="top">
		<TD colspan="6" ><font face="" size="+1" color="Black">Inventory Information</font></td></tr>
        <cfoutput Query="InventEdit">
    <TR bgcolor="yellow" valign="top">
    <TR><TD align="right" nowrap valign="bottom">Type Group:</TD>
		<TD valign="bottom"><INPUT TYPE="text" name="TY_GROUP" value="#TY_GROUP#" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Class:</TD>
		<TD valign="bottom"><INPUT TYPE="text" name="TY_CLASS" value="#TY_CLASS#" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Category:</TD>
		<TD valign="bottom"><INPUT TYPE="text" name="TY_CATEG" value="#TY_CATEG#" maxlength="20"></TD></tr>
    <TR><TD align="right" nowrap valign="bottom">Type:</TD>
		<TD valign="bottom"><INPUT TYPE="text" name="TY_TYPE" value="#TY_TYPE#" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Subtype:</TD>
		<TD valign="bottom"><INPUT TYPE="text" name="TY_SUBTY" value="#TY_SUBTY#" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Description:</TD>
		<TD valign="bottom"><INPUT TYPE="text" name="TY_DESCR" value="#TY_DESCR#" maxlength="20"></TD></tr>
    <TR><TD align="right" nowrap valign="bottom">Type Unit:</TD>
        <TD valign="bottom"><INPUT TYPE="text" name="TY_UNIT" value="#TY_UNIT#" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Status:</TD>
		<TD valign="bottom"><INPUT TYPE="text" name="TY_STATUS" value="#TY_STATUS#" maxlength="20"></TD></tr>
    <tr align="RIGHT">
        <td width="100" colspan="2" align="LEFT" valign="MIDDLE">
            <INPUT type="submit" value=" Edit Record ">
        </FORM>   
	    </td>
		<TD width="100" colspan="2" align="LEFT" valign="MIDDLE">
			<FORM action="rc-i0.cfm" METHOD="post">
			  <INPUT TYPE ="submit" value="Inventory Menu">
			</FORM>  
	    </td>
        </tr>
        </cfoutput>
		
</TABLE>


</body>
</html>








