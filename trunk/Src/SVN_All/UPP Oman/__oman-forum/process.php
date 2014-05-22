<?php

//Oman Forum 
$your_email = 'fidha@umsoman.com'; 
$subject = "Contact Message"; 
$thanks_page = "/oman_forum/thankyou.html"; 
$contact_page = "/oman_forum/contacts.html"; 


// Nothing needs to be modified below this line

if (!isset($_POST['submit'])) {
    header( "Location: $contact_page" );
  }

if (isset($_POST["submit"])) {
	$nam = $_POST["name"];
	$ema = trim($_POST["email"]);
	$com = $_POST["message"];

$error_msg=array(); 

if (empty($nam) || !preg_match("~^[a-z\-'\s]{1,60}$~i", $nam)) { 
$error_msg[] = "The name field must contain only letters, spaces, dashes ( - ) and single quotes ( ' )";
}

if (empty($ema) || !filter_var($ema, FILTER_VALIDATE_EMAIL)) {
	$error_msg[] = "Your email must have a valid format, such as info@oman-forum.com";
}

$limit = 5000;

if (empty($com) || $com == 'Message' || !preg_match("/^[0-9A-Za-z\/-\s'\(\)!\?\.,]+$/", $com) || (strlen($com) > $limit)) { 
$error_msg[] = "The Message field must contain only letters, digits, spaces and basic punctuation (&nbsp;'&nbsp;-&nbsp;,&nbsp;.&nbsp;), and has a limit of 5000 characters";
}

// Assuming there's an error, refresh the page with error list and repeat the form

if ($error_msg) {
echo '
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Oman Forum | Contacts</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="user" >
<link href="http://fonts.googleapis.com/css@family=Open+Sans_3A400,600,700,400italic" rel="stylesheet" type="text/css">

<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/theme.css" rel="stylesheet">
<link href="../css/bootstrap-responsive.css" rel="stylesheet">
<link href="../css/base_color.css" rel="stylesheet">
<!--[if gte IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<style type="text/css">
    .ch-info .ch-info-back {display:none;
    }
    .ch-item:hover  .ch-info-back {display:block;
    }

</style>
<![endif]-->  
<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="http://oman-forum.com/oman_forum/images/assets/ico/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144" href="../images/assets/ico/apple-touch-icon-144.png">
<link rel="apple-touch-icon" sizes="114x114" href="../images/assets/ico/apple-touch-icon-114.png">
<link rel="apple-touch-icon" sizes="72x72" href="../images/assets/ico/apple-touch-icon-72.png">
<link rel="apple-touch-icon" href="../images/assets/ico/apple-touch-icon-57.png">

</head>
<body>
	<div class="main_wrapper">
        <!--header-->
        <div class="header">
            <div class="wrap">
                <div class="container">
                    <div class="row">
                        <div class="span4">
                            <div class="logo1"><a href="../index.html"><img src="../images/logo_1.jpg" alt="" /></a></div>  
                        </div>
                        <div class="span8">                    	
                            <!--menu-->
                            <nav id="main_menu" style="z-index:8888;">
                                <div class="menu_wrap">
                                    <ul class="nav sf-menu">
                                      <li class="sub-menu "><a href="javascript:{}">About Us</a>   <ul>
                                              <li><a href="../about.html"><span>-</span>AIWA</a></li>
                                              <li><a href="../2012_edition.html"><span>-</span>Oman Forum - 2012</a></li>                                          
                                          </ul></li>
                                      <li class="sub-menu"><a href="../concept.html">Concept</a></li>
                                      <li class="sub-menu"><a href="../programme.html">Programme</a></li>                                  
                                      <li class="sub-menu"><a href="../panelists.html">Panelists</a></li>
                                      <li class="sub-menu"><a href="../audience.html">Audience</a></li>
                                      <li class="sub-menu"><a href="../partners.html">Partners</a></li>
                                      <li class="sub-menu"><a href="../press.html">Press</a></li>
                                    </ul>                            
                                </div>                        
                            </nav> 
                            <!--//menu-->                 
                        </div>
                    </div> 
                 </div>
            </div>    
        </div>
        <!--//header-->  
          
    <!--page_container-->
    <div class="page_container">
    	<div class="page_container_top"></div>
    	<div class="wrap">
        	<div class="container">
            	<!--main content-->
                <div class="main page_in"> 
                	<!--page_info-->
                	<div class="page_info">
                        <h1>Contact us</h1>   
                           	
                    </div>  
                    <!--page_info-->                	
                    <!--Contacts-->
                    <div class="container">
                        <section>
                            <div class="row">
                            	<div class="span8">
                                    <h2>Our Location</h2>
                                    <div id="map">
										<img border="0" src="../images/map.jpg"></div>
                                    <div class="contact_info">
                                    	<div class="row">
                                        	<div class="span4">
                                            	<p class="i1">Sultanate of Oman<br>Ruwi</p>
                                    			<p class="i2"><a href="mailto:fidha@umsoman.com">fidha@umsoman.com</a></p> 
                                            </div>
                                            <div class="span4">
                                            	<p class="i5">+968 24700896  Ext: 335<br>+968 99653581 </p>
                                                <p class="i4"><a href="#">twitter.com/</a></p>
                                            </div>
                                        </div> 
                                    </div> 
                                    <h2>Contact Form</h2>
                                    <div class="contact_form">  
                                        <div id="note">	                                   
<p style="color: red; font-size: 0.875em; margin: 1em 0; padding: 0 2em;">Unfortunately, your message could not be sent. The form as you filled it out is displayed below. Make sure each field completed, and please also address any issues listed below:</p>
<ul style="color: red; font-size: 0.875em; margin: 1em 0; padding: 0 2em;">';
foreach ($error_msg as $err) {
echo '<li>'.$err.'</li>';
}
echo '</ul>
</div>
                                        <div id="fields">
                                            <form action="', $_SERVER['PHP_SELF'], '">
                                                <input class="span8" type="text" name="name" value="'; if (isset($_POST["name"])) {echo $nam;}; echo '" title="Name (required)" />
                                                <input class="span8" type="text" name="email" value="'; if (isset($_POST["email"])) {echo $ema;}; echo '" title="Email (required)" />
                                                <textarea name="message" id="message" class="span8" title="Message">'; if (isset($_POST["message"])) {echo $com;}; echo '</textarea>
                                                <div class="clear"></div>
                                                <input type="reset" class="btn" value="Clear form" />
                                                <input type="submit" class="btn btn_color" value="Submit" name="submit" />
                                                <div class="clear"></div>
                                            </form>
                                        </div>
                                    </div>
                                    
                                                           
                                </div>
                                <div class="span4">
                                                                 
                                </div>
                            </div>
                        </section>
                    </div>                    
                    <!--//Contacts-->
                </div>
                <!--//main content-->
            </div>
         </div>
         <div class="page_container_bottom"></div>
	</div>
    <!--//page_container-->     
    
    <!--footer-->
        <div id="footer">
            
            <div class="footer_bottom">
                <div class="wrap">
                    <div class="container">
                        <div class="row">
                            <div class="span4">
                            <div class="socials" style="margin-top:-18px;">
                            <ul>
                                <li><a href="#" class="facebook" title="Facebook"></a></li>
                                <li><a href="#" class="twitter" title="Twitter"></a></li>
                                <li><a href="#" class="google" title="Google+"></a></li>
                                <li><a href="#" class="linkedin" title="LinkedIn"></a></li>
                                <li><a href="#" class="feed" title="RSS Feed"></a></li>
                            </ul>  
                            </div>
                            </div>
                            <div class="fleft foot_menu" style="margin-left:-170px;margin-top:4px;">
                                <ul>
                                    <li><a href="../index.html">Home</a></li>
                                    <li><a href="../contacts.html">Contact us</a></li>
                                </ul>
                            </div><div class="copyright fright" style="padding-top:5px;">           &copy; 2013 Oman Forum. All Rights Reserved. </div>
                        </div>	
                    </div>
                </div>
            </div>
        </div>
        <!--//footer-->  
	</div>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/theme.js"></script>    
</body>
</html>
';
exit();
} 

$email_body = 
	"Name of sender: $nam\n\n" .
	"Email of sender: $ema\n\n" .
    "Message:\n\n" .
	"$com" ; 

// Assuming there's no error, send the email and redirect to Thank You page

if (isset($_REQUEST['message']) && !$error_msg) {
mail ($your_email, $subject, $email_body, "From: $nam <$ema>" . "\r\n" . "Reply-To: $nam <$ema>");
header ("Location: $thanks_page");
exit();
}  
}
