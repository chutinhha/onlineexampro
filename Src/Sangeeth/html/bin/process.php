<?php
// Chnage this according to your settings 

$to = 'narendra.pakalapati@gmail.com';  // Change the mail according to your need.
$subject = "Contact Form Submission.";  // Mail Subject 
$success_msg = '<strong style="color:#0f7177;">Your Message has been submitted and we will get back to you ASAP.</strong><br /><br />'; // The message displayed after successful mail delivery
$failure_msg = '<h2>Contact Form Submitted!</h2> <p>Due to some reason mail is not sent.</p>'; // The message displayed after mail delivery failure


//Do not edit below this line.

if ( trim($_POST['full_name']) != '' ) {
	$full_name = stripslashes(strip_tags($_POST['full_name']));
} else {
	$full_name = 'No name entered';
}
if ( trim($_POST['user_email']) != '' ) {
	$user_email = stripslashes(strip_tags($_POST['user_email']));
} else {
	$user_email = 'No email entered';
}
if ( trim($_POST['comments']) != '' ) {
	$comments = nl2br(stripslashes(strip_tags($_POST['comments'])));
} else {
	$comments = 'No comments entered';
}
ob_start();
?>
<html>
<head>
<style type="text/css">
</style>
<script type="text/javascript" src="js/contactable/jquery.validate.pack.js"></script>
<script type="text/javascript" src="js/contactable/jquery.contactable.js"></script>
<link rel="stylesheet" href="js/contactable/contactable.css" type="text/css" />
<script type="text/javascript">
	$(function(){
		$('#contact').contactable({
	 		subject: 'A Feeback Message'
	 	});
	});
</script>
</head>
<body>
<div id="contact"></div>
<table style="font-family:'Trebuchet MS', Arial, Helvetica, sans-serif; font-size:12px; color:#666" width="550" border="0" cellspacing="0" cellpadding="0">
<tr bgcolor="#dfdfdf">
    <td style="text-indent:10px; color:#060; font-weight:bold" width="104" height="41"><span style="float:left">Name</span><span style="float:right; color:#999; padding-right:10px">:</span></td>
    <td width="446" ><?=$full_name;?></td>
  </tr>
  <tr bgcolor="#ffffff">
    <td style="text-indent:10px; color:#060; font-weight:bold" height="41"><span style="float:left">Email</span><span style="float:right; color:#999; padding-right:10px">:</span></td>
    <td style="font-style:italic" ><?=$user_email;?></td>
  </tr>
  <tr bgcolor="#dfdfdf">
    <td style="text-indent:10px; padding:10px 0 0 0; color:#060; font-weight:bold" height="41" valign="top"><span style="float:left">Comments</span><span style="float:right; color:#999; padding-right:10px">:</span></td>
    <td style="padding:10px 20px 10px 0; text-align:justify" valign="top"><?=$comments;?></td>
  </tr>
</table>
</body>
</html>
<?
$body = ob_get_contents();
ob_end_clean();

$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
$headers .= 'From: '.$full_name.' <'.$user_email.'>' . "\r\n";

if(mail($to, $subject, $body, $headers)) {
echo $success_msg;
} else {
echo $failure_msg;
}
?>