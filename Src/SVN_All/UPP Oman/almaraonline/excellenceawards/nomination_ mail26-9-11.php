<?php 
session_start();
$_SESSION['formValues'] = $_POST;
$time =time() + 15;
for($i = 1; $i<=10 ;$i++)
{
$txtAchiev = 'txtAchievementAchievemtList'.$i;
$txtEffectiveness = 'txtEffectivenessAchievemtList'.$i;$txtInnovation = 'txtInnovationAchievemtList'.$i;$txtImpact = 'txtImpactAchievemtList'.$i;
$txtAchievLeadership = 'txtAchievLeadershipAchievemtList'.$i;
$txtRefTitle1 = 'txtRefTitle1AchievemtList'.$i;$txtRefName1 = 'txtRefName1AchievemtList'.$i;$txtRefOrganization1 = 'txtRefOrganization1AchievemtList'.$i;
$txtRefDesignation1 = 'txtRefDesignation1AchievemtList'.$i;$txtRefEmail1 = 'txtRefEmail1AchievemtList'.$i;
$txtRefontactNo1 ='txtRefontactNo1AchievemtList'.$i;
$txtRefTitle2 ='txtRefTitle2AchievemtList'.$i;
$txtRefName2 = 'txtRefName2AchievemtList'.$i;
$txtRefOrganization2 = 'txtRefOrganization2AchievemtList'.$i;
$txtRefDesignation2 ='txtRefDesignation2AchievemtList'.$i;
$txtRefEmail2 = 'txtRefEmail2AchievemtList'.$i;
$txtRefontactNo2 = 'txtRefontactNo2AchievemtList'.$i;

if(isset($_SESSION['formValues'][$txtAchiev]) || $_SESSION['formValues'][$txtAchiev] != '' )
	setcookie($txtAchiev,$_SESSION['formValues'][$txtAchiev],$time);
	
if(isset($_SESSION['formValues'][$txtEffectiveness]) || $_SESSION['formValues'][$txtEffectiveness] != '' )
	setcookie($txtEffectiveness,$_SESSION['formValues'][$txtEffectiveness],$time);
	
if(isset($_SESSION['formValues'][$txtInnovation]) || $_SESSION['formValues'][$txtInnovation] != '' )
	setcookie($txtInnovation,$_SESSION['formValues'][$txtInnovation],$time);
	
if(isset($_SESSION['formValues'][$txtImpact]) || $_SESSION['formValues'][$txtImpact] != '' )
	setcookie($txtImpact,$_SESSION['formValues'][$txtImpact],$time);
	
if(isset($_SESSION['formValues'][$txtAchievLeadership]) || $_SESSION['formValues'][$txtAchievLeadership] != '' )
	setcookie($txtAchievLeadership,$_SESSION['formValues'][$txtAchievLeadership],$time);
	
if(isset($_SESSION['formValues'][$txtRefTitle1]) || $_SESSION['formValues'][$txtRefTitle1] != '' )
	setcookie($txtRefTitle1,$_SESSION['formValues'][$txtRefTitle1],$time);
	
if(isset($_SESSION['formValues'][$txtRefName1]) || $_SESSION['formValues'][$txtRefName1] != '' )
	setcookie($txtRefName1,$_SESSION['formValues'][$txtRefName1],$time);
	
if(isset($_SESSION['formValues'][$txtRefOrganization1]) || $_SESSION['formValues'][$txtRefOrganization1] != '' )
	setcookie($txtRefOrganization1,$_SESSION['formValues'][$txtRefOrganization1],$time);
	
if(isset($_SESSION['formValues'][$txtRefDesignation1]) || $_SESSION['formValues'][$txtRefDesignation1] != '' )
	setcookie($txtRefDesignation1,$_SESSION['formValues'][$txtRefDesignation1],$time);
	
if(isset($_SESSION['formValues'][$txtRefEmail1]) || $_SESSION['formValues'][$txtRefEmail1] != '' )
	setcookie($txtRefEmail1,$_SESSION['formValues'][$txtRefEmail1],$time);
	
if(isset($_SESSION['formValues'][$txtRefontactNo1]) || $_SESSION['formValues'][$txtRefontactNo1] != '' )
	setcookie($txtRefontactNo1,$_SESSION['formValues'][$txtRefontactNo1],$time);
	
if(isset($_SESSION['formValues'][$txtRefTitle2]) || $_SESSION['formValues'][$txtRefTitle2] != '' )
	setcookie($txtRefTitle2,$_SESSION['formValues'][$txtRefTitle2],$time);
	
if(isset($_SESSION['formValues'][$txtRefName2]) || $_SESSION['formValues'][$txtRefName2] != '' )
	setcookie($txtRefName2,$_SESSION['formValues'][$txtRefName2],$time);
	
if(isset($_SESSION['formValues'][$txtRefOrganization2]) || $_SESSION['formValues'][$txtRefOrganization2] != '' )
	setcookie($txtRefOrganization2,$_SESSION['formValues'][$txtRefOrganization2],$time);

if(isset($_SESSION['formValues'][$txtRefDesignation2]) || $_SESSION['formValues'][$txtRefDesignation2] != '' )
	setcookie($txtRefDesignation2,$_SESSION['formValues'][$txtRefDesignation2],$time);

if(isset($_SESSION['formValues'][$txtRefontactNo2]) || $_SESSION['formValues'][$txtRefontactNo2] != '' )
	setcookie($txtRefontactNo2,$_SESSION['formValues'][$txtRefontactNo2],$time);
	
if(isset($_SESSION['formValues'][$txtRefEmail2]) || $_SESSION['formValues'][$txtRefEmail2] != '' )
	setcookie($txtRefEmail2,$_SESSION['formValues'][$txtRefEmail2],$time);
}

