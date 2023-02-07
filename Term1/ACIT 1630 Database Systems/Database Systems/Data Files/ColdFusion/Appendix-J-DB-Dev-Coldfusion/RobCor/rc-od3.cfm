<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
</head>
<CFQUERY NAME="DeleteOrder" DATASOURCE="RobCor">
	DELETE FROM ORDERS WHERE (ORD_ID =#FORM.ORD_ID#)
</CFQUERY>   
    
<body>
<center>
<H1>Delete Order Results</h1>
<PRE>
You have been successfully deleted the record.
<FORM action="rc-p0.cfm" method="Link">
    <INPUT type="submit" value="Order Menu ">
    </FORM>
</pre>

</center>
</body>
</html>




