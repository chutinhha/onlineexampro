<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Subscribe Newsletter</title>

<script language="JavaScript"><!--                        
function checkData ()
{
if (document.section.mail.value == "") {
alert("Please Enter Your Email ID.")
document.section.mail.focus()
return false
}}

// --></script>

</head>

<body>
 <?
 include("config.php");
 if ($B1=='Subscribe')
 {

//MYSQL DataBase Connection Section
	   $cnx = mysql_connect($server,$database,$databasePassword);  mysql_select_db($databaseName)		

//This statement is required to select the database from the mysql server
or die("Invalid : " . mysql_error());
//END MYSQL DataBase Connection Section
$SQL_query_String = "Insert Into mail (ID,mail)
Values ('', '$mail')";

    $cur= mysql_query($SQL_query_String )
         or die("Invalid : " . mysql_error());
         echo'<META HTTP-EQUIV="Refresh"
      CONTENT="0; URL=../index.php">';
    }
    else
    {
           echo' 
           
           
    
            
                 <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1" height="98">
                     <form name="section" method="post" action="inc/inc_newsletter.php" onsubmit="return checkData()">

                <tr>
                <td height="16" bgcolor="#E6E6E6">
                <p align="center" dir="ltr"><b>
                <font face="Verdana" style="font-size: 7pt">OER Newsletter</font></b></td>
              </tr>
              <tr>
                <td bgcolor="#F4F4F4" height="44">
                <p align="center" style="margin-top: 5px"><input type="text" name="mail" size="15">
                 <input type="submit" value="Subscribe" name="B1"><br>
                <font size="1">&nbsp;</font></td>
              </tr></form>
            </table>  
            
            
            
            ';
}
            
echo'</body>

</html>';

?>