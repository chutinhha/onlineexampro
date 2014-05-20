<?php 
include("class.phpmailer.php");
//print_r($_POST);
//exit;
$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fidha@umsoman.com,dossieroman@gmail.com");
		$mail->Subject = "BEST ENGINEER";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['email'];
		$mail->FromName = $_REQUEST['name'];
		
		$attachename =$_FILES["attachment"]["tmp_name"];
		$atname = $_FILES["attachment"]["name"];
		$mail->AddAttachment($attachename, $atname);

		$Data.="<table width='100%' border='0' cellpadding='4'>
  <tr>
    <td width='30%'>Person's Name</td>
    <td width='2%'>:</td>
    <td width='66%'>".$_REQUEST['orgname']."</td>
  </tr>
  <tr>
    <td>Position/Designation</td>
    <td>:</td>
    <td>".$_REQUEST['position']."</td>
  </tr>
  <tr>
    <td>Organization&#8217;s name</td>
    <td>:</td>
    <td>".$_REQUEST['organization']."</td>
  </tr>
  <tr>
    <td>Email Address</td>
    <td>:</td>
    <td>".$_REQUEST['email']."</td>
  </tr>
  <tr>
    <td>Mobile</td>
    <td>:</td>
    <td>".$_REQUEST['mobile']."</td>
  </tr>
  <tr>
    <td>Telephone</td>
    <td>:</td>
    <td>".$_REQUEST['phone']."</td>
  </tr>
  <tr>
    <td>Which have been your most outstanding projects in the last two years?</td>
    <td>:</td>
    <td>".$_REQUEST['outstanding_projects']."</td>
  </tr>
  <tr>
    <td>What has been your role and achievement in those projects?</td>
    <td>:</td>
    <td>".$_REQUEST['role_achievement']."</td>
  </tr>
  <tr>
    <td>What are your key competencies that makes you the best engineer in Oman?</td>
    <td>:</td>
    <td>".$_REQUEST['key_competencies']."</td>
  </tr>
  <tr>
    <td>What are the key awards or certifications you have received for your work? </td>
    <td>:</td>
    <td>".$_REQUEST['key_awards']."</td>
  </tr>

</table>
";

		$mail->Body = $Data;
		$mail->Send();
		echo '<script>window.location.href="http://www.dossieroman.com/thnks.html";</script>';
?>
