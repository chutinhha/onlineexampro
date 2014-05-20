<?php
# ----------------------------------------------------
# ----- AFC EASY FORM
# ----- Version 1.2
# ----- Created on: 02/13/07
# ----- Created by: Chris J Anderson
# ----- Support: chris@americanfinancing.net
# ----- Designed for: American Financing
# ----- http://www.americanfinancing.net
# ----- Free Appraisal! 2 Hour Pre-Approval 1 Week Closing. Now That's Service!
# ----- If you found this script helpful, please give it a good rating on www.hotscripts.com 
# ----- PLEASE FEEL FREE TO MODIFY THIS SCRIPT TO YOUR NEEDS, THERE ARE NO RESTRICTIONS
# ----- ENJOY!!!
# ----------------------------------------------------


// Receiving variables
@$Name = addslashes($_POST['Name']);
@$Address = addslashes($_POST['Address']);
@$GSM = addslashes($_POST['GSM']);
@$email = addslashes($_POST['email']);

// Validation
if (! ereg('[A-Za-z0-9_-]+\@[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+', $email))
{
header("Location: error.html");
exit;
}

//Sending Email to form owner
# Email to Owner 
$pfw_header = "From: $email";
$pfw_subject = "oeronline.com - Management Book";
$pfw_email_to = "raviraman@umsoman.com";
$pfw_message = "Name: $Name\n"
. "Address: $Address\n"
. "GSM: $GSM\n"
. "email: $email\n"
. "\n";
@mail($pfw_email_to, $pfw_subject ,$pfw_message ,$pfw_header ) ;

header("Location: http://oeronline.com/php/2007_may/publishes_book_thanx.php");

?>
