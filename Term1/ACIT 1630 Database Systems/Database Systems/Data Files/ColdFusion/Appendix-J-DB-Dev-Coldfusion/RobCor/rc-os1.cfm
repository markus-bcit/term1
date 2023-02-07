<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
    <CFQUERY NAME="ORDERLIST" DATASOURCE="RobCor">
	    Select ORD_DESCRIP from ORDERS ORDER BY ORD_ID
    </CFQUERY>
    <title>Rob & Coronel -  Cold Fusion Problems</title>
</head>

<body>
<Center><H1>Search Order</h1></center>
<FORM ACTION="rc-os2.cfm" METHOD="POST">
<TABLE ALIGN="CENTER" BGCOLOR="Silver">
	<TR>
	<TD ALIGN="right">Order ID:</TD>
	<TD> 
	<INPUT TYPE ="text" NAME="ORD_ID" SIZE="10" MAXLENGTH="10"></TD>
	</TR>
	<TR>
	<TD ALIGN="right">Order Description:</TD>
	<TD><SELECT NAME="ORD_DESCRIP" SIZE=1>
		<OPTION SELECTED VALUE="ANY">ANY
		 <CFOUTPUT QUERY="ORDERLIST">
	     <OPTION VALUE="#ORDERLIST.ORD_DESCRIP#">#ORD_DESCRIP#
 		 </CFOUTPUT>
    	 </SELECT>
	</TD>
	</TR>
	<TR>
	<TD ALIGN="right" VALIGN="middle">
		<INPUT TYPE="submit" VALUE="Search">
	</FORM>
	</TD>
    
	<TD ALIGN="right" VALIGN="middle">
		<FORM ACTION="rc-p0.cfm" METHOD="Link">
			<INPUT TYPE="submit" VALUE="Main Menu ">
		</FORM>
	</TD>
	</TR>
</TABLE>
</body>
</html>







