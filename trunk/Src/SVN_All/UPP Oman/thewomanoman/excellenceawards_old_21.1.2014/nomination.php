<?php 
session_start();
?>
<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Al Mara</title>
<script type="text/javascript">
var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

function checkCheckBox(form)
{
var f1=document.formname;
if (f1.txtName.value=="")
	{	
		alert("Please Fill Your Name");
		f1.txtName.focus();
		return false;
	}
if (f1.txtSurName.value=="")
	{	
		alert("Please Fill Your SurName");
		f1.txtSurName.focus();
		return false;
	}
if (f1.txtMob.value=="")
	{	
		alert("Please Enter GSM ");
		f1.txtMob.focus();
		return false;
	}
	if (f1.txtMob.value.length < 8)
	{	
		alert("Please Enter a valid  number");
		f1.txtMob.focus();
		return false;
	}
if (f1.txtEmail.value=="")
	{	
		alert("Please Enter Email");
		f1.txtEmail.focus();
		return false;
	}
	if(reg.test(f1.txtEmail.value) == false) 
	{
      alert('Invalid Email Address');
	  f1.txtEmail.focus();
      return false;
	}
if(f1.txteducatn.value == "") 
	{
      alert('Please Fill Highest Level of Education Achieved');
	  f1.txteducatn.focus();
      return false;
	}
if(f1.txtUniversity.value == "") 
	{
      alert('Please Fill University/Institution');
	  f1.txtUniversity.focus();
      return false;
	}
if(f1.txtIndustry1.value == "") 
	{
      alert('Please Fill Industry/Field');
	  f1.txtIndustry1.focus();
      return false;
	}
if(f1.txtCompany.value == "") 
	{
      alert('Please Fill Company');
	  f1.txtCompany.focus();
      return false;
	}
if(f1.txtDep.value == "") 
	{
      alert('Please Fill Department');
	  f1.txtDep.focus();
      return false;
	}
if(f1.txtDesign.value == "") 
	{
      alert('Please Fill Designation');
	  f1.txtDesign.focus();
      return false;
	}
if(f1.txtIndustry.value == "") 
	{
      alert('Please Fill Industry/Field');
	  f1.txtIndustry.focus();
      return false;
	}
if(f1.AchievemtList1.value == "") 
	{
      alert('Please Fill List of Achievements in Career');
	  f1.AchievemtList1.focus();
      return false;
	}
if(f1.txtTitle.value == "") 
	{
      alert('Please Fill Title');
	  f1.txtTitle.focus();
      return false;
	}
//if(f1.txtRefName1AchievemtList1.value == "") 
//	{
//      alert('Please Fill Name');
//	  f1.txtRefName1AchievemtList1.focus();
//      return false;
//	}
//if(f1.txtRefOrganization1AchievemtList1.value == "") 
//	{
 //     alert('Please Fill Organization');
//	  f1.txtRefOrganization1AchievemtList1.focus();
 //     return false;
//	}
if(f1.txtDesignation.value == "") 
	{
      alert('Please Fill Designation/Position');
	  f1.txtDesignation.focus();
      return false;
	}
if(f1.txtEmail1.value == "") 
	{
      alert('Please Fill Email');
	  f1.txtEmail1.focus();
      return false;
	}
if(f1.txtNumbers.value == "") 
	{
      alert('Please Fill Contact No');
	  f1.txtNumbers.focus();
      return false;
	}
if(f1.secCode.value == "") 
	{
      alert('Please Fill Security code');
	  f1.secCode.focus();
      return false;
	}
}
</script>
<script type="text/javascript" src="js/jquery.js"></script>
<?php include("js/form_js.php"); 
?>
<link href="css/faary.css" rel="stylesheet">
<style type="text/css">
.head4 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10pt;
	font-weight: bold
}
.style1 {
	background-color: #9A278F;
	background-image: url('../images/almara_left_bg.jpg');
}
.style2 {
	text-align: center;
}
.style3 {
	color: #EEBFE9;
}
.style4 {
	background-color: #F9E3F7;
}
.style8 {
	color: #FFFFFF;
}
.style9 {
	text-decoration: none;
}
.style10 {
	color: #EB8F3A;
}
.style11 {
	text-decoration: none;
	color: #EB8F3A;
}
.tblestyle {
	font-size:11px;
	font-family:Verdana, Geneva, sans-serif;
	color:#000;
	background-color: #fff;
}
.mandetory {
	color:#FF0000;
}
</style>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-17987880-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>

