<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>
    <CFQUERY datasource="RobCor" name="OrderEdit">
        SELECT * FROM ORDERS ORDER BY ORD_ID
    </CFQUERY>
<body>
<CENTER>
<H1>Edit Order</H1></CENTER>
    <TABLE>
	 <TR><TD><FORM ACTION="rc-oe2.cfm" Method="post">
      <input type=hidden name="ORD_ID_required" value="ORD_ID is required">
                <SELECT NAME="ORD_ID" SIZE 4>
        <CFOUTPUT QUERY="OrderEdit">
                <OPTION VALUE="#ORD_ID#">[#ORD_ID#]-#ORD_DESCRIP#
         </CFOUTPUT>
                </SELECT>
         <INPUT TYPE="Submit" VALUE="Edit" name="ACTION">
    </FORM></TD>
	<TD><FORM ACTION="rc-p0.cfm" Method="Link">
		<INPUT TYPE="Submit" VALUE="Main Menu">
	</form>
</TD></TR>
</TABLE>
</body>
</html>






