<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
    <CFQUERY NAME="invenlist" datasource="RobCor">
	    SELECT * FROM INVTYPE ORDER BY TY_GROUP
    </CFQUERY>
<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>
    <h1><center>Inventory type<br></H1>
<body>
<TABLE>
    <TR><TD VALIGN=top>
	<FORM action="rc-ia1.cfm"  method="POST">
	<INPUT TYPE="submit" VALUE="Add">
	</FORM>
        </TD>
        <TD VALIGN=top>
	        <FORM ACTION="rc-ie1.cfm" Method="post">
	            <input type=hidden name="TY_GROUP_required" value="TY_GROUP is required">
        	    <SELECT NAME="TY_GROUP" SIZE 20>
		    <CFOUTPUT QUERY="invenlist">
			    <OPTION VALUE="#TY_GROUP#">[#TY_GROUP#] - #TY_CLASS#
		    </CFOUTPUT>
	            </SELECT>
        </TD>
        <TD VALIGN=top>
	        <INPUT TYPE="Submit" VALUE="Edit" name="ACTION">
        </TD>
        <TD VALIGN=top>
	        <input type="Submit" value="Delete" name="ACTION">
	    </FORM>
        </TD>
        <TD VALIGN=top>
	    <FORM ACTION="rc-is1.cfm" method="post">
		    <input type="submit" value="Search">
	    </FORM>
        </TD>
        <TD VALIGN=top>
			<FORM ACTION="rc-p0.cfm" method="link">
			  <input type="submit" value="Main Menu">
			</form></td>
    </TR>
</TABLE>
</body>
</html>