<body bgcolor="#EEBFE9">
<?php
for($i = 1; $i<=10 ;$i++)
{
	$txtAchiev = 'hiddenVal_AchievemtList'.$i;
	$achive = 'AchievemtList'.$i;
	
	if(isset($_SESSION['formValues'][$txtAchiev]) || $_SESSION['formValues'][$txtAchiev] != '' )
 	echo '<script type="text/javascript">
	enableAchive("'.$achive.'")
	</script>';
}
?>
<div align="center">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="1001">
<tr>
  <td valign="top" bgcolor="#580652">&nbsp;</td>
</tr>
<tr>
  <td valign="top" bgcolor="#580652" height="25"><table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="25">
    <tr>
      <td width="70" height="25">&nbsp;</td>
      <td width="147" height="25"><? //include('../inc_date.htm');?>
</td>
<td width="248" height="25"><p style="margin-bottom: 5px"><font face="Verdana" size="2" color="#FFFFFF">TO READ THE 
    COMPLETE MAGAZINE</font></td>
<td width="123" height="25"><p style="margin-bottom: 5px"><font face="Verdana" size="2" color="#FFFFFF"><a href="../emagazine.php"><img border="0" src="../images/click_here_button.jpg" width="111" height="20"></a></font></a></td>
<td height="25"><p align="right" style="margin-bottom: 5px"><font face="Verdana" size="2" color="#FFFFFF"><a href="../advertise.php" style="text-decoration: none"><font color="#FFFFFF">Advertise</font></a>|<a href="../subscribe.php" class="style9"><font color="#FFFFFF">Subscribe</font></a>|<a href="../index.php" style="text-decoration: none"><font color="#FFFFFF">Home</font></a></font></td>
<td width="16" height="25">&nbsp;</td>
</tr>
</table>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="25">
  <tr>
    <td height="25"><p align="center" style="margin-bottom: 5px">
        <map name="FPMap1">
          <area href="../excellenceawards/nomination.php" shape="rect" coords="332,47,601,88">
        </map>
        <img border="0" src="../images/winners-banner.jpg" width="957" height="130" usemap="#FPMap1"></td>
  </tr>
