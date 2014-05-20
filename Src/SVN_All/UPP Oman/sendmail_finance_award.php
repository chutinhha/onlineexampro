<?php 
include("class.phpmailer.php");
//print_r($_POST);
//exit;
$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fidha@umsoman.com,dossieroman@gmail.com");
		$mail->Subject = "BEST PROJECT FINANCE AWARD";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['email'];
		$mail->FromName = $_REQUEST['name'];
		
		$attachename =$_FILES["attachment"]["tmp_name"];
		$atname = $_FILES["attachment"]["name"];
		$mail->AddAttachment($attachename, $atname);

		$Data.="<table width='100%' border='0' cellpadding='4'>
  <tr>
    <td width='30%'>Organization Name</td>
    <td width='2%'>:</td>
    <td width='66%'>".$_REQUEST['orgname']."</td>
  </tr>
  <tr>
    <td>Website Address</td>
    <td>:</td>
    <td>".$_REQUEST['url']."</td>
  </tr>
  <tr>
    <td>Corporate Address</td>
    <td>:</td>
    <td>".$_REQUEST['C_A']."</td>
  </tr>
  <tr>
    <td>Person's Name</td>
    <td>:</td>
    <td>".$_REQUEST['name']."</td>
  </tr>
  <tr>
    <td>Position/Designation</td>
    <td>:</td>
    <td>".$_REQUEST['Designation']."</td>
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
    <td>Project Title </td>
    <td>:</td>
    <td>".$_REQUEST['project']."</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td>".$_REQUEST['location']."</td>
  </tr>
  <tr>
    <td>Brief description of project</td>
    <td>:</td>
    <td>".$_REQUEST['brief']."</td>
  </tr>
  <tr>
    <td>Project owner's name </td>
    <td>:</td>
    <td>".$_REQUEST['project_owner']."</td>
  </tr>
  <tr>
    <td>What was the objective of the finance sought by the project owner or related parties?</td>
    <td>:</td>
    <td>".$_REQUEST['finance_objective']."</td>
  </tr>
  <tr>
    <td>What was the project finance solution offered and delivered by your organization?</td>
    <td>:</td>
    <td>".$_REQUEST['finance_solution']."</td>
  </tr>
  <tr>
    <td>What were the solution&#8217;s unique features?</td>
    <td>:</td>
    <td>".$_REQUEST['unique_solution']."</td>
  </tr>
  <tr>
    <td>How it helped in taking-off of the project and made it a viable proposition in the market?  </td>
    <td>:</td>
    <td>".$_REQUEST['project_takingoff']."</td>
  </tr>
  <tr>
    <td>How the project has helped in making a contribution to the society and economy? </td>
    <td>:</td>
    <td>".$_REQUEST['project_contrbution']."</td>
  </tr>

</table>
";

		$mail->Body = $Data;
		$mail->Send();
		echo '<script>window.location.href="http://www.dossieroman.com/thnks.html";</script>';
?>