include("class.phpmailer.php");
$name= $_POST["txtName"];
$surName= $_POST["txtSurName"];
$date= $_POST["txtBirDate"];
$leadership= $_POST["txtLeadership"];
$strengths= $_POST["txtStrengths"];
$txtVision= $_POST["txtVision"];
$mob= $_POST["txtMob"];
$land= $_POST["txtland"];
$email= $_POST["txtEmail"];
$award= $_POST["txtAward"];
$educatn= $_POST["txteducatn"];
$university= $_POST["txtUniversity"];
$industry= $_POST["txtIndustry"];
$company= $_POST["txtCompany"];
$dep= $_POST["txtDep"];
$design= $_POST["txtDesign"];
$achievemtList1= $_POST["AchievemtList1"];
$achievemtList2= $_POST["AchievemtList2"];
$achievemtList3= $_POST["AchievemtList3"];
$achievemtList4= $_POST["AchievemtList4"];
$achievemtList5= $_POST["AchievemtList5"];
$achievemtList6= $_POST["AchievemtList6"];
$achievemtList7= $_POST["AchievemtList7"];
$achievemtList8= $_POST["AchievemtList8"];
$achievemtList9= $_POST["AchievemtList9"];
$achievemtList10= $_POST["AchievemtList10"];
if(($_POST['secCode'] != $_SESSION['secCode']) || ($_POST['secCode']=='' ))
		{
					header("Location:nomination.php?code=1");

		}
