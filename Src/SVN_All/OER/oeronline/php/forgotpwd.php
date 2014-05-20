<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>oeronline.com</title>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0" height="161">
  <tr>
    <td width="100%" height="21">
<? include("/home/oer/oeronline-www/inc/top1.php"); ?></td>
  </tr>
 <tr>

    <td width="100%" height="15">

<? include("/home/oer/oeronline-www/inc/menu_gen.htm");

?></td>

  </tr>

  <tr>
    <td width="100%" height="15" valign="middle">
      <font face="Verdana" size="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="22">
      <table border="0" width="100%" cellspacing="0" cellpadding="0" height="90">
        <tr>
          <td width="77%" height="90" valign="top">
            <div align="center">
              <table border="0" width="90%" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="100%">
        
        <p align="center"><br>
        <br>
        <? 




	
	//$db=mysql_connect("localhost","root");
	//mysql_select_db("oer",$db);
	
	$db=mysql_connect("localhost","oer","rtfGREsd");
	mysql_select_db("oeronline_com",$db);

	
	$sql="select * from OER where email=lower('".$_POST['f_email']."')";
	$result=mysql_query($sql);
	if($myrow=mysql_fetch_array($result))
	{
	
		$myname = "Editer -OEROnline"; 
                $myemail = "editor@oeronline.com"; 
                $contactname = "User"; 
                $contactemail = $_POST["f_email"];
                $message = "Your ID :  ".$myrow["id"]." Your Password :  ".$myrow["pwd"]; 
                $subject = "Your ID and Password";
                $headers .= "MIME-Version: 1.0\r\n"; 
                $headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
                $headers .= "From: ".$myname." <".$myemail.">\r\n"; 
                $headers .= "To: ".$contactname." <".$contactemail.">\r\n"; 
                $headers .= "Reply-To: ".$myname." <$myreplyemail>\r\n"; 
                $headers .= "X-Priority: 1\r\n"; 
                $headers .= "X-MSMail-Priority: High\r\n"; 
                $headers .= "X-Mailer: Just My Server"; 
                mail($contactemail, $subject, $message, $headers); 	
                echo "Your  Password has been sent to ".$_POST["f_email"]."<br>";
                echo "<center><a href=/index.php>Home</a>";



        }
	else
	{
		
               echo "<center>No account exists with the email id you specified!</center>"; 
               include("/home/oer/oeronline-www/inc/forgot_password.htm");

	}









?></p>
 
        <p align="center">&nbsp;</p>
 
        <p align="left">&nbsp;</p>
 
        <p align="left">&nbsp;</p>
 
              <center>
                    <hr color="#CC3333">
        </center>
                  </td>
                </tr>
                <tr>
                  <td width="100%"></td>
                </tr>
                <tr>
                  <td width="100%"><? include("/home/oer/oeronline-www/inc/menu1.htm");
?></td>
                </tr>
              <center>
                <tr>
                  <td width="100%"><font size="1">&nbsp;</font></td>
                </tr>
              </table>
              </center>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="61">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">

                       </td>
  </tr>
  <tr>
    <td width="100%">

                    
 <? include("/home/oer/oeronline-www/inc/bottom.htm");
?>                  </td>
  </tr>
</table>

    </td>
  </tr>
</table>

</body>

</html>