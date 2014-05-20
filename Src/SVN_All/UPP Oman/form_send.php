<?php 
include("class.phpmailer.php");
//print_r($_POST);
//exit;
$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fidha@umsoman.com,dossieroman@gmail.com");
		//$mail->AddAddress("tqwebsupport@gmail.com");
		$mail->Subject = "BEST SUSTAINABLE PROJECT AWARD";
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
    <td>Organization Type</td>
    <td>:</td>
    <td>".$_REQUEST['orgtype']."</td>
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
    <td>".$_REQUEST['designation']."</td>
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
    <td>Project's chief design contractor's name</td>
    <td>:</td>
    <td>".$_REQUEST['project_owner_contractor']."</td>
  </tr>
  <tr>
    <td>Project's main construction contractor's name</td>
    <td>:</td>
    <td>".$_REQUEST['project_owner_contractor_main']."</td>
  </tr>
  <tr>
    <td>What were the project's overall objectives?</td>
    <td>:</td>
    <td>".$_REQUEST['project_overall']."</td>
  </tr>
  <tr>
    <td>What factors were kept in mind to make it attain high standards of sustainability? </td>
    <td>:</td>
    <td>".$_REQUEST['project_sustainability']."</td>
  </tr>
  <tr>
    <td>What have been the main achievements that make it the most sustainable project? </td>
    <td>:</td>
    <td>".$_REQUEST['project_achieve']."</td>
  </tr>
  <tr>
    <td>What value the project has added to the society and economy?</td>
    <td>:</td>
    <td>".$_REQUEST['project_value']."</td>
  </tr>
</table>
";

		$mail->Body = $Data;
		$mail->Send();
		echo '<script>window.location.href="http://www.dossieroman.com/#nomination";</script>';
?>
