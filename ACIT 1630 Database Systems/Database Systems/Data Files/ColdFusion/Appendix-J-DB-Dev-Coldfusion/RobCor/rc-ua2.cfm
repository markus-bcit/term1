<!--- This is a second page of the add routine that allows 
the user to insert a new department in the database--->


<HTML>
<HEAD>
<TITLE>Rob & Coronel - Cold Fusion Problems</TITLE>
</HEAD>

<CFINSERT datasource="RobCor" Tablename="USER">
<center>
<h1> Add User Results </H1>

<CFOUTPUT>

        The record was added successfully.

</CFOUTPUT>



<FORM ACTION="rc-u0.cfm" METHOD=POST>


<INPUT TYPE="Submit" VALUE="User Menu">
</FORM>
</center>
</BODY>
</HTML>





