<?php session_start();
if(isset($_REQUEST['sus']))
{}
else if(!isset($_REQUEST['er']))
unset($_SESSION['form_val']);

 ?>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/nomination.js"></script>
<link href="css/captch.css" rel="stylesheet" type="text/css">
<link href="css/form.css" rel="stylesheet" type="text/css" />

<title>:: OER - Nomination Form ::</title>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-17987880-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();


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

<body topmargin="0" leftmargin="0" rightmargin="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0" height="1600">
  <tr>
    <td width="100%" height="21">
<? include("inc/top1.php"); ?></td>
  </tr>
  <tr>
    <td width="100%" height="15">
<? include("inc/menu_aboutus.htm");
?></td>
  </tr>
  <tr>
    <td width="100%" height="21">
<?
                    include("inc/home_inc1.htm");
?></td>
  </tr>
  <tr>
    <td width="100%" height="15" valign="middle">
      <font face="Verdana" size="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="1521">
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
          <td width="77%" height="181" valign="top">
            <div align="center">
              <table border="0" cellpadding="0" style="border-collapse: collapse" width="90%" id="table4">
                <tr>
                  <td><font color="#C0C0C0"><font face="Times New Roman" size="2"><b><big><big>::</big></big></b>
        </font><font face="Verdana" size="2"><big><big>Nomination Form</big></big></font></font></td>
                </tr>
                <tr>
                  <td>
              <?php if(isset($_REQUEST['sus'])){
				echo $_SESSION['form_val']['sus'];
				}
				?>
        <p align="left"><font color="#000000" face="Verdana" size="1">
        
         <form action="nomination_submit.php" class="formStyle" method="post" onSubmit="return validate()" name="nominationForm">
<div id="headding">Section A</div>
<p style="margin:10px; font-weight:bold;">Personal Details of Nominee</p>
<table width="548px" cellpadding="0" border="0" style="border-collapse:collapse;" >
<tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
										Your Name</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="text" size="30" tabindex="1" name="name" value="<?php echo $_SESSION['form_val']['name']; ?>"></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
									   SurName</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="text" value="<?php echo $_SESSION['form_val']['surname']; ?>" size="30" tabindex="2" name="surname"></p></td>
									</tr>
                                    </table>
                                    <p style="margin:10px; font-weight:bold;">
                                    Contact Deatails</p>
                                    <table width="548px" cellpadding="0" border="0" style="border-collapse:collapse;">
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
										Mobile</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="text" value="<?php echo $_SESSION['form_val']['mobile']; ?>" size="30" tabindex="3" name="mobile"></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
										Land Line</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="text" value="<?php echo $_SESSION['form_val']['landLine']; ?>" size="30" tabindex="4" name="landLine"></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
										E-mail</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="text" value="<?php echo $_SESSION['form_val']['mail']; ?>" size="30" tabindex="5" name="mail"></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1" style="font-weight:bold">
										Nominated By</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="text" value="<?php echo $_SESSION['form_val']['nominated']; ?>" size="30" tabindex="6" name="nominated"></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
										mobile</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="text" value="<?php echo $_SESSION['form_val']['nomMob']; ?>" size="30" tabindex="7" name="nomMob"></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
										E-mail</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="text" value="<?php echo $_SESSION['form_val']['nomMail']; ?>" size="30" tabindex="8" name="nomMail"></p></td>
									</tr>
</table>
<br />
<div id="headding">Section B</div>
<p style="margin:10px; font-weight:bold;font-size: 8pt">Achievement Details For </p>
<table width="548px" cellpadding="0" border="0" style="border-collapse:collapse;" >
<tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
										Description of Achievement </font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<textarea name="descrOfachv" class="txtarea" tabindex="9"><?php echo $_SESSION['form_val']['descrOfachv']; ?></textarea></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
									   Impact - How did it affect your Colleagues/ Community</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<textarea name="affect" class="txtarea" tabindex="10"><?php echo $_SESSION['form_val']['affect']; ?></textarea></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<font face="Verdana" color="#4D555B" size="1">
									   Has the achievement won accolades or awards/ been recognized internationally/ others</font></p></td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<textarea name="awards" class="txtarea" tabindex="11"><?php echo $_SESSION['form_val']['awards']; ?></textarea></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										<span style="">&nbsp;
										</span>
										</td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</td>
										<td bgcolor="#FFFFFF" width="289">
                                        <?php echo $_SESSION['form_val']['error']; ?>
										<div id="captcha-wrap">
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
	</div></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">
										</td>
										<td width="44" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">&nbsp;</p></td>
										<td width="289" bgcolor="#FFFFFF">
										<p style="margin: 10px 20px">
										<input type="submit" name="submit" value="Submit" tabindex="12" />&nbsp;<input type="reset" name="reset" value="Reset" tabindex="13" /></p></td>
									</tr>
                                    <tr>
										<td width="11">&nbsp;</td>
										<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
									</tr>
									<tr>
										<td width="11">&nbsp;</td>
										<td width="204" bgcolor="#FFFFFF">&nbsp;</td>
										<td width="44" bgcolor="#FFFFFF">&nbsp;</td>
										<td bgcolor="#FFFFFF" width="289">&nbsp;</td>
									</tr>
                                    </table>
</form>
        
        
        </font></p>
                  </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;
                  </td>
                </tr>
              </table>
              </center>
            </div>
          </td>
          <td width="25%" height="198" valign="top">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table3">
              <tr>
                <td>&nbsp;
                </td>
              </tr>
              <tr>
                <td>         <? include("inc/current_issue_menu.php");
?> </td>
              </tr>
            </table>
            </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="2">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">

                       </td>
  </tr>
  <tr>
    <td width="100%">

                    
 <? include("inc/bottom.htm");
?>                  </td>
  </tr>
</table>

    </td>
  </tr>
</table>

</body>

</html>