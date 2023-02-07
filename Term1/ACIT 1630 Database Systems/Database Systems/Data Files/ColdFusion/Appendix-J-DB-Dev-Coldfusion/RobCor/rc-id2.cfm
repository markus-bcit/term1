<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Rob & Coronel -  Cold Fusion Problems</title>
    
    <CFQUERY NAME="DeleteInv" DATASOURCE="RobCor">
    	DELETE FROM INVTYPE WHERE (TY_GROUP ='#FORM.TY_GROUP#')
    </CFQUERY>   
  
</head>

<body>
<CENTER><H1>Delete Inventory Type Results</H1>
<PRE>
The record has been deleted successfully.
    <FORM action="rc-i0.cfm" method="post">
        <INPUT type="submit" value=" Inventory Menu ">
    </FORM>
</pre>

</center>
</body>
</html>






