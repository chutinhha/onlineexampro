<?php 
session_start();
?>
<html>

<head dir="rtl">
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
if(f1.txtRefTitle1AchievemtList1.value == "") 
	{
      alert('Please Fill Title');
	  f1.txtRefTitle1AchievemtList1.focus();
      return false;
	}
if(f1.txtRefName1AchievemtList1.value == "") 
	{
      alert('Please Fill Name');
	  f1.txtRefName1AchievemtList1.focus();
      return false;
	}
if(f1.txtRefOrganization1AchievemtList1.value == "") 
	{
      alert('Please Fill Organization');
	  f1.txtRefOrganization1AchievemtList1.focus();
      return false;
	}
if(f1.txtRefDesignation1AchievemtList1.value == "") 
	{
      alert('Please Fill Designation/Position');
	  f1.txtRefDesignation1AchievemtList1.focus();
      return false;
	}
if(f1.txtRefEmail1AchievemtList1.value == "") 
	{
      alert('Please Fill Email');
	  f1.txtRefEmail1AchievemtList1.focus();
      return false;
	}
if(f1.txtRefontactNo1AchievemtList1.value == "") 
	{
      alert('Please Fill Contact No');
	  f1.txtRefontactNo1AchievemtList1.focus();
      return false;
	}
}
</script>
<script type="text/javascript" src="../js/jquery.js"></script>
<?php include("form_js.php"); 
?>
<style type="text/css">
.style1 {
	text-align: center;
}
.style3 {
	text-decoration: none;
}
.style5 {
	color: #FFFFFF;
}
.style4 {
	color: #EEBFE9;
	font-size: x-small;
}
.style6 {
	margin-left: 25px;
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
.style8 {
	color: #FFFFFF;
}
.tblestyle{
	font-size:11px;
	font-family:Verdana, Geneva, sans-serif;
	color:#000;
	background-color: #fff;
}
table input
{
	width: 180px;
}
textarea
{
	width: 180px;
}
.mandetory {
	color:#FF0000;
}
</style>
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
			<td valign="top" bgcolor="#580652" height="25">
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="40">
				<tr>
					<td width="70">&nbsp;</td>
					<td width="147">
					<p style="margin-bottom: 5px" align="center">

<font face="Verdana" size="2" color="#FFFFFF">September - 2011</font></td>
					<td width="248">
					<p style="margin-bottom: 5px">
					<font face="Verdana" size="2" color="#FFFFFF">TO READ THE 
					COMPLETE MAGAZINE </font></td>
					<td width="123">
					<p style="margin-bottom: 5px">
					<a href="../emagazine.php">
					<img border="0" src="../../images/click_here_button.jpg" width="111" height="20"></a></td>
					<td>
					<p align="right" style="margin-bottom: 5px">
					<font face="Verdana" size="2" color="#FFFFFF">
					<a style="text-decoration: none" href="../advertise.php">
					<font color="#FFFFFF">Advertise in 
					Magazine</font></a> | <span class="style8"> 
					<a class="style9" href="../subscribe.php">
					<font color="#FFFFFF">Subscribe Al Mara</font></a> |
					<a style="text-decoration: none" href="../index.php">
					<font color="#FFFFFF">Home</font></a></span></font><font color="#FFFFFF">
					</font> </td>
					<td width="16">&nbsp;</td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td valign="top" bgcolor="#580652">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top" bgcolor="#580652">
			<table style="width: 100%" cellspacing="0" cellpadding="0">
				<tr>
					<td style="width: 221px" valign="top" bgcolor="#9A278F">
					<img alt="" src="../../images/almara_left.jpg"></td>
					<td valign="top" class="style1">
					<div align="center">
						<table border="6" cellpadding="0" style="border-collapse: collapse" width="750" bordercolor="#FAE7F8">
							<tr>
								<td>
								<table border="0" cellpadding="0"  class="tblestyle" width=" 100%">
        <tr>
          <td width="100%"  valign="top" style="vertical-align: top; direction:rtl;">
          <?php
			$suc=$_REQUEST[succ];
			if($suc==1)
			{
				echo "<p style='color:#FF0000; font-size:13px' >Shows error while sending mail.</p>";
			}
			else if($suc==2){
				echo "<p style='color:#FF0000; font-size:13px; text-align:center' >أرسلت بنجاح</p>";
			}
			
			?>
          <form name="formname" method="post" action="http://www.almaraonline.com/excellenceawards/nomination_ mail.php"  onsubmit="return checkCheckBox(this)" >
              <table width="60%" border="0" align="center" cellpadding="4"  class="tblestyle">
                <tr>
                  <td colspan="3" align="center"><b>القسم – أ</b><br><hr width="15%" size="1" color="#EFEFEF"></td>
                </tr>
                <tr>
                  <td colspan="3" > <strong>بيانات شخصية</strong></td>
                </tr>
                <tr>
                  <td height="22" colspan="2">الاسم: </td>
                  <td width="191" height="22">
                    <input name="txtName"  value="<?php echo $_SESSION['formValues']['txtName'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
                <tr>
                  <td height="22" colspan="2">اسم العائلة: </td>
                  <td width="191" height="22">
                    <input type="text" name="txtSurName"  value="<?php echo $_SESSION['formValues']['txtSurName'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
                <tr>
                  <td height="22" colspan="2">تاريخ الولادة:</td>
                  <td width="191" height="22" valign="top">
                    <input type="text" name="txtBirDate"  value="<?php echo $_SESSION['formValues']['txtBirDate'];?>"></td>
                </tr>
               
                
                <tr>
                  <td height="25" colspan="2" valign="top">	صفات القيادة:</td>
                  <td width="191" height="25">
                    <input type="text" name="txtLeadership"  value="<?php echo $_SESSION['formValues']['txtLeadership'];?>"></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top"> نواحي قوة الشخصية:</td>
                  <td width="191" height="25">
                    <input type="text" name="txtStrengths"  value="<?php echo $_SESSION['formValues']['txtStrengths'];?>"></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top"> الرؤية / الأهداف: </td>
                  <td width="191" height="25">
                    <input type="text" name="txtVision"  value="<?php echo $_SESSION['formValues']['txtVision'];?>"></td>
                </tr>
                
                <tr>
                  <td height="22" colspan="3" ><b>بيانات الإتصال</b></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">رقم الهاتف النقال:</td>
                  <td width="191" height="25">
                    <input name="txtMob" type="text"  value="<?php echo $_SESSION['formValues']['txtMob'];?>" maxlength="13">
                    <span class="mandetory">*</span></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top"> رقم الهاتف الثابت:</td>
                  <td width="191" height="25">
                    <input name="txtland" type="text"  value="<?php echo $_SESSION['formValues']['txtland'];?>" maxlength="13"></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">البريد الإلكتروني:</td>
                  <td width="191" height="25">
                    <input type="text" name="txtEmail"  value="<?php echo $_SESSION['formValues']['txtEmail'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
                 <tr>
                 <td colspan="3"><hr width="90%" size="1" color="#EFEFEF"></td>
               </tr>
                <tr>
                  <td colspan="3" align="center"><br/><br/><b>القسم – ب </b><br><hr width="15%" size="1" color="#EFEFEF"><br/>
                    <em> (يمكن التقدم للترشح للجوائز في أكثر من فئة . يرجى تعبئة نموذج ترشيح جديد لكل فئة من فئات الجوائز) </em></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">فئة الجائزة <br>
                     (اذكري اسم ا لفئة / الجائز)</td>
                  <td width="191" height="25">
                    <input type="text" name="txtAward"  value="<?php echo $_SESSION['formValues']['txtAward'];?>"></td>
                </tr>
                
                <tr>
                  <td height="22" colspan="3" ><b>المؤهلات</b></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">أعلى مستوى من التعليم:</td>
                  <td width="191" height="25">
                    <input type="text" name="txteducatn"  value="<?php echo $_SESSION['formValues']['txteducatn'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">الجامعة / المعهد:</td>
                  <td width="191" height="25">
                    <input type="text" name="txtUniversity"  value="<?php echo $_SESSION['formValues']['txtUniversity'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">الصناعة / المجال </td>
                  <td width="191" height="25">
                    <input type="text" name="txtIndustry1"  value="<?php echo $_SESSION['formValues']['txtIndustry1'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
               
                <tr>
                  <td height="22" colspan="3" ><b>الوظائف / العمل</b></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">الشركة/ مكان العمل:</td>
                  <td width="191" height="25">
                    <input type="text" name="txtCompany"  value="<?php echo $_SESSION['formValues']['txtCompany'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">الدائرة:</td>
                  <td width="191" height="25">
                    <input type="text" name="txtDep"  value="<?php echo $_SESSION['formValues']['txtDep'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">الوظيفة:</td>
                  <td width="191" height="25">
                    <input type="text" name="txtDesign"  value="<?php echo $_SESSION['formValues']['txtDesign'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
                <tr>
                  <td height="25" colspan="2" valign="top">الصناعة / المجال :</td>
                  <td width="191" height="25">
                    <input type="text" name="txtIndustry"  value="<?php echo $_SESSION['formValues']['txtIndustry'];?>">
                    <span class="mandetory">*</span></td>
                </tr>
               
                <tr>
                  <td height="22" colspan="3" ><b>الإنجازات المهنية</b></td>
                </tr>
                <tr>
                  <td width="200" >بيان الإنجازات في مجال الوظيفة :</td>
                  <td width="14" >1</td>
                   <td><input type="text" name="AchievemtList1" id="AchievemtList1" onBlur="return enableAchive('AchievemtList1')" value="<?php echo $_SESSION['formValues']['AchievemtList1'];?>">
                     <span class="mandetory">*</span></td>
                  <tr>
                  <td >&nbsp;</td>
                  <td >2</td>
                   <td><input type="text" name="AchievemtList2" id="AchievemtList2" onBlur="return enableAchive('AchievemtList2')" value="<?php echo $_SESSION['formValues']['AchievemtList2'];?>">
                   </td>
                </tr>
                    <tr>
                  <td >&nbsp;</td>
                  <td >3</td>
                   <td><input type="text" name="AchievemtList3" id="AchievemtList3" onBlur="return enableAchive('AchievemtList3')" value="<?php echo $_SESSION['formValues']['AchievemtList3'];?>">
                   </td>
                </tr><tr>
                  <td >&nbsp;</td>
                  <td >4</td>
                   <td><input type="text" name="AchievemtList4" id="AchievemtList4" onBlur="return enableAchive('AchievemtList4')" value="<?php echo $_SESSION['formValues']['AchievemtList4'];?>">
                   </td>
                </tr><tr>
                  <td >&nbsp;</td>
                  <td >5</td>
                   <td><input type="text" name="AchievemtList5" id="AchievemtList5" onBlur="return enableAchive('AchievemtList5')" value="<?php echo $_SESSION['formValues']['AchievemtList5'];?>">
                   </td>
                </tr>
                <tr>
                  <td >&nbsp;</td>
                  <td >6 </td>
                   <td><input type="text" name="AchievemtList6" id="AchievemtList6" onBlur="return enableAchive('AchievemtList6')" value="<?php echo $_SESSION['formValues']['AchievemtList6'];?>">
                   </td>
                </tr>
                <tr>
                  <td >&nbsp;</td>
                  <td >7</td>
                   <td><input type="text" name="AchievemtList7" id="AchievemtList7" onBlur="return enableAchive('AchievemtList7')" value="<?php echo $_SESSION['formValues']['AchievemtList7'];?>">
                   </td>
                </tr>
                <tr>
                  <td >&nbsp;</td>
                  <td >8</td>
                   <td><input type="text" name="AchievemtList8" id="AchievemtList8" onBlur="return enableAchive('AchievemtList8')" value="<?php echo $_SESSION['formValues']['AchievemtList8'];?>">
                   </td>
                </tr>
                <tr>
                  <td >&nbsp;</td>
                  <td >9</td>
                   <td><input type="text" name="AchievemtList9" id="AchievemtList9" onBlur="return enableAchive('AchievemtList9')" value="<?php echo $_SESSION['formValues']['AchievemtList9'];?>">
                   </td>
                </tr>
                <tr>
                  <td >&nbsp;</td>
                  <td >10</td>
                   <td><input type="text" name="AchievemtList10" id="AchievemtList10" onBlur="return enableAchive('AchievemtList10')" value="<?php echo $_SESSION['formValues']['AchievemtList10'];?>">
                   </td>
                </tr>
                <tr>
                  <td colspan="3" align="left"><em>يرجى تقديم مستندات داعمة للإنجازات ، مع وصف موجز وصور لكل إنجاز تم تحقيقه</em></td>
                </tr>
                <tr>
                 <td colspan="3"><hr width="90%" size="1" color="#EFEFEF"></td>
               </tr>
                <tr>
                  <td colspan="3" align="center"> <br><br><b>القسم – ج</b><br><hr width="15%" size="1" color="#EFEFEF"><br> <em>القسم-  ج هو ان تكرر جميع الإنجازات المدرجه في القسم -  ب</em></td>
                </tr>
                <tr>
                  <td height="22" colspan="3" ><b>تفاصيل الإنجاز</b></td>
                </tr>
                <tr>
                  <td colspan="3" valign="top" id="careerAchi">
				  	
				  </td>
                  </tr>
             <tr>
                              <td colspan="2"><p style="margin-right: 9px; margin-bottom: 8px">رمز الأمان</p></td>
                              <td><p style="margin-left: 5; margin-top: 5;font-size :8pt;">
                                <input type="text" name="secCode" maxlength="6" style="width:50px"> <b>&laquo;</b>
                                <img src="../seccode.php" width="71" height="21" align="absmiddle">
                                <font color="#FF0033" size="-2"> 
                                <?php
											
		                                     if ($_REQUEST["code"]==1)
											  echo '* Please Enter correct code';																					                                              ?></p>
                            </td>
                            </tr>
                            <tr>
                            <td colspan="2">&nbsp;</td>
                            <td><input type="submit" value="إرسال"  style="width:75px;" name="B1">
                              <input type="reset" value="إسترجاع" style="width:75px;"  name="B2"></td>
                </tr>
              </table>
            <input type="hidden" name="ar" value="ar"></form></td>
        </tr>
      </table>
								</td>
							</tr>
						</table>
					</div>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td valign="top" bgcolor="#580652">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top" bgcolor="#580652">
			<p align="center"><b><font face="Verdana" size="2" color="#EB8F3A">
			<span class="style10">
			<a class="style9" href="../../subscribe-newsletter.php">
			<font color="#EB8F3A">Subscribe Al Mara Newsletter</font></a></span>&nbsp; |&nbsp; 
			<span class="style11">
			<a href="../../contactus.php" style="text-decoration: none">
			<font color="#EB8F3A">Contact Us</font></a></span></font></b></td>
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