<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
    
<CFQUERY NAME="DeleteVen" DATASOURCE="RobCor">
	DELETE FROM VENDOR WHERE (VEN_CODE ='#FORM.VEN_CODE#')
</CFQUERY>   
    
    
</head>

<body>
<center><h1>Delete Vendor Results</h1>

You have been successfully deleted the record.
<FORM action="rc-v0.cfm" method="post">
    <INPUT type="submit" value=" Main Menu ">
    </FORM>
</center>
</body>
</html>



