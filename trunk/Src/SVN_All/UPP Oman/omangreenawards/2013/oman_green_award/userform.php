<?php 
session_start();
if(($_SESSION['id'] != '2' ) || !isset($_SESSION['id']))
header("location:login.php");
?>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Oman Green Awards</title>
<style type="text/css">

.fontstyle
{
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:9pt;
}
.downtable td
{
font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:9pt;
	border-bottom:solid 1px #cccccc;
	height:30px;
}
</style>
<SCRIPT LANGUAGE="JAVASCRIPT">
	var count = 5;
	
  function addRow(id)
  {
    var tbody = document.getElementById(id).getElementsByTagName("TBODY")[0];
    var row = document.createElement("TR")
    var td1 = document.createElement("TD")
    var td2 = document.createElement("TD")
	
	td1.setAttribute("height","30");
    row.appendChild(td1);
	var attach = "<input type=\"file\" name=\"attachment"+count+"\">";
	td2.innerHTML = attach;
	row.appendChild(td2);
    tbody.appendChild(row);
	count = parseInt(count) + 1;
	
  }
if (document.images) {
image1 = new Image
image2 = new Image
image1.src="../images/button1.jpg"
image2.src="../images/button2.jpg"
}
</SCRIPT>
<script type="text/javascript" language="javascript">
var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
function form_submit()
{
var f1=document.formlogin;
if (f1.txtname.value=="")
	{	
		alert("Please Enter Name");
		f1.txtuname.focus();
		return false;
	}
	
	if (f1.txtemail.value=="")
	{	
		alert("Please Enter Email ID");
		f1.txtemail.focus();
		return false;
	}
	if(reg.test(f1.txtemail.value) == false) 
	{
      alert('Invalid Email Address');
	  f1.txtemail.focus();
      return false;
	}
	if (f1.txtgsm.value=="")
	{	
		alert("Please Enter GSM ");
		f1.txtgsm.focus();
		return false;
	}
	if (f1.txtgsm.value.length < 8)
	{	
		alert("Please enter a valid  number");
		f1.txtgsm.focus();
		return false;
	}
		}
		function numcheck()
{
var f1=document.formlogin;
	if(isNaN(f1.txtgsm.value))
	{
		f1.txtgsm.value ='';
		return false;
	}
	
}
		</script>
<SCRIPT LANGUAGE="JAVASCRIPT">
if (document.images) {
imagea1 = new Image
imagea2 = new Image
imagea1.src="../images/button1.jpg"
imagea2.src="../images/button2.jpg"
}
</SCRIPT>

<SCRIPT LANGUAGE="JAVASCRIPT">
if (document.images) {
imageb1 = new Image
imageb2 = new Image
imageb1.src="../images/button1.jpg"
imageb2.src="../images/button2.jpg"
}
</SCRIPT>

<SCRIPT LANGUAGE="JAVASCRIPT">
if (document.images) {
imagec1 = new Image
imagec2 = new Image
imagec1.src="../images/button1.jpg"
imagec2.src="../images/button2.jpg"
}
</SCRIPT>

<SCRIPT LANGUAGE="JAVASCRIPT">
if (document.images) {
imaged1 = new Image
imaged2 = new Image
imaged1.src="../images/button1.jpg"
imaged2.src="../images/button2.jpg"
}
</SCRIPT>

<SCRIPT LANGUAGE="JAVASCRIPT">
if (document.images) {
imagee1 = new Image
imagee2 = new Image
imagee1.src="../images/button1.jpg"
imagee2.src="../images/button2.jpg"
}
</SCRIPT>

<script type="text/javascript" src="oodomimagerollover.js">

/***********************************************
* DOM Image Rollover II- By Adam Smith (http://www.codevendor.com)
* Script featured on and available at Dynamic Drive (http://www.dynamicdrive.com)
* Keep this notice intact for usage please
***********************************************/

</script>
</head>

