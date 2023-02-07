<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
    <CFQUERY NAME="Inventorylist" datasource="RobCor">
        SELECT * FROM INVTYPE ORDER BY TY_GROUP
    </CFQUERY>
<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>

<body bgcolor="lightblue">
<CENTER><H1>Add Inventory Type</h1></CENTER>
    <FORM action="rc-ia2.cfm" method="post">
        <input type=hidden name="TY_GROUP_required" value="TY_GROUP is required">
<table width="100" align="RIGHT" valign="TOP" nowrap bgcolor="Silver" bordercolor="Aqua">
	<TR bgcolor="yellow" valign="top">
    <TD colspan="6"><font size="+1">Inventory Information</font></td></TR>
    <TR>
		<TD align="right" nowrap valign="bottom">Type Group:</TD>
		<TD valign="bottom"><INPUT name="TY_GROUP" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Class:</TD>
		<TD valign="bottom"><INPUT name="TY_CLASS" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Category:</TD>
		<TD valign="bottom"><INPUT name="TY_CATEG" maxlength="20"></TD>
    </TR>
    <TR><TD align="right" nowrap valign="bottom">Type:</TD>
		<TD valign="bottom"><INPUT name="TY_TYPE" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Subtype:</TD>
		<TD valign="bottom"><INPUT name="TY_SUBTY" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Description:</TD>
		<TD valign="bottom"><INPUT name="TY_DESCR" maxlength="20"></TD>
    </TR>
    <TR><TD align="right" nowrap valign="bottom">Type Unit:</TD>
        <TD valign="bottom"><INPUT name="TY_UNIT" maxlength="20"></TD>
        <TD align="right" nowrap valign="bottom">Type Status:</TD>
		<TD valign="bottom"><INPUT name="TY_STATUS" maxlength="20"></TD>
    </TR>
    <TR align="RIGHT" >
        <TD width="100" colspan="2" align="LEFT" valign="MIDDLE">
            <INPUT type="submit" value=" Add Record "></TD>
       <TD width="100" colspan="2" align="LEFT" valign="MIDDLE">
	   </td></FORM>  
	   <TD><FORM ACTION="rc-i0.cfm" method="post">
	      <INPUT TYPE="submit" value="Inventory Menu">
  		 </FORM></TD>     
    </TR>

</TABLE>
    
</body>
</html>