else{

$toMail ="laurelledesa@gmail.com,laurelle@umsoman.net, nadinhadi@gmail.com, nadia@umsoman.net";


$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress($toMail);
	
		$mail->Subject = "Excellence Awards Nomination";
		$mail->IsHTML(true);
		$mail->From = $email;
		$mail->FromName = $name;
$message = '<table border="0" cellpadding="5" cellspacing="1"  class="tblestyle" width="700">
  <tr>
    <td colspan="3" align="center" bgcolor="#f2f2f1"><b>Section A</b></td>
  </tr>
  <tr>
    <td colspan="3" bgcolor="#f2f2f1" ><strong>Personal Details</strong></td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9"> Name: </td>
    <td width="382" height="22" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtName'].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9"> Surname: </td>
    <td width="382" height="22" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtSurName'].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Birthdate:</td>
    <td width="382" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtBirDate'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Leadership Qualities:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtLeadership'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Character Strengths:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtStrengths'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Vision/Goals: </td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtVision'].'</td>
  </tr>
  <tr>
    <td height="22" colspan="3" bgcolor="#f2f2f1" ><b>Contact Details</b></td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Mobile:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtMob'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Landline:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtland'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> E-mail:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtEmail'].'</td>
  </tr>
  <tr>
    <td colspan="3" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" align="center" bgcolor="#f2f2f1"><b>Section B</b></td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9">Award Category</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtAward'].'</td>
  </tr>
  <tr>
    <td height="22" colspan="3" bgcolor="#f2f2f1" ><b>Contact Details</b></td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Highest Level of Education Achieved:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txteducatn'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> University/Institution:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtUniversity'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Industry/Field:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtIndustry1'].'</td>
  </tr>
  <tr>
    <td height="22" colspan="3" bgcolor="#f2f2f1" ><b>Employment/Work</b></td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Company:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtCompany'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Department:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtDep'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9">Designation:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtDesign'].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Industry/Field:</td>
    <td width="382" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues']['txtIndustry'].'</td>
  </tr>
  <tr>
    <td height="22" colspan="3" bgcolor="#f2f2f1" ><b>Career
      Accomplishments</b></td>
  </tr>
  <tr>
    <td width="268" bgcolor="#fafaf9" >List of Achievements in Career:</td>
    <td width="16" bgcolor="#fafaf9" >1</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList1'].' </td>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >2</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList2'].' </td>
  </tr>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >3</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList3'].' </td>
  </tr>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >4</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList4'].' </td>
  </tr>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >5</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList5'].' </td>
  </tr>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >6 </td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList6'].' </td>
  </tr>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >7</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList7'].' </td>
  </tr>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >8</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList8'].' </td>
  </tr>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >9</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList9'].' </td>
  </tr>
  <tr>
    <td bgcolor="#fafaf9" >&nbsp;</td>
    <td bgcolor="#fafaf9" >10</td>
    <td bgcolor="#fafaf9">'.$_SESSION['formValues']['AchievemtList10'].' </td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" align="center" bgcolor="#f2f2f1"><b>Section C</b></td>
  </tr>
  <tr>
    <td height="22" colspan="3" bgcolor="#f2f2f1" ><b>Achievement Details</b></td>
  </tr>
             ';
				  for($i = 1; $i<=10 ;$i++)
{
	$txtAchiev = 'hiddenVal_AchievemtList'.$i;
	$achive = 'AchievemtList'.$i;
	
	$txtAchiev1 = 'txtAchievementAchievemtList'.$i;
$txtEffectiveness = 'txtEffectivenessAchievemtList'.$i;$txtInnovation = 'txtInnovationAchievemtList'.$i;$txtImpact = 'txtImpactAchievemtList'.$i;
$txtAchievLeadership = 'txtAchievLeadershipAchievemtList'.$i;
$txtRefTitle1 = 'txtRefTitle1AchievemtList'.$i;$txtRefName1 = 'txtRefName1AchievemtList'.$i;$txtRefOrganization1 = 'txtRefOrganization1AchievemtList'.$i;
$txtRefDesignation1 = 'txtRefDesignation1AchievemtList'.$i;$txtRefEmail1 = 'txtRefEmail1AchievemtList'.$i;
$txtRefontactNo1 ='txtRefontactNo1AchievemtList'.$i;
$txtRefTitle2 ='txtRefTitle2AchievemtList'.$i;
$txtRefName2 = 'txtRefName2AchievemtList'.$i;
$txtRefOrganization2 = 'txtRefOrganization2AchievemtList'.$i;
$txtRefDesignation2 ='txtRefDesignation2AchievemtList'.$i;
$txtRefEmail2 = 'txtRefEmail2AchievemtList'.$i;
$txtRefontactNo2 = 'txtRefontactNo2AchievemtList'.$i;
	
	if(isset($_SESSION['formValues'][$txtAchiev]) || $_SESSION['formValues'][$txtAchiev] != '' )
	{
$message .='
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#f2f2f1" width="284"> Achievements For :</td>
    <td width="307" height="25" bgcolor="#f2f2f1">'.$_SESSION['formValues'][$achive].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> 1 Paragraph Description of Achievement</td>
    <td width="307" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtAchiev1].' </td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9">Effectiveness Goals Achieved</td>
    <td width="307" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtEffectiveness].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Innovation & Creativity</td>
    <td width="307" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtInnovation].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Impact</td>
    <td width="307" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtImpact].'</td>
  </tr>
  <tr>
    <td height="25" colspan="2" valign="top" bgcolor="#fafaf9"> Leadership</td>
    <td width="307" height="25" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtAchievLeadership].'</td>
  </tr>
  <tr>
    <td height="22" colspan="3" bgcolor="#f2f2f1" ><b>Reference 1</b></td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9"> Title: </td>
    <td width="307" height="22" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefTitle1].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Name: </td>
    <td width="307" height="22" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefName1].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Organization:</td>
    <td width="307" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefOrganization1].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Designation/Position:</td>
    <td width="307" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefDesignation1].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">E-mail:</td>
    <td width="307" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefEmail1].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Contact Numbers</td>
    <td width="307" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefontactNo1].'</td>
  </tr>
  <tr>
    <td height="22" colspan="3" bgcolor="#f2f2f1" ><b>Reference 2</b></td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9"> Title: </td>
    <td width="307" height="22" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefTitle2].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Name: </td>
    <td width="307" height="22" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefName2].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Organization:</td>
    <td width="307" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefOrganization2].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Designation/Position:</td>
    <td width="307" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefDesignation2].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">E-mail:</td>
    <td width="307" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefEmail2].'</td>
  </tr>
  <tr>
    <td height="22" colspan="2" bgcolor="#fafaf9">Contact Numbers</td>
    <td width="307" height="22" valign="top" bgcolor="#fafaf9">'.$_SESSION['formValues'][$txtRefontactNo2].'</td>
  </tr>
';
	}
	}
				  	
				$message .='
              </table>';
$mail->Body = $message;
	if(!$mail->Send())
	{
		header("");
		
	}
	else
	{
		header("Location:thanks.php");
	}}
?>