<body bgcolor="#164205" topmargin="5" leftmargin="0" rightmargin="0" bottommargin="5" >

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="965" id="AutoNumber1" bgcolor="#FFFFFF">
  <tr>
    <td width="100%" height="23">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber2" height="23">
      <tr>
        <td width="36" valign="top">
        <img border="0" src="../images/top_arrow.jpg" width="13" height="10"></td>
        <td width="240">
        <img border="0" src="../images/img1.jpg" width="240" height="23"></td>
        <td valign="top">
        <p align="right">
        <img border="0" src="../images/top_arrow1.jpg" width="14" height="15"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td height="509" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber13" height="855" bordercolor="#FF0000">
      <tr>
        <td width="36" height="855">&nbsp;</td>
        <td width="240" valign="top" height="855" bgcolor="#D2DBCF">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber14" height="1106">
          <tr>
            <td width="100%" height="509">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber5">
          <tr>
            <td width="100%">
            <map name="FPMap1">
            <area href="../index.html" shape="rect" coords="27, 33, 220, 227">
            </map>
            <img border="0" src="../images/logo.jpg" width="240" height="261" usemap="#FPMap1"></td>
          </tr>
          <tr>
            <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber6">
              <tr>
                <td width="24" valign="top">
                <img border="0" src="../images/img3.jpg" width="24" height="199"></td>
                <td valign="top">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="216" id="AutoNumber7">
                  <tr>
                    <td width="39">
                    <img border="0"   name="imagename" src="../images/button1.jpg" width="39" height="29"></td>
                    <td width="177">
                    <a onMouseover="document.imagename.src=image2.src" onMouseout="document.imagename.src=image1.src" href="../oer_greenawards.html">
                    <img border="0" src="../images/manu_oer_green_awards.jpg" width="177" height="29"></a></td>
                  </tr>
                  <tr>
                    <td width="216" colspan="2">
                    <img border="0" src="../images/manu_line.jpg" width="216" height="5"></td>
                  </tr>
                  <tr>
                    <td width="39">
                    <img border="0" name="imagenamea"  src="../images/button1.jpg" width="39" height="29"></td>
                    <td width="177">
                    <a onMouseover="document.imagenamea.src=imagea2.src" onMouseout="document.imagenamea.src=imagea1.src" href="../award_categories.html">

                    <img border="0" src="../images/manu_award.jpg" width="177" height="29"></a></td>
                  </tr>
                  <tr>
                    <td width="216" colspan="2">
                    <img border="0" src="../images/manu_line.jpg" width="216" height="5"></td>
                  </tr>
                  <tr>
                    <td width="39">
                    <img border="0" name="imagenameb"   src="../images/button1.jpg" width="39" height="29"></td>
                    <td width="177">
                    <a onMouseover="document.imagenameb.src=imagea2.src" onMouseout="document.imagenameb.src=imagea1.src" href="../register_now.html">


                    <img border="0" src="../images/manu_register.jpg" width="177" height="29"></a></td>
                  </tr>
                  <tr>
                    <td width="216" colspan="2">
                    <img border="0" src="../images/manu_line.jpg" width="216" height="5"></td>
                  </tr>
                  <tr>
                    <td width="39">
                    <img border="0"  name="imagenamec"  src="../images/button1.jpg" width="39" height="29"></td>
                    <td width="177">
                    <a onMouseover="document.imagenamec.src=imagea2.src" onMouseout="document.imagenamec.src=imagea1.src" href="../sponsors.html">

                    <img border="0" src="../images/manu_sponsors.jpg" width="177" height="29"></a></td>
                  </tr>
                  <tr>
                    <td width="216" colspan="2">
                    <img border="0" src="../images/manu_line.jpg" width="216" height="5"></td>
                  </tr>
                  <tr>
                    <td width="39">
                    <img border="0"   name="imagenamed"  src="../images/button1.jpg" width="39" height="29"></td>
                    <td width="177">
                    <a onMouseover="document.imagenamed.src=imagea2.src" onMouseout="document.imagenamed.src=imagea1.src" href="../aboutus.html">

                    <img border="0" src="../images/manu_aboutus.jpg" width="177" height="29"></a></td>
                  </tr>
                  <tr>
                    <td width="216" colspan="2">
                    <img border="0" src="../images/manu_line.jpg" width="216" height="5"></td>
                  </tr>
                  <tr>
                    <td width="39">
                    <img border="0"  name="imagenamee"  src="../images/button1.jpg" width="39" height="29"></td>
                    <td width="177">
                    <a onMouseover="document.imagenamee.src=imagea2.src" onMouseout="document.imagenamee.src=imagea1.src" href="../pressroom.html">

                    <img border="0" src="../images/manu_pressroom.jpg" width="177" height="29"></a></td>
                  </tr>
                </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr>
            <td width="100%">
            <a href="../winners.html">
            <img border="0" src="../images/img2.jpg" width="240" height="49"></a></td>
          </tr>
        </table>
            </td>
          </tr>
          <tr>
            <td width="240" height="269" valign="top">
            <map name="FPMap0">
            <area href="../green_board.html" shape="rect" coords="105, 61, 207, 83">
            <area href="../issues_that_matter.html" shape="rect" coords="42, 88, 205, 107">
            <area href="../interesting_links.html" shape="rect" coords="78, 115, 209, 131">
            <area href="../green_citizen.html" shape="rect" coords="98, 140, 212, 160">
            </map>
            <img border="0" src="../images/inside__menu.jpg" width="240" height="269" usemap="#FPMap0"></td>
          </tr>
          <tr>
            <td width="240" height="126" background="images/inside_doyouknow.jpg">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber15" height="118">
                  <tr>
                    <td width="35%" height="90">&nbsp;</td>
                    <td width="65%" height="90" valign="bottom">
                    <font style="font-size: 8pt" face="Verdana" color="#DAD990">
                    The threat to our environment is real and has never been 
                    more evident. </font></td>
                  </tr>
                  <tr>
                    <td width="35%" height="28">&nbsp;</td>
                    <td width="65%" height="28" valign="middle">
                    <p style="margin-bottom: 2; margin-right:12" align="right">
                    <a href="../do_you_know.html">
                    <img border="0" src="../images/enter_button.jpg" width="70" height="20"></a></td>
                  </tr>
                </table>
                </td>
          </tr>
          <tr>
            <td width="240" height="34">&nbsp;
                </td>
          </tr>
          <tr>
            <td width="240" height="127">
                <a href="../daily_toons.html">
                <img border="0" src="../images/home_daily_toons_in.jpg" width="240" height="127"></a></td>
          </tr>
          <tr>
            <td width="240" height="34">&nbsp;
                </td>
          </tr>
          <tr>
            <td width="240" height="19">&nbsp;
                </td>
          </tr>
          <tr>
            <td width="240" height="19">&nbsp;
                </td>
          </tr>
        </table>
        </td>
        <td valign="top" height="855">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber4" height="895">
          <tr>
            <td height="32">
            <p align="right" style="margin-right: 20">
            <font face="Arial" style="font-size: 8pt">
            <a href="../contactus.html" style="text-decoration: none">
            <font color="#000000">CONTACT US</font></a>&nbsp; |&nbsp;
            <a target="_blank" href="../http://www.oeronline.com/" style="text-decoration: none">
            <font color="#000000">SUBSCRIBE OER NEWSLETTER</font></a>&nbsp; |&nbsp; 
            <a href="../index.html" style="text-decoration: none">
            <font color="#000000">HOME</font></a></font></td>
          </tr>
          <tr>
            <td height="269">
            <img border="0" src="../images/header/inside_top_oergreenawards.jpg" width="689" height="269"></td>
          </tr>
          <tr>
            <td width="100%" height="622" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber16" height="384">
              <tr>
                <td width="95%" height="384" valign="top">
			   
			   <!--...................................Login Table ...........................-->
			   			   <div style="width:95%;margin-top:10px;color:#FF0000;text-align:right " class="fontstyle"><a href="logout.php" style=" text-decoration:none;color:#000000;font-weight:bold ">LogOut</a></div>

