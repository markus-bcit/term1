<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
<CFQUERY NAME="InvTypeData" DATASOURCE="RobCor">
        Select TY_CLASS from INVTYPE Order by TY_CLASS
</CFQUERY>    
    
</head>

<body>

<CENTER>
<H1>Search Inventory Type</h1>
<FORM ACTION="rc-is2.cfm" METHOD=POST>
<TABLE background="Silver">
<TR>   <TD>Type Group:</TD>
       <TD><INPUT TYPE ="text" NAME="TY_GROUP" SIZE="10" MAXLENGTH="10"></TD>
        <TR><TD>Type Class:</TD>
        <TD><SELECT NAME="TY_CLASS" SIZE=1>
		<OPTION SELECTED VALUE="ANY">ANY
		 <CFOUTPUT QUERY="InvTypeData">
	     <OPTION VALUE="#InvTypeData.TY_CLASS#">#TY_CLASS#
 		 </CFOUTPUT>
    	 </SELECT></td></TR>
        <TR align="bottom">
		 <TD>
		    <INPUT TYPE="submit" VALUE="Search">
		</FORM>
		</TD>
		<TD>
			<FORM ACTION="rc-i0.cfm" METHOD="post">
			  <INPUT TYPE="submit" VALUE="Inventory Menu">
		    </FORM>
			</td>
	   </TR>		
</TABLE>
</center>
</body>
</html>





