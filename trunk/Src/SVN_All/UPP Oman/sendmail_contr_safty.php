<?php 
include("class.phpmailer.php");
//print_r($_POST);
//exit;
$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fidha@umsoman.com,dossieroman@gmail.com");
		$mail->Subject = "BEST CONSTRUCTION SAFETY INITIATIVE";
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
    <td width='30%'>Organization Type</td>
    <td width='2%'>:</td>
    <td width='66%'>".$_REQUEST['dropdown']."</td>
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
    <td>".$_REQUEST['Location']."</td>
  </tr>
  <tr>
    <td>Brief description of project</td>
    <td>:</td>
    <td>".$_REQUEST['brief']."</td>
  </tr>
  <tr>
    <td>Project owner&#8217;s name</td>
    <td>:</td>
    <td>".$_REQUEST['project_owner']."</td>
  </tr>
  <tr>
    <td>Project&#8217;s main construction contractor&#8217;s name</td>
    <td>:</td>
    <td>".$_REQUEST['construction_contractor']."</td>
  </tr>
  <tr>
    <td>Name of the safety initiative (if any)</td>
    <td>:</td>
    <td>".$_REQUEST['safety_initiative']."</td>
  </tr>
  <tr>
    <td>What were the project&#8217;s main safety goals?</td>
    <td>:</td>
    <td>".$_REQUEST['safety_goal']."</td>
  </tr>
  <tr>
    <td>Were those goals met accordingly?  </td>
    <td>:</td>
    <td>".$_REQUEST['safety_goal_met']."</td>
  </tr>
  <tr>
    <td>What were the main features of the safety initiative at the project? </td>
    <td>:</td>
    <td>".$_REQUEST['safety_features']."</td>
  </tr>
    <tr>
    <td>What barriers were encountered during implementation <br />of the initiative and how they were met? </td>
    <td>:</td>
    <td>".$_REQUEST['barriers']."</td>
  </tr>

</table>
";

		$mail->Body = $Data;
		$mail->Send();
		echo '<script>window.location.href="http://www.dossieroman.com/thnks.html";</script>';
?>
