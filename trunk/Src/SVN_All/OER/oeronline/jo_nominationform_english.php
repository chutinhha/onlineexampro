<?php session_start();
if(isset($_REQUEST['sus']))
{}
else if(!isset($_REQUEST['er']))
unset($_SESSION['form_val']);

 ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Jawharat Oman Nomination Form</title>
<link rel="stylesheet" href="css/faary.css" type="text/css" />
<link href="css/captch.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script src="js/nomination.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() { 
 $('img#captcha-refresh').click(function() {  
		change_captcha();
 });
 function change_captcha()
 {
	document.getElementById('captcha').src="get_captcha.php?rnd=" + Math.random();
 }
});
</script>
</head>

<body>
 <?php if(isset($_REQUEST['sus'])){
				echo $_SESSION['form_val']['sus'];
				}
				?>      
            	<form method="post" action="nomination_submit.php" name="nomination" class="iform">
                <div id="headding">&nbsp;Section A </div>
<p style="margin:10px; font-weight:bold;">Personal Details of Nominee</p>
<ul>
<li><label for="YourName">Name:</label><span style="color:#F00;">*</span>&nbsp;<input type="text" size="30" tabindex="1"class="itext" name="name" value="<?php echo $_SESSION['form_val']['name']; ?>"></li>
<li>
  <label for="Surname">Surname:</label><span style="color:#F00;">*</span>&nbsp;<input class="itext" type="text" name="surname" tabindex="2"value="<?php echo $_SESSION['form_val']['surname']; ?>" /></li>
<p style="margin:10px; font-weight:bold;">
                                    Contact Deatails</p>
<li><label for="YourMolile">Mobile:</label><span style="color:#F00;">*</span>&nbsp;<input class="itext" type="text" name="mobile" id="YourMobile" value="<?php echo $_SESSION['form_val']['mobile']; ?>" tabindex="3" /></li>
<li><label for="YourLandLine">Landline:</label><span style="color:#FFF;">*</span>&nbsp;<input class="itext" type="text" name="landLine" id="YourLandLine" value="<?php echo $_SESSION['form_val']['landLine']; ?>" tabindex="4" /></li>
<li><label for="YourMail">E-mail:</label><span style="color:#F00;">*</span>&nbsp;<input class="itext" type="text" name="mail" id="YourMail" value="<?php echo $_SESSION['form_val']['mail']; ?>" tabindex="5" /></li>
<li><label for="NominatedBy"><em><strong>Nominated By:</strong></em></label><span style="color:#F00;">*</span>&nbsp;<input class="itext" type="text" name="nominated" id="NominatedBy" value="<?php echo $_SESSION['form_val']['nominated']; ?>" tabindex="6" /></li>
<li><label for="NomMob">Mobile:</label><span style="color:#F00;">*</span>&nbsp;<input class="itext" type="text" name="nomMob" id="NomMob" value="<?php echo $_SESSION['form_val']['nomMob']; ?>" tabindex="7" /></li>

<li><label for="NomEmail">E-mail:</label><span style="color:#F00;">*</span>&nbsp;<input class="itext" type="text" name="nomMail" id="NomEmail" value="<?php echo $_SESSION['form_val']['nomMail']; ?>" tabindex="8" /></li>
<div id="headding">&nbsp;Section B </div>
<p style="margin:10px; font-weight:bold;">Achievement Details For </p>
<li><label for="DescrOfAchive">Description of Achievement:</label><span style="color:#FFF;">*</span>&nbsp;<textarea class="itextarea" name="descrOfachv" tabindex="9" id="DescrOfAchive"><?php echo $_SESSION['form_val']['descrOfachv']; ?></textarea></li>
<li><label for="Affect">Impact - How did it affect your Colleagues/ Community:</label><span style="color:#FFF;">*</span>&nbsp;<textarea class="itextarea" tabindex="10" name="affect" id="Affect"><?php echo $_SESSION['form_val']['affect']; ?></textarea></li>
<li><label for="YourAwards">Has the achievement won accolades or awards/ been recognized internationally/ others:</label><span style="color:#FFF;">*</span>&nbsp;<textarea class="itextarea" tabindex="11" name="awards" id="YourAwards"><?php echo $_SESSION['form_val']['awards']; ?></textarea></li>
<li><label>&nbsp;</label>&nbsp;<?php echo $_SESSION['form_val']['error']; ?></li>
									<div id="captcha-wrap" style=" margin-left:160px !important;">
		<div class="captcha-box">
			<img src="get_captcha.php" alt="" id="captcha" />
		</div>
		<div class="text-box">
			<label>Type the two words:</label>
			<input name="captchacode" type="text" id="captcha-code">
		</div>
		<div class="captcha-action">
			<img src="images/refresh.jpg"  alt="" id="captcha-refresh" />
		</div>
	</div>
    <br />
    <br />
    <br />
    <br />
    <br />
<li><label>&nbsp;</label><span style="color:#FFF;">*</span>&nbsp;<input type="submit" class="ibutton" onclick="return validate(document.nomination);" name="submit" value="Submit" /></li>
</ul></form>
            
</body>
</html>