</table>
</td>
</tr>
<tr>
  <td valign="top" bgcolor="#580652"><table style="width: 100%" cellspacing="0" cellpadding="0">
      <tr>
        <td style="width: 221px" valign="top"><img alt="" src="../images/almara_left.jpg"></td>
        <td valign="top"><table style="width: 100%" cellspacing="0" cellpadding="0">
            <tr>
              <td class="style2"><font face="Verdana" size="2"><span class="style3"><br>
                Awards Nomination</span></font></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="100%" height="91"><table border="0" width="100%" cellspacing="0" cellpadding="0" height="114">
                        <tr>
                          <td width="100%" align="right" height="38"><div align="center">
                              <center>
                                <table border="0" cellpadding="0" bgcolor="#E4E4E4" width="90%" style="border-collapse: collapse" bordercolor="#111111" cellspacing="0" height="664">
                                  <tr>
                                    <td width="523" bgcolor="#fff"><form name="formname" class="iform" method="post" action="nomination_ mail.php"  onsubmit="return checkCheckBox(this)" enctype="multipart/form-data">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tblestyle" style="margin: 0px 0 10px 0;">
                                          <tr>
                                            <td height="20" bgcolor="#F9E3F7"><strong>SECTION A</strong></td>
                                          </tr>
                                        </table>
                                        <table width="500" border="0" align="center" cellpadding="4"  class="tblestyle">
                                          <tr>
                                            <td colspan="2" style="padding: 15px 0 5px 0;"><strong>Personal Details</strong></td>
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="2">Name:</td>
                                            <td width="191" height="22"><input name="txtName"  value="<?php echo $_SESSION['formValues']['txtName'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="2">Surname:</td>
                                            <td width="191" height="22"><input type="text" name="txtSurName"  value="<?php echo $_SESSION['formValues']['txtSurName'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="2">Birthdate:</td>
                                            <td width="191" height="22" valign="top"><input type="text" name="txtBirDate"  value="<?php echo $_SESSION['formValues']['txtBirDate'];?>"></td>
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="2" style="padding: 15px 0 5px 0;"><b>Contact Details</b></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Mobile:</td>
                                            <td width="191" height="25"><input name="txtMob" type="text"  value="<?php echo $_SESSION['formValues']['txtMob'];?>" maxlength="13">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Landline:</td>
                                            <td width="191" height="25"><input name="txtland" type="text"  value="<?php echo $_SESSION['formValues']['txtland'];?>" maxlength="13"></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">E-mail:</td>
                                            <td width="191" height="25"><input type="text" name="txtEmail"  value="<?php echo $_SESSION['formValues']['txtEmail'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                        </table>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tblestyle" style="margin: 10px 0;">
                                          <tr>
                                            <td height="20" bgcolor="#F9E3F7"><strong>SECTION B - NOMINATION CATEGORY</strong></td>
                                          </tr>
                                        </table>
                                        <table width="500" border="0" align="center" cellpadding="4"  class="tblestyle">
                                          <tr>
                                            <tr>
                                            <td height="22" colspan="2" style="padding: 15px 0 5px 0;"><b>Credentials</b></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Highest Level of Education Achieved:</td>
                                            <td width="191" height="25"><input type="text" name="txteducatn"  value="<?php echo $_SESSION['formValues']['txteducatn'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">University/ Institution:</td>
                                            <td width="191" height="25"><input type="text" name="txtUniversity"  value="<?php echo $_SESSION['formValues']['txtUniversity'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Industry/ Field:</td>
                                            <td width="191" height="25"><input type="text" name="txtIndustry1"  value="<?php echo $_SESSION['formValues']['txtIndustry1'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="2" style="padding: 15px 0 5px 0;"><b>Employment/ Work</b></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Company:</td>
                                            <td width="191" height="25"><input type="text" name="txtCompany"  value="<?php echo $_SESSION['formValues']['txtCompany'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Department:</td>
                                            <td width="191" height="25"><input type="text" name="txtDep"  value="<?php echo $_SESSION['formValues']['txtDep'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Designation:</td>
                                            <td width="191" height="25"><input type="text" name="txtDesign"  value="<?php echo $_SESSION['formValues']['txtDesign'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Industry/ Field:</td>
                                            <td width="191" height="25"><input type="text" name="txtIndustry"  value="<?php echo $_SESSION['formValues']['txtIndustry'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="2" style="padding: 15px 0 5px 0;"><b>Career
                                              Accomplishments</b></td>
                                          </tr>
                                          <tr>
                                            <td  >List of Achievements in Career:</td>
                                            
                                            <td colspan="2"><input type="text" name="AchievemtList1" id="AchievemtList1" onBlur="return enableAchive('AchievemtList1')" value="<?php echo $_SESSION['formValues']['AchievemtList1'];?>">
                                              <span class="mandetory">*</span></td>
                                          <tr>
                                            <td >&nbsp;</td>
                                            
                                            <td colspan="2"><input type="text" name="AchievemtList2" id="AchievemtList2" onBlur="return enableAchive('AchievemtList2')" value="<?php echo $_SESSION['formValues']['AchievemtList2'];?>"></td>
                                          </tr>
                                          <tr>
                                            <td >&nbsp;</td>
                                            
                                            <td colspan="2"><input type="text" name="AchievemtList3" id="AchievemtList3" onBlur="return enableAchive('AchievemtList3')" value="<?php echo $_SESSION['formValues']['AchievemtList3'];?>"></td>
                                          </tr>
                                          <tr>
                                            <td >&nbsp;</td>
                                           
                                            <td colspan="2"><input type="text" name="AchievemtList4" id="AchievemtList4" onBlur="return enableAchive('AchievemtList4')" value="<?php echo $_SESSION['formValues']['AchievemtList4'];?>"></td>
                                          </tr>
                                          <tr>
                                            <td >&nbsp;</td>
                                            
                                            <td colspan="2"><input type="text" name="AchievemtList5" id="AchievemtList5" onBlur="return enableAchive('AchievemtList5')" value="<?php echo $_SESSION['formValues']['AchievemtList5'];?>"></td>
                                          </tr>
                                          
                                          
                                         
                                        </table>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tblestyle" style="margin: 10px 0;">
                                          <tr>
                                            <td height="20" bgcolor="#F9E3F7"><strong>SECTION C - REFERENCES</strong><br>
                                             </td>
                                          </tr>
                                        </table>
                                        <table width="500" border="0" align="center" cellpadding="4"  class="tblestyle">
                                          <tr>
                                            <tr>
                                            <td colspan="2" style="padding: 15px 0 5px 0;"><strong>References</strong></td>
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="3">At least two references must be provided</td>
                                           
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="2">Title:</td>
                                            <td width="275" height="22" align="right" style="padding-right:15px;"><input type="text" name="txtTitle"  value="<?php echo $_SESSION['formValues']['txtTitle'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
                                            <td height="22" colspan="2">Name:</td>
                                            <td width="275" height="22" valign="top" align="right" style="padding-right:25px;"><input type="text" name="txtName1"  value="<?php echo $_SESSION['formValues']['txtName1'];?>"></td>
                                          </tr>
                                          
                                          <tr>
                                            <td height="25" colspan="2">Organization:</td>
                                            <td width="275" height="25" align="right" style="padding-right:25px;"><input name="txtOrganization" type="text"  value="<?php echo $_SESSION['formValues']['txtOrganization'];?>" maxlength="13"></td>
                                            
                                          </tr>
                                          <tr>
                                            <td height="25" colspan="2">Designation/Position:</td>
                                            <td width="275" height="25" align="right" style="padding-right:15px;"><input type="text" name="txtDesignation"  value="<?php echo $_SESSION['formValues']['txtDesignation'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                           <tr>
                                            <td height="25" colspan="2">E-mail:</td>
                                            <td width="275" height="25" align="right" style="padding-right:15px;"><input type="text" name="txtEmail1"  value="<?php echo $_SESSION['formValues']['txtEmail1'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                           <tr>
                                            <td height="25" colspan="2">Contact Numbers</td>
                                            <td width="275" height="25" align="right" style="padding-right:15px;"><input type="text" name="txtNumbers"  value="<?php echo $_SESSION['formValues']['txtNumbers'];?>">
                                              <span class="mandetory">*</span></td>
                                          </tr>
                                          <tr>
												<td width="140"  height="22" valign="top" colspan="2">
												<font face="Verdana" style="font-size: 8pt">
												Attachement </font></td>
												<td  height="22">
												<font style="font-size: 8pt" face="Verdana">
												<input type="file" name="attache"  class="iform" style="float:right;margin-right:20px;">
												<div style="clear:both;"></div>
												<p style="color:#FF0000"> You can upload up to 2MB through this link. If your supporting documents size is bigger please email it to Fidha Saleem<a href="mailto:fidha@umsoman.com" >fidha@umsoman.com</a> or contact him on 99653581</p></font></td>
											</tr>
                                          <tr>
                                            <td colspan="2"><p style="margin-right: 9px; margin-bottom: 8px">Security Code</p></td>
                                            <td width="255"><a name="cde"></a>
                                              <p style="margin-left: 5; margin-top: 5;font-size :8pt;">
                                                <input type="text" name="secCode" maxlength="6" style="width:50px">
                                                <b>&laquo;</b>&nbsp;<img src="seccode.php" width="71" height="21" align="absmiddle" style="margin-top: -4px;"><font color="#FF0033" size="-2">
                                                <?php
											
		                                     if ($_REQUEST["code"]==1)
											  echo '* Please Enter correct code';																					                                              ?>
                                              </p></td>
                                          </tr>
                                          <tr>
                                            <td colspan="3" align="center"><input class="ibutton" type="submit" value="Submit" name="B1" style="margin-top: 15px; width: 80px;">
                                              <input class="ibutton" type="reset" value="Reset" name="B2" style="margin-top: 15px; width: 80px;"></td>
                                          </tr>
                                        </table>
                                      </form></td>
                                  </tr>
                                </table>
                              </center>
                            </div></td>
                        </tr>
                      </table></td>
                  </tr>
                </table></td>
            </tr>
          </table></td>
      </tr>
    </table></td>
</tr>
<tr>
  <td valign="top" bgcolor="#580652">&nbsp;</td>
</tr>
<tr>
  <td valign="top" bgcolor="#580652"><p align="center"><b><font face="Verdana" size="2" color="#EB8F3A"><a href="../subscribe-newsletter.php" class="style9"><span class="style10">Subscribe to The Woman Newsletter</span></a>&nbsp; 
      |&nbsp;<a href="../contactus.php"><span class="style11">Contact Us</span></a></font></b></td>
</tr>
<tr>
  <td valign="top" bgcolor="#580652">&nbsp;</td>
</tr>
</table>
</div>
</body>
</html>
<?php
unset($_SESSION['formValues']);
?>