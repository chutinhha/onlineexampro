<?php
$myname = "Me Myself"; 
$myemail = "bijusuma@yahoo.com"; 
$contactname = "Mister Contact"; 
$contactemail = "bijusuma@yahoo.com"; 
$message = "hello from happy me"; 
$subject = "A mail not refused by Hotmail"; 
$headers .= "MIME-Version: 1.0\r\n"; 
$headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
$headers .= "From: ".$myname." <".$myemail.">\r\n"; 
$headers .= "To: ".$contactname." <".$contactemail.">\r\n"; 
$headers .= "Reply-To: ".$myname." <$myreplyemail>\r\n"; 
$headers .= "X-Priority: 1\r\n"; 
$headers .= "X-MSMail-Priority: High\r\n"; 
$headers .= "X-Mailer: Just My Server"; 
mail($contactemail, $subject, $message, $headers); 
?>