<?php
$f=$_REQUEST['flag'];
if($f==1)
{?>
<p align="center"><font color="#c71444">submitted sucessfully</font></p><?php
}
?>
<form name="formlogin" method="post" action="addform.php" onSubmit="return form_submit()" enctype="multipart/form-data">
<table width="400" border="0" cellpadding="5" align="center"  bgcolor="#FFFFFF" class="fontstyle" id="expenditureTable">
<tr>
<td colspan="3" align="center"><strong><font color="#c71444"> FORM<font color="#c71444"></strong></td>
</tr>
<tr>
<td width="200" >Name</td>
<td width="300" ><input name="txtname" type="text" id="txtuname"><font color="#c71444">*</font></td>
</tr>
<tr>
<td>Email Address</td>
<td><input name="txtemail" type="text" ><font color="#c71444">*</font></td>
</tr>
<tr>
<td>GSM</td>
<td><input name="txtgsm" type="text" maxlength="14" onKeyUp="return numcheck()"><font color="#c71444">*</font></td>
</tr>
	 <tr>
       <td align="left">Upload File </td>
       <td height="30"><input type="file" name="attachment0"></td>
     </tr>
     <tr>
       <td>&nbsp;</td>
       <td height="30"><input type="file" name="attachment1"></td>
     </tr>
     <tr>
       <td>&nbsp;</td>
       <td height="30"><input type="file" name="attachment2"></td>
     </tr>
     <tr>
       <td>&nbsp;</td>
       <td height="30"><input type="file" name="attachment3"></td>
     </tr>
     <tr>
       <td>&nbsp;</td>
       <td height="30"><input type="file" name="attachment4"></td>
     </tr>
</table>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" >
      <tr>
       <td width="28%">&nbsp;</td>
       <td width="80%" height="30"> <a href="javascript:addRow('expenditureTable')" >Add 
            Another Attachement</a> </td>
     </tr>
	<tr>
    <td align="right" valign="top"></td>
    <td align="left" valign="top"><input type="submit" name="Submit" value="submit"><input type="reset" value="Reset" name="reset" class="Btn" /></td>
  </tr>
	</table>
</form>
			   
			   <!--..................................End Login Table ...........................-->                </td>
                <td width="6%" height="384" valign="top">
                <img border="0" src="../images/watermark.jpg" width="42" height="598"></td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="100%" height="20" bgcolor="#D2DBCF">
    <p align="right" style="margin-right: 20">
						<font style="font-size: 8pt" face="Verdana">Copyright © 
						United Press and Publishing LLC</font></td>
  </tr>
  <tr>
    <td width="100%" height="27">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber12" height="27">
      <tr>
        <td width="6%" valign="bottom">
        <img border="0" src="../images/top_arrow2.jpg" width="13" height="10"></td>
        <td width="60%">
        <font style="font-size: 8pt" face="Verdana">Site 
        designed and hosted by
        <a target="_blank" href="../http://www.umsinteractive.com">UMS<i>i</i></a><i> </i>(An 
		Oman Web Awards 2010 award winning site)</font></td>
        <td width="33%">
        <p align="left"></td>
        <td width="34%" valign="bottom">
        <p align="right">
        <img border="0" src="../images/top_arrow3.jpg" width="14" height="15"></td>
      </tr>
    </table>
    </td>
  </tr>
  </table>

  </center>
</div>

</body>

</html>
    