<?php
include("includes/common.php");
$gm=$_GET['month'];
$gy=$_GET['year'];
$defquery	= "SELECT * FROM `".TB_COMMONSETT."`";
$defres = mysql_query($defquery);
$defrow=mysql_fetch_assoc($defres);
//print_r($defrow);
$m = $defrow['Com_default_month'];
$y = $defrow['Com_default_year'];

if($gm!="" && $gy!=""){
$box1query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$gm."' AND Auto_year='".$gy."' AND Frontbox=1 AND publish=1";
$box1res = mysql_query($box1query);
$box1row=mysql_fetch_assoc($box1res);

$box2query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$gm."' AND Auto_year='".$gy."' AND publish=1 AND Frontbox='2' ";
$box2res = mysql_query($box2query);
$box2row=mysql_fetch_assoc($box2res);

$box3query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$gm."' AND Auto_year='".$gy."' AND publish=1 AND Frontbox='3'";
$box3res = mysql_query($box3query);
$box3row=mysql_fetch_assoc($box3res);

$box4query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$gm."' AND Auto_year='".$gy."' AND publish=1 AND Frontbox='4'";
$box4res = mysql_query($box4query);
$box4row=mysql_fetch_assoc($box4res);

$box5query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$gm."' AND Auto_year='".$gy."' AND publish=1 AND Frontbox='5'";
$box5res = mysql_query($box5query);
$box5row=mysql_fetch_assoc($box5res);

$box6query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$gm."' AND Auto_year='".$gy."' AND publish=1 AND Frontbox='6'";
$box6res = mysql_query($box6query);
$box6row=mysql_fetch_assoc($box6res);

$publicationquery	= "SELECT * FROM `".TB_PUBLICATIONS."` Where Pub_month='".$gm."' AND Pub_year='".$gy."' AND publish=1";
$publicationres = mysql_query($publicationquery);
}
else{
$box1query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Frontbox='1'";
$box1res = mysql_query($box1query);
$box1row=mysql_fetch_assoc($box1res);

$box2query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Frontbox='2'";
$box2res = mysql_query($box2query);
$box2row=mysql_fetch_assoc($box2res);

$box3query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Frontbox='3'";
$box3res = mysql_query($box3query);
$box3row=mysql_fetch_assoc($box3res);

$box4query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Frontbox='4'";
$box4res = mysql_query($box4query);
$box4row=mysql_fetch_assoc($box4res);

$box5query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Frontbox='5'";
$box5res = mysql_query($box5query);
$box5row=mysql_fetch_assoc($box5res);

$box6query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Frontbox='6'";
$box6res = mysql_query($box6query);
$box6row=mysql_fetch_assoc($box6res);

$publicationquery	= "SELECT * FROM `".TB_PUBLICATIONS."` Where Pub_month='".$m."' AND Pub_year='".$y."' AND publish=1";
$publicationres = mysql_query($publicationquery);
}
//print_r($ecorow);
?>
<head>
<meta http-equiv="Content-Language" content="en-us">
<title>Oman Economic Review - your first stop for business news in Oman.</title>
<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" />
<script language="JavaScript">
<!--
function mmLoadMenus() {
  if (window.mm_menu_0827083636_0) return;
  window.mm_menu_0827083639_0 = new Menu("root",180,19,"Verdana, Arial, Helvetica, sans-serif",10,"#000000","#00416C","#FBFBFB","#F4F2F0","left","middle",3,0,1000,-5,7,true,true,true,0,false,false);
  mm_menu_0827083639_0.addMenuItem("Petroleum Development Oman","window.open('http://www.oeronline.com/pdf/PDO.pdf','_blank')");
  mm_menu_0827083639_0.addMenuItem("Property and Interiors","window.open('http://www.oeronline.com/pdf/Dossier-Interior.pdf','_blank')");
   mm_menu_0827083639_0.addMenuItem("Healthcare","window.open('http://www.oeronline.com/pdf/Dossier_healthcare.pdf','_blank')");
  mm_menu_0827083639_0.hideOnMouseOut=true;
  mm_menu_0827083639_0.childMenuIcon="arrows.gif";
  mm_menu_0827083639_0.bgColor='#D6D6D6';
  mm_menu_0827083639_0.menuBorder=1;
  mm_menu_0827083639_0.menuLiteBgColor='#D6D6D6';
  mm_menu_0827083639_0.menuBorderBgColor='#D6D6D6'
  

 mm_menu_0827083639_0.writeMenus();
} // mmLoadMenus()
//-->
</script>

<script language="JavaScript" src="http://www.oeronline.com/mm_menu.js"></script>
<style type="text/css">
<!--
A:link {text-decoration:none}
A:visited {text-decoration:none}
div.Section1
	{page:Section1;}
.style3 {
	text-align: center;
	font-family: Verdana;
	font-size: xx-small;
}
.style4 {
	font-family: Verdana;
	font-size: 8pt;
	color: #FF0000;
}
.style8 {
	border-collapse: collapse;
}
.style9 {
	font-family: Verdana;
	font-size: xx-small;
	text-align: right;
	margin: 5 2;
}
.style10 {
	text-align: center;
}
.style2 {
	font-family: Verdana;
	font-size: xx-small;
}
.style11 {
	text-align: justify;
}
.style12 {
	margin-right: 4px;
}
.style13 {
	border-width: 0;
}
--> </style>

<script language="JavaScript">
<!--
function NewWindow1(url) { 
               var hWnd = window.open(url,"Window","width=425,height=350,resizable=yes,scrollbars=yes,left=200,top=325");

                if (hWnd.focus != null) hWnd.focus();
        }

// -->

</script>

<script language="JavaScript">
<!--
function NewWindow(url) { 
               var hWnd = window.open(url,"Window","width=550,height=500,resizable=yes,scrollbars=yes,left=200,top=25");

                if (hWnd.focus != null) hWnd.focus();
        }

// -->

</script>
<script LANGUAGE="JavaScript">
<!-- hide
var now = new Date()
var year = now.getYear()  
function writeYear()
{document.write("<FONT COLOR='#00,00,00' SIZE='1' FACE='Verdana'>" +year+"  "      +"</FONT>")
}
//-->
</script>

<script language="JavaScript"><!--                        
function checkData ()
{
if (document.section.email_address.value == "") {
alert("Please Enter Your Email ID.")
document.section.email_address.focus()
return false
}}

// -->

</script>

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

<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" style="font-family:Verdana, Arial, Helvetica, sans-serif;">
<script language="JavaScript1.2">mmLoadMenus();</script>
<div align="center" dir="ltr">

<table border="0" cellpadding="0" cellspacing="0" width="786" id="table1" dir="ltr">
  <tr>
    <td height="2" width="786" dir="ltr">
    <p align="center" dir="ltr"><?php include("inc/top1.php"); ?></td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC" height="18" width="786" dir="ltr">

<table border="0" width="780" cellspacing="0" cellpadding="0" bgcolor="#CCCCCC" height="15" dir="ltr">
  <tr>
    <td width="27" dir="ltr">
    <p dir="ltr">
    <img border="0" src="images/inc_im4.jpg" width="1" height="15"></td>
    <td width="15" height="15" dir="ltr">
    <p dir="ltr">
    <img border="0" src="images/menu_5.jpg" width="15" height="15"></td>
    <td width="110" bgcolor="#A3A3A3" dir="ltr">
      <p align="center" dir="ltr"><font face="Verdana" size="1"><a href="http://www.oeronline.com/index.php"><font color="#FFFFFF">Home</font></a></font></td>
    <td width="31" dir="ltr">
    <p dir="ltr">
    <img border="0" src="images/menu_3.jpg" width="31" height="15"></td>
    <td width="82" bgcolor="#A3A3A3" dir="ltr">
      <p align="center" dir="ltr"><font face="Verdana" size="1"><a href="http://www.oeronline.com/php/aboutus/aboutus.php"><font color="#FFFFFF">About us</font></a></font></td>
    <td width="31" dir="ltr">
    <p dir="ltr">
    <img border="0" src="images/menu_3.jpg" width="31" height="15"></td>
    <td width="104" bgcolor="#A3A3A3" dir="ltr">
      <p align="center" dir="ltr"> 
      <a name="link1" id="link1" onMouseOver="MM_showMenu(window.mm_menu_0827083639_0,81,15,null,'link1');MM_showMenu(window.mm_menu_0827083639_0,-42,15,null,'link1')" onMouseOut="MM_startTimeout();"><font face="Verdana" size="1" color="#FFFFFF">
      Industry Reports</font></a></td>
    <td width="31" dir="ltr">
    <p dir="ltr">
    <img border="0" src="images/menu_3.jpg" width="31" height="15"></td>
    <td width="92" bgcolor="#A3A3A3" dir="ltr">
      <p align="center" dir="ltr"> 
      <a href="http://www.oeronline.com/php/marketwatch/marketwatch.php">
      <font face="Verdana" size="1" color="#FFFFFF">Market
      Watch</font></a></td>
    <td width="31" dir="ltr">
    <p dir="ltr">
    <img border="0" src="images/menu_3.jpg" width="31" height="15"></td>
    <td width="65" bgcolor="#A3A3A3" dir="ltr">
      <p align="center" dir="ltr"><a href="http://www.oeronline.com/php/advertise/advertise.php"><font face="Verdana" size="1" color="#FFFFFF">Advertise</font></a></td>
    <td width="31" dir="ltr">
    <p dir="ltr">
    <img border="0" src="images/menu_3.jpg" width="31" height="15"></td>
    <td width="82" bgcolor="#A3A3A3" dir="ltr">
      <p align="center" dir="ltr">
      <a href="http://www.oeronline.com/php/contactus/contactus.php"><font face="Verdana" size="1" color="#FFFFFF">Contact Us</font></a></td>
    <td width="17" dir="ltr">
        <p dir="ltr">
        <img border="0" src="images/menu_4.jpg" width="17" height="15" align="right" hspace="0"></td>
    <td width="36" dir="ltr">
    <p dir="ltr"></td>
  </tr>
</table>

    </td>
  </tr>
  <tr>
    <td height="2" width="786" dir="ltr">
    <?php include("inc/home_inc_new.htm");?></td>
  </tr>
  <tr>
    <td width="786" dir="ltr">
    <table border="0" cellpadding="0" style="border-collapse: collapse" width="778" id="table3" dir="ltr">
          <tr>
            <td bgcolor="#FFFFFF" height="15" dir="ltr">
            <hr size="1" align="right" dir="ltr"></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF" height="15" dir="ltr">
            <p align="center">
			<a target="_blank" href="http://www.chinasourcingfair.com/dubai/gsg">
			<img border="0" src="images/728+X+90--Omnibus.gif" width="728" height="90" style="border: 4px solid #C6C9C6"></a></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF" height="15" dir="ltr">
            <hr size="1" align="right" dir="ltr"></td>
          </tr>
          <tr> 
            <td width="778" bgcolor="#FFFFFF"  valign="top" dir="ltr"> 
          
            </td>
          </tr>
          <tr> 
            <td width="903" valign="top" bgcolor="#FFFFFF" height="200" dir="ltr"> 
              <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber15" cellpadding="0" height="1" dir="ltr">
                <tr>
                  <td width="34%" height="2" bgcolor="#CCCCCC" style="border: 1px solid #C0C0C0; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"> <p align="center"><b> 
                              <font face="Verdana" size="1">
							  <?php $frowname= $box1row['Category'];
							  $fquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$frowname."'";
										$fres = mysql_query($fquery);
										$frow=mysql_fetch_assoc($fres);
										echo $fname=$frow['Vcat_name'];
										
							   ?>
                              </font></b></td>
                  <td width="1%" height="2" dir="ltr">
                  <p dir="ltr"></td>
                  <td width="34%" height="20" valign="middle" style="border: 1px solid #CCCCCC; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" bgcolor="#CCCCCC">
                  <p align="center"><b><font face="Verdana" size="1">
                  <?php $srowname= $box2row['Category'];
							  $squery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$srowname."'";
										$sres = mysql_query($squery);
										$srow=mysql_fetch_assoc($sres);
										echo $sname=$srow['Vcat_name'];
							   ?>
                  </font></b></td>
                  <td width="1%" height="2" dir="ltr">
                  <p dir="ltr"></td>
                  <td width="31%" height="2" dir="ltr" bgcolor="#CCCCCC" style="border: 1px solid #CCCCCC; ">
                  <p dir="ltr" align="center">
          <img border="0" src="images/e-magazine.gif"></td>
                </tr>
                <tr>
                  <td width="34%" height="292" valign="top" dir="ltr" style="border: 1px solid #C0C0C0; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" bgcolor="#F7F7F7">
                  <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber17" cellpadding="0" height="294" dir="ltr">
                    <tr>
                      <td width="100%" height="27" dir="ltr">
					  <?php
					  $cm = $box1row['Auto_mnth'];
					$cy = $box1row['Auto_year'];
					$coverid = $box1row['Category'];
					$coquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$coverid."'";
										$cores = mysql_query($coquery);
										$corow=mysql_fetch_assoc($cores);
					//$clink = "headlines.php?mnth=$cm&yr=$cy&cat=$coverid";
					$clink=$corow['Page_link'];
										if($clink!=""){
										$clink = $clink."?mnth=$cm&yr=$cy";	
										}
										else{
										$clink = "headlines.php?mnth=$cm&yr=$cy&cat=$coverid";
										}
					  ?>
                      <p dir="ltr" align="center">
		<a href="<?php echo $clink; ?>"><b>
		<font face="Verdana" size="1" color="#C00000"><?php echo $box1row['Auto_title']; ?></font></b></a></td>
                    </tr>
                    <tr>
                      <td width="100%" height="224" dir="ltr">
                      <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber18" cellpadding="0" dir="ltr" height="113">
                      <?php
					  if($box1row['Auto_img']!=""){
					  ?>
                        <tr>
                          <td width="50%" valign="top" dir="ltr" height="30"> 
                                              <p align="center"> 
		<img border="0" src="uploads/headlines/<?php echo $box1row['Auto_img']; ?>" style="max-width:240px;"><b><font face="Verdana" size="1" color="#FF0000"><br>
&nbsp;</font></b></td>
                        </tr>
                        <?php } ?>
                        <tr>
                          <td width="50%" dir="ltr" height="30"> 
                                              <div align="justify" style="line-height: 13px; margin: 5px 10px" dir="ltr">
					<font face="Verdana, Arial, Helvetica, sans-serif" size="1">
					<?php
					preg_match_all("#<p.*?>([^<]+)</p>#", $box1row['Auto_desc'], $box1);
														$box1val = $box1[0][0].$box1[0][1];
														echo substr($box1val, 0, 250)."...";
					//echo substr($box1row['Auto_desc'], 0, 150)."...";
					
					?>
					</font></div></td>
                        </tr>
                        <tr>
                          <td width="50%" dir="ltr" height="30"> 
                                              <p align="right"> 
                                              <b> <font face="Verdana" size="1"> 
                                              <a style="text-decoration: none" href="<?php echo $clink; ?>"> 
                                              <font color="#000000">Click here 
												for other&nbsp; headlines..</font></a></font></b></td>
                        </tr>
                        </table>
                      </td>
                    </tr>
                    </table>
                  </td>
                  <td width="1%" height="292" dir="ltr">
                  <p dir="ltr"></td>
                  <td width="34%" height="148" valign="top" dir="ltr" style="border: 1px solid #CCCCCC; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" bgcolor="#F7F7F7">
                  <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber16" cellpadding="0" height="108" dir="ltr">
                    <tr>
                      <td dir="ltr" class="boxstyle"> 
					  <?php 
					  $gism = $box2row['Auto_mnth'];
					$gisy = $box2row['Auto_year'];
					$gid = $box2row['Category'];
					$gquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$gid."'";
										$gres = mysql_query($gquery);
										$grow=mysql_fetch_assoc($gres);
					//$glink = "gizmos.php?mnth=$gism&yr=$gisy";
					$glink=$grow['Page_link'];
										if($glink!=""){
										$glink = $glink."?mnth=$gism&yr=$gisy";	
										}
										else{
										$glink = "headlines.php?mnth=$gism&yr=$gisy&cat=$gid";
										}
					  ?>
                        <h4><a href="<?php echo $glink; ?>"><?php echo $box2row['Auto_title']; ?></a></h4>
  <?php
									preg_match_all("#<p.*?>([^<]+)</p>#", $box2row['Auto_desc'], $box2);
														$box2val = $box2[0][0].$box2[0][1];
														echo substr($box2val, 0, 420)."...";
					//echo substr($box2row['Auto_desc'], 0, 420)."...";
					
					?> <p dir="ltr" class="style9" style="text-align:right;"> 
   									
									<a href="<?php echo $glink; ?>"><u>More..</u></a></p></td>
                    </tr>
                    <tr>
                      <td width="100%" height="24" dir="ltr" bgcolor="#CCCCCC"> 
					  <?php
					  $billm = $box3row['Auto_mnth'];
					$billy = $box3row['Auto_year'];
					//$billlink = "billboard.php?mnth=$billm&yr=$billy";
					$bid = $box3row['Category'];
					$bquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$bid."'";
										$bres = mysql_query($bquery);
										$brow=mysql_fetch_assoc($bres);
					$billlink=$brow['Page_link'];
										if($billlink!=""){
										$billlink = $billlink."?mnth=$billm&yr=$billy";	
										}
										else{
										$billlink = "headlines.php?mnth=$billm&yr=$billy&cat=$bid";
										}
					  ?>
                      <p align="center" dir="ltr">
												<b>
												<font face="Verdana" size="1">
												<?php $trowname= $box3row['Category'];
							  $tquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$trowname."'";
										$tres = mysql_query($tquery);
										$trow=mysql_fetch_assoc($tres);
										echo $tname=$trow['Vcat_name'];
							   ?></font></b></td>
                    </tr>
                    <tr>
                      <td  class="boxstyle" dir="ltr"> 
                      <h4><a href="<?php echo $billlink; ?>"><?php echo $box3row['Auto_title']; ?></a></h4>

				<?php
					echo substr($box3row['Auto_desc'], 0, 420)."...";
					
					?>
				<p dir="ltr" class="style9" style="text-align:right;"> 
                                              <font face="Verdana, Arial, Helvetica, sans-serif" size="1"> 
                                              	<a href="<?php echo $billlink; ?>">
												<u>More</u></a></td>
                    </tr>
                  </table>
                  </td>
                  <td width="1%" height="292" dir="ltr">
                  <p dir="ltr"></td>
                  <td width="31%" valign="top" dir="ltr" style="border: 1px solid #C0C0C0; ">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%" id="table139" dir="ltr" style="border-collapse: collapse" bordercolor="#111111">
                <tr> 
                  <td dir="ltr" height="189"> 
      <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber19" bgcolor="#F7F7F7" height="119">
        <tr>
          <td width="100%" height="188" bgcolor="#F7F7F7">
      <table border="1" cellspacing="0" style="border-collapse: collapse" bordercolor="#999999" width="29%" id="AutoNumber3" cellpadding="0" height="73" align="center">
        <tr>
          <td width="100%" bgcolor="#F7F7F7" height="53">
          
          
<marquee direction="up" onMouseOut="this.start();" onMouseOver="this.stop();" height="175" width="214" scrolldelay="300" scrollamount="10">          
<table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" cellpadding="0"><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
			<b><font face="Verdana" size="1">The Woman</font></b><font size="1" face="Verdana"><b> :: English</b></font></td></tr><tr><td width="100%"><p align="center">
	<a target="_blank" href="http://www.readwhere.com/read/169349/The-Woman/The-Woman-Oct-2013#dual/1/1/rw">
	<img border="0" src="php/2013/oct/images/Index/womanoct.jpg" width="130" height="171"></a></td></tr><tr><td width="100%"></td></tr><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><font size="1" face="Verdana"><b>Al Mar'a :: Arabic</b></font></td></tr><tr><td width="100%"><p align="center">
		<a target="_blank" href="http://www.readwhere.com/read/169330/Al-Mara/Al-Mara-Oct-2013#dual/1/1/rw">
		<img border="0" src="php/2013/oct/images/Index/almaraoct.jpg" width="130" height="171"></a></td></tr><tr><td width="100%"></td></tr><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><b><font face="Verdana" size="1">OER</font></b></td></tr><tr><td width="100%"><p align="center"> 
		<a href="http://www.readwhere.com/read/169357/OER-/OER-October-2013#dual/1/1/rw" target="_blank">
		<img border="0" src="php/2013/oct/images/Index/oeroct.jpg" width="130" height="171"></a></td></tr><tr><td width="100%"></td></tr><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><b><font face="Verdana" size="1">Tee Time 
			2013</font></b></td></tr><tr><td width="100%"><p align="center">
							<a target="_blank" href="teetime_emagazine2013.php">
							<img src="images/Teetime13030.jpg" border="0" width="130" height="171"></a></td></tr><tr><td width="100%"></td></tr><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><b><font face="Verdana" size="1">OER&nbsp;&nbsp; Dossier :: English</font></b></td></tr><tr><td width="100%"><p align="center">
							<a href="http://www.readwhere.com/read/169366/Dossier/Dossier-Oct-Dec-2013#dual/1/1/rw" target="_blank">
							<img src="php/2013/oct/images/Index/dossieroct.jpg" border="1" style="border: 0px solid #990000; " width="130" height="171"></a></td></tr><tr><td width="100%"></td></tr><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><b><font face="Verdana" size="1">OER&nbsp;&nbsp; Dossier :: Arabic</font></b></td></tr><tr><td width="100%"><p align="center">
							<a target="_blank" href="http://www.readwhere.com/read/98362/Dossier/Dossier-Ar-Mar#dual/1/1/rw">
							<img src="images/mar_covers/march_cover_dosseir_13.jpg" width="130" height="171" style="border: 0px solid #990000; " border="1"></a></td></tr><tr><td width="100%"> </td></tr><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><b><font face="Verdana" size="1">AIWA</font></b></td></tr><tr><td width="100%"><p align="center">
	<a target="_blank" href="http://www.readwhere.com/read/169377/AIWA/AIWA-October-1-15_2013#dual/1/1/rw">
	<img border="0" src="php/2013/oct/images/Index/aiwaoct.jpg" width="130" height="171"></a></td></tr><tr><td width="100%"> </td></tr><tr><td width="100%"><p align="center"><font face="Verdana" size="1"><b>Signature :: English<br>&nbsp;</b></font></td></tr><tr><td width="100%"><p align="center">
		<a href="http://www.readwhere.com/read/81813/Signature-Oman/January-2013#dual/1/1/rw" target="_blank">
		<img border="0" src="images/Sign-om-jan13-130en.jpg" style="border: 0px solid #800000; " width="130" height="164"></a></td></tr><tr><td width="100%"> </td></tr><tr>
			<td width="100%" height="40"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><font face="Verdana" size="1"><b>Signature :: </b></font>
			<b><font face="Verdana" size="1">Oman</font></b></td></tr><tr><td width="100%"><p align="center">
	<a target="_blank" href="http://www.readwhere.com/read/169353/Signature-Oman/Signature-Oman-Oct-2013#dual/1/1/rw">
	<img border="0" src="php/2013/oct/images/Index/SigantureOct13.jpg" width="130" height="171"></a></td></tr>
			<tr>
			<td width="100%" height="40"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><font face="Verdana" size="1"><b>Signature :: 
			Al Bahrain</b></font></td>
			</tr>
			<tr>
				<td width="100%"><p align="center">
	<a target="_blank" href="http://www.readwhere.com/read/160999/Signature-Bahrain/Signature_Bahrain-Sep-2013#dual/1/1/rw">
	<img border="0" src="php/2013/sep/images/Index/signaturebh.jpg" width="130" height="171"></a></td>
			</tr>
			<tr>
				<td width="100%">&nbsp;</td>
			</tr>
			<tr><td width="100%">&nbsp;</td></tr>
			<tr>
				<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><font face="Verdana" size="1"><b>Oil & Gas Review </b></font></td>
			</tr>
			<tr>
				<td width="100%"><p align="center">
							<a href="http://www.readwhere.com/read/163436/Oil-Gas-Review/OGR-September-2013#dual/1/1/rw" target="_blank">
							<img border="0" src="images/ogr_cover.jpg" style="border: 0px solid #800000; " width="130" height="174"></a></td>
			</tr>
			<tr>
				<td width="100%"></td>
			</tr>
			<tr>
				<td width="100%">&nbsp;</td>
			</tr>
			<tr>
				<td width="100%">&nbsp;</td>
			</tr>
			<tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><font face="Verdana" size="1"><b>O</b></font><b><font face="Verdana" size="1">man 
				LNG</font></b></td></tr><tr><td width="100%"><p align="center">
							<a target="_blank" href="lng_emagazine_mar12.php">
							<img border="0" src="images/LNGMar2012-130.jpg" style="border: 0px solid #800000; " width="130" height="171"></a></td></tr><tr><td width="100%"></td></tr>
			<tr>
				<td width="100%">&nbsp;</td>
			</tr>
			<tr>
				<td width="100%">&nbsp;</td>
			</tr>
			<tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><font face="Verdana" size="1"><b>Ruwad 
			:: English</b></font></td></tr><tr><td width="100%"><p align="center">
							<a href="http://www.readwhere.com/read/149437/Ruwad/Ruwad-En-Aug#dual/1/1/rw" target="_blank">
							<img src="php/2013/aug/images/aug_cover/ruwad_en_cover.jpg" border="1" style="border: 0px solid #990000; " width="130" height="155"></a></td></tr><tr><td width="100%">&nbsp;</td></tr><tr><td width="100%">&nbsp;</td></tr><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><font face="Verdana" size="1"><b>Ruwad&nbsp;:: 
							Arabic</b></font></td></tr><tr><td width="100%"><p align="center">
								<a href="http://www.readwhere.com/read/152136/Ruwad-arabic/Ruad-Aug_#dual/1/1/rw" target="_blank">
								<img src="php/2013/aug/images/aug_cover/ruwad_cover.jpg" border="1" style="border: 0px solid #990000; " width="130" height="157"></a></td></tr><tr><td width="100%">&nbsp;</td></tr><tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><b><font face="Verdana" size="1">Oman Book :: English</font></b></td></tr><tr><td width="100%"><p align="center">
		<a href="http://www.readwhere.com/read/71155/A-Nation-on-the-Move/2012#dual/1/1/rw" target="_blank">
		<img border="0" src="images/oman-12-130.jpg" style="border: 0px solid #800000; " width="130" height="164"></a></td></tr><tr><td width="100%">&nbsp;</td></tr>
	<tr>
		<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px"><b><font face="Verdana" size="1">Oman Book :: 
		Arabic</font></b></td>
	</tr>
	<tr>
		<td width="100%"><p align="center">
		<a target="_blank" href="oman_emagazine_arabic_nov2011.php">
		<img border="0" src="images/oman-ar-2011-130.jpg" style="border: 0px solid #800000; "></a></td>
	</tr>
	<tr>
		<td width="100%">&nbsp;</td>
	</tr>
	<tr>
		<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Port of Oman :: English</font></b></td>
	</tr>
	<tr>
		<td width="100%"><p align="center">
		<a target="_blank" href="images/portofoman-eng-b.jpg">
		<img border="0" src="images/scroll-portofoman-eng.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></a></td>
	</tr>
	<tr>
		<td width="100%">&nbsp;</td>
	</tr>
	<tr>
		<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Port of Oman :: Arabic</font></b></td>
	</tr>
	<tr>
		<td width="100%"><p align="center">
		<a target="_blank" href="images/portofoman-ara-b.jpg">
		<img border="0" src="images/scroll-portofoman-ara.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></a></td>
	</tr>
	<tr>
		<td width="100%">&nbsp;</td>
	</tr>
																																<tr>
																																	<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Connexion 2013</font></b></td>
	</tr>
	<tr>
		<td width="100%"><p align="center">
		<a target="_blank" href="connexion2013.php">
		<img border="0" src="images/Connexion13013.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="130" height="171"></a></td>
	</tr>
	<tr>
		<td width="100%">&nbsp;</td>
	</tr>
																																<tr>
																																	<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Jawahart Oman Book :: English</font></b></td>
																																</tr>
																																<tr>
																																	<td width="100%"><p align="center">
		<a href="jawharat_oman_aug2012.php" target="_blank">
		<img border="0" src="images/scroll-Jawahart-Oman-aug-12.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="130" height="164"></a></td>
																																</tr>
																																<tr>
																																	<td width="100%">&nbsp;</td>
																																</tr>
																																<tr>
																																	<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Jawahart Oman Book :: Arabic</font></b></td>
																																</tr>
																																<tr>
																																	<td width="100%"><p align="center">
		<a href="jawharat_oman_emagazine_arabic_aug2012.php" target="_blank">
		<img border="0" src="images/Jawahart-Oman-ara12.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></a></td>
																																</tr>
																																<tr>
																																	<td width="100%">&nbsp;</td>
																																</tr>
																															<tr>
																																<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Cook Book 2011</font></b></td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center">
		<a target="_blank" href="cook_book_aug2011.php">
		<img border="0" src="images/cook-book.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></a></td>
																															</tr>
																															<tr>
																																<td width="100%">&nbsp;</td>
																															</tr>
																																<tr>
																																<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Progress 2012 :: English</font></b></td>
																																</tr>
																																<tr>
																																<td width="100%"><p align="center">
		<a href="http://www.readwhere.com/read/143784/Progress/Progress#dual/1/1" target="_blank">
		<img border="0" src="/images/progress_cover.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="130" height="164"></a></td>
																																</tr>
																																<tr>
																																<td width="100%">&nbsp;</td>
																																</tr>
																																<tr>
																																	<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Progress 2012 :: Arabic</font></b></td>
																																</tr>
																																<tr>
																																	<td width="100%"><p align="center">
		<a href="http://www.readwhere.com/read/144134/Progress/Progress#dual/1/1/rw" target="_blank">
		<img border="0" src="images/progress_cover_ar.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="130" height="164"></a></td>
																																</tr>
																																<tr>
																																	<td width="100%">&nbsp;</td>
																																</tr>
																															<tr>
																																<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">ICT Book :: English</font></b></td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center">
		<a target="_blank" href="ICT_book_emagazine.php">
		<img border="0" src="images/ICT-Eng11-12-130.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="130" height="184"></a></td>
																															</tr>
																															<tr>
																																<td width="100%">&nbsp;</td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">ICT Book :: Arabic</font></b></td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center">
		<a target="_blank" href="ICT_book_arabic_emagazine.php">
		<img border="0" src="images/ICT-AR-11-12-130.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="130" height="188"></a></td>
																															</tr>
																															<tr>
																																<td width="100%">&nbsp;</td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Wanderer :: English</font></b></td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center">
		<a target="_blank" href="wanderer_emagazine_sep_2011.php">
		<img border="0" src="images/wanderer-eng-cover.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></a></td>
																															</tr>
																															<tr>
																																<td width="100%">&nbsp;</td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Wanderer :: Arabic</font></b></td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center">
		<a target="_blank" href="wanderer_arabic_emagazine.php">
		<img border="0" src="images/wanderer-ara-cover.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></a></td>
																															</tr>
																															<tr>
																																<td width="100%">&nbsp;</td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Education Review</font></b></td>
																															</tr>
																															<tr>
																																<td width="100%"><p align="center">
		<a href="education_emagazine-2012.php" target="_blank">
		<img border="0" src="images/Education-2012.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="130" height="171"></a></td>
																															</tr>
																															<tr>
																																<td width="100%">&nbsp;</td>
																															</tr>
	<tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
		<b><font face="Verdana" size="1">Signature Living</font></b></td></tr><tr><td width="100%"><p align="center">
		<a target="_blank" href="signatureliving_emagazine.php">
		<img border="0" src="images/SignatureLiving-cover.jpg" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></a></td></tr><tr><td width="100%">&nbsp;</td></tr></table></marquee>          </td>
        </tr>
      </table>
          </td>
        </tr>
      </table>
                  </td>
                </tr>
                <tr>
                  <td> 



          <div align="center">
<?php include("archive_box_new.php"); ?>
          </div>



                  </td>
                </tr>
                <tr>
                  <td height="15" bgcolor="#CCCCCC" style="border-bottom:1px solid #CCCCCC; border-left-width: 1px; border-right-width: 1px; border-top: 1px solid #CCCCCC; border-left-color:#CCCCCC; border-right-color:#CCCCCC"> 
  
     <p align="center" style="margin-top: 4; margin-bottom: 4"><font size="1" face="Verdana">
     <b>OER Newsletter</b></font></td>
                </tr>
                <tr>
                  <td height="6" bgcolor="#F7F7F7" style="border-left-width: 1; border-right-width: 1; border-top: 1px solid #86AF76; border-bottom-width: 1"> 
  
     <p align="center" style="margin-top: 5; margin-bottom:5" dir="rtl"><?php include("inc/inc_newsletternew-test.php");?>
</td>
                </tr>
              </table></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr> 
            <td width="903" valign="top" bgcolor="#FFFFFF" height="15" dir="ltr"> 
              <hr size="1" align="right" dir="ltr"></td>
          </tr>
          <tr> 
            <td width="903" valign="top" bgcolor="#FFFFFF" height="135" dir="ltr"> 
              <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber4" dir="ltr">
                <tr> 
                  <td width="50%" dir="ltr"> <p dir="ltr"> 
					<a target="_blank" href="http://www.omangreenawards.com"> 
                      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="641" height="135">
                        <param name="movie" value="images/Oer-omangreenawards.swf">
                        <param name="quality" value="high">
                        <embed src="images/Oer-omangreenawards.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="641" height="135"></embed></object>
                      </a></td>
                  <td width="50%" dir="ltr"> <p align="center" dir="ltr"> 
					<a target="_blank" href="http://www.omangreenawards.com"> 
                      <img border="0" src="images/OGA-Logo-2012.jpg" width="141" height="128"></a></td>
                </tr>
              </table></td>
          </tr>
          <tr> 
            <td width="903" valign="top" bgcolor="#FFFFFF" height="15" dir="ltr"> 
              <hr size="1" align="right" dir="ltr"></td>
          </tr>
          </table>
    </td>
  </tr>
  <tr>
      <td width="786" valign="top" dir="ltr"> 
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="785" id="table59" dir="ltr">
          <tr> 
            <td align="center" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bordercolor="#BEBE9C" width="781" dir="ltr"> 
              <div align=center dir="ltr"> 
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2" bgcolor="#F7F7F7" dir="ltr">
                  <tr> 
                    <td width="36%" valign="top" dir="ltr"> <div align="center" dir="ltr"> 
                        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table51" cellspacing="0" dir="ltr">
                          <tr> 
                            <td bgcolor="#E6E6E6" height="24" width="276" style="border-top-style: solid; border-top-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; border-left-width:1px; border-right-width:1px; border-bottom-style:solid; border-bottom-width:1px" bordercolor="#C0C0C0" dir="ltr"> 
                              <p align="center" dir="ltr"><b> <font face="Verdana" size="1"> 
                                :: Latest News </font></b></td>
                          </tr>
                          <tr> 
                            <td width="284" valign="top" bgcolor="#F7F7F7" dir="ltr"> 
                              <div align="center" dir="ltr"> 
                                <table border="0" cellpadding="0" cellspacing="0" width="90%" id="table72" dir="ltr">
                                  <tr> 
                                    <td dir="ltr" valign="middle"> <p align="center" dir="ltr"> 
									<?php include("news.php"); ?>
                                       <!--  <iframe src="inc/local_news1.htm" name="I1" width="299" height="498" border="0" frameborder="0" align="right" >
                                        This message is only visible to older 
                                        browsers. Upgrade your browser to a latest 
                                        version!</iframe> -->
                                    </td>
                                  </tr>
                                  <tr> 
                                    <td bgcolor="#F7F7F7" dir="ltr"> 
                                      <hr size="1" width="95%" dir="ltr"></td>
                                  </tr>
                                  <tr> 
                                    <td bgcolor="#F7F7F7" dir="ltr"> 
                                      <center dir="ltr">
                                        <table border="0" cellpadding="0" cellspacing="0" width="244" id="table108" style="border-collapse: collapse" bordercolor="#111111" bgcolor="#FFFFFF" dir="ltr">
                                          <tr> 
                                            <td colspan="2" width="244" dir="ltr"> 
                                              <div align="center" dir="ltr"> 
                                                <center dir="ltr">
                                                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="27" dir="ltr">
                                                    <tr> 
                                                      <td width="50%" dir="ltr"> 
                                                        <p align="center" dir="ltr"><u>
														<a target="_blank" href="http://www.muralicartoons.com/"><b> 
                                                          <font face="Verdana" style="font-size: 8pt" color="#000000">C</font></b></a></u><font face="Verdana"><u><a target="_blank" href="http://www.muralicartoons.com/"><font color="#000000" style="font-size: 8pt"><b>artoon 
                                                          Corner</b></font></a></u></font></td>
                                                      <td width="50%" dir="ltr"> 
                                                        <p align="center" style="margin-right: 5px" dir="ltr"> 
                                                          <u> <font face="Verdana" size="1" color="#000000"> 
                                                          <a style="text-decoration: underline" target="_blank" href="http://www.muralicartoons.com/">by 
                                                          Murali</a></font></u></td>
                                                    </tr>
                                                  </table>
                                                </center>
                                              </div></td>
                                          </tr>
                                          <tr> 
                                            <td colspan="2" width="244" height="130" dir="ltr"> 
											<?php
											if($_GET['month']!="" && $_GET['year']!=""){
											$cquery	= "SELECT * FROM `".TB_CARTOON."` Where Ctn_month='".$gm."' AND Ctn_year='".$gy."'";
											$cres = mysql_query($cquery);
											$crow=mysql_fetch_assoc($cres);
											}
											else{
											
											$cquery1	= "SELECT * FROM `".TB_CARTOON."` Where Ctn_month='".$m."' AND Ctn_year='".$y."'";
											$cres1 = mysql_query($cquery1);
											$countrow=mysql_num_rows($cres1);
											if($countrow!=0){
											$cquery	= "SELECT * FROM `".TB_CARTOON."` Where Ctn_month='".$m."' AND Ctn_year='".$y."'";
											$cres = mysql_query($cquery);
											$crow=mysql_fetch_assoc($cres);
											}
											else{
											//$cmn1 = date("F", strtotime("-1 months"));
											$cmn1 = date("F");
											$cquery	= "SELECT * FROM `".TB_CARTOON."` Where Ctn_month='".$cmn1."' AND Ctn_year='".$y."'";
											$cres = mysql_query($cquery);
											$crow=mysql_fetch_assoc($cres);
											}
											}
											
											//echo $cmn;
											//print_r($crow);
											?>
                                              <p align="center" dir="ltr"> 
												<img border="0" src="uploads/cartoons/thumb/<?php echo $crow['Ctn_thumb']; ?>" width="300" height="332">
												</td>
                                          </tr>
                                          <tr> 
                                            <td width="135" dir="ltr"> <p align="center" style="margin-top: 5; margin-bottom: 5" dir="ltr"> 
                                                <span class="style4"><strong>
												<?php 
												$ctmm = $crow['Ctn_month'];
												$ctmy = $crow['Ctn_year'];
												echo $ctmm." ".$ctmy; ?></strong></span></p></td>
                                            <td width="109" dir="ltr"> <p align="center" style="margin-top: 5; margin-bottom: 5" dir="ltr"> 
                                                <font color="#000000" face="Verdana" size="1"> 
                                                <u> 
												<!--<a style="text-decoration: underline" href="JavaScript:NewWindow('kk-cartoon/2013_oct.php')">Click to enlarge</a>-->
												<a style="text-decoration: underline" href="JavaScript:NewWindow('cartoon.php?month=<?=$ctmm?>&year=<?=$ctmy?>')">Click to enlarge</a>
												</u></font></td>
                                          </tr>
                                        </table>
                                      </center></td>
                                  </tr>
                                  <tr> 
                                    <td bgcolor="#F7F7F7" dir="ltr"> 
                                      <hr size="1" width="95%" dir="ltr"></td>
                                  </tr>
                                  <tr> 
                                    <td bgcolor="#F7F7F7" dir="ltr"> 
                                      <p dir="ltr"></td>
                                  </tr>
                                  <tr> 
                                    <td bgcolor="#F7F7F7" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bordercolor="#C0C0C0" height="98" dir="ltr"> 
                                      <p align="center" style="margin: 5px 4" dir="ltr"> 
                                        <b><a href="http://www.oeronline.com/php/2006_may/main6.php"> 
                                        <font face="Verdana" size="1" color="#800000">RE</font></a><font face="Verdana" size="1" color="#800000">ADER 
                                        FEEDBACK</font></b><font color="#800000"><br>
                                        </font><font face="Verdana" size="1">In 
                                        an effort to constantly improve our products 
                                        and relations with our reader, we request 
                                        you to give your honest opinion to this 
                                        brief survey&nbsp; <br>
                                        <font color="#000000"><u> <font color="#008000"> 
                                        <a style="text-decoration: none" href="http://www.oeronline.com/php/contactus/key_client_survey.php">Click here</a></font></u></font></font></td>
                                  </tr>
                                  <tr> 
                                    <td dir="ltr"> <div align="center" dir="ltr"> 
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" id="table74" style="border-collapse: collapse" bordercolor="#111111" dir="ltr">
                                          <tr> 
                                            <td bgcolor="#F7F7F7" dir="ltr"> <p dir="ltr"></td>
                                          </tr>
                                          <tr> 
                                            <td bgcolor="#F7F7F7" dir="ltr"> <hr size="1" dir="ltr"></td>
                                          </tr>
                                          <tr> 
                                            <td bgcolor="#1B3500" height="21" dir="ltr"> 
                                              <p align="center" dir="ltr"><b> 
                                                <font face="Verdana" color="#FFFFFF" size="1"> 
                                                Weather</font></b></td>
                                          </tr>
                                          <tr> 
                                            <td bgcolor="#285100" height="1" dir="ltr"> 
                                              <p align="center" dir="ltr"> 
                                                <?php include("inc/weather.htm"); ?>
                                            </td>
                                          </tr>
                                        </table>
                                      </div></td>
                                  </tr>
                                  <tr> 
                                    <td height="1" dir="ltr"> <blockquote dir="ltr"> 
                                      </blockquote></td>
                                  </tr>
                                  <tr> 
                                    <td height="1" dir="ltr"> <p dir="ltr"> </td>
                                  </tr>
                                  <tr> 
                                    <td height="1" dir="ltr"> <p dir="ltr"> </td>
                                  </tr>
                                  <tr> 
                                    <td height="1" dir="ltr"> <hr size="1" dir="ltr"></td>
                                  </tr>
                                  <tr> 
                                    <td height="1" dir="ltr"> <table border="1" width="100%" bordercolor="#CCCCCC" bgcolor="#EEEEEE" cellspacing="1" style="border-collapse: collapse" dir="ltr">
                                        <tr> 
                                          <td height="21" dir="ltr" class="style3"> 
										  <?php
										  $nm = $box4row['Auto_mnth'];
													$ny = $box4row['Auto_year'];
													//$nylink = "headlines.php?mnth=$nm&yr=$ny&cat=$nyid";
													$frrowname= $box4row['Category'];
							 			 $frquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$frrowname."'";
										$frres = mysql_query($frquery);
										$frrow=mysql_fetch_assoc($frres);

										$nylink=$frrow['Page_link'];
										if($nylink!=""){
										$nylink = $nylink."?mnth=$nm&yr=$ny";	
										}
										else{
										$nylink = "headlines.php?mnth=$nm&yr=$ny&cat=$frrowname";
										}
										  ?>
											<strong><?php 
										echo $frname=$frrow['Vcat_name'];
							   ?></strong></td>
                                        </tr>
                                        <tr> 
                                          <td bgcolor="#F7F7F7" dir="ltr"> <table border="0" width="100%" cellspacing="1" dir="ltr">
                                              <tr>
                                                <td dir="ltr" valign="top" class="boxstyle"> 
                                                <h4><a href="<?php echo $nylink; ?>"><?php echo $box4row['Auto_title']; ?></a></h4> 

													<?php
														preg_match_all("#<p.*?>([^<]+)</p>#", $box4row['Auto_desc'], $box4);
														$box4val = $box4[0][0].$box4[0][1];
														echo substr($box4val, 0, 400)."...";
													
													?>
											<p dir="ltr"  style="text-align:right;margin-bottom:5px;"> 
                                              <a href="<?php echo $nylink;?>">
												<u>More</u></a></p>
												</td>
                                              </tr>
                                            </table>
											</td>
                                        </tr>
                                      </table></td>
                                  </tr>
                                  <tr> 
                                    <td height="1" dir="ltr"> <hr size="1" dir="ltr"></td>
                                  </tr>
                                  <tr> 
                                    <td height="1" dir="ltr"> <p dir="ltr"> </td>
                                  </tr>
                                  <tr> 
                                    <td height="1" dir="ltr"> </td>
                                  </tr>
                                  <tr> 
                                    <td dir="ltr"> <table border="1" width="100%" bordercolor="#CCCCCC" bgcolor="#EEEEEE" cellspacing="1" style="border-collapse: collapse" dir="ltr">
                                        <tr> 
                                          <td height="21" dir="ltr" class="style3"> 
										  <?php
										  $envm = $box5row['Auto_mnth'];
													$envy = $box5row['Auto_year'];
													$envid = $box5row['Category'];
													//$envlink = "headlines.php?mnth=$envm&yr=$envy&cat=$envid";
										$fiquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$envid."'";
										$fires = mysql_query($fiquery);
										$firow=mysql_fetch_assoc($fires);
													
										$envlink=$frrow['Page_link'];
										if($envlink!=""){
										$envlink = $envlink."?mnth=$envm&yr=$envy";	
										}
										else{
										$envlink = "headlines.php?mnth=$envm&yr=$envy&cat=$envid";
										}
										  ?>
											<strong><?php 
							  
										echo $finame=$firow['Vcat_name'];
							   ?></strong></td>
                                        </tr>
                                        <tr> 
                                          <td bgcolor="#F7F7F7" dir="ltr"> <table border="0" width="100%" cellspacing="1" dir="ltr">
                                              <tr>
                                                <td dir="ltr" valign="top" class="boxstyle"> 
                                                <h4><a href="<?php echo $envlink; ?>"><?php echo $box5row['Auto_title']; ?></a></h4> 

												<?php
												preg_match_all("#<p.*?>([^<]+)</p>#", $box5row['Auto_desc'], $box5);
														$box5val = $box5[0][0].$box5[0][1];
														echo substr($box5val, 0, 400)."...";
													//echo substr($box5row['Auto_desc'], 0, 600)."...";
													?>
                                                    <p  dir="ltr" style="text-align:right;margin-bottom:5px;"> 
                                              <a href="<?php echo $envlink;?>">
												<u>More</u></a></p>
												</td>
                                              </tr>
                                            </table>
											</td>
                                        </tr>
                                        <tr> 
                                          <td bgcolor="#F7F7F7" dir="ltr">&nbsp; </td>
                                        </tr>
                                        <tr> 
                                          <td bgcolor="#F7F7F7" dir="ltr" height="10"> 
											<p align="center">
											<img border="0" src="images/SIGNSHOW.jpg" width="130" height="237"></td>
                                        </tr>
                                        <tr> 
                                          <td bgcolor="#F7F7F7" dir="ltr" height="20"> 
											<p align="center">
                                        <font color="#000000" face="Verdana" size="1"><u> <font color="#008000"> 
                                        	<a style="text-decoration: none" target="_blank" href="pdf/SIGNSHOW-Launch.pdf">Click here</a></font></u></font></td>
                                        </tr>
                                      </table></td>
                                  </tr>
                                  <tr> 
                                    <td dir="ltr"> <p align="center" dir="ltr"> 
                                    </td>
                                  </tr>
                                </table>
                              </div></td>
                          </tr>
                        </table>
                      </div></td>
                    <td width="43%" valign="top" height="1437" dir="ltr"> <div align="center" dir="ltr"> 
                        <table border="0" cellpadding="0" style="border-coThriving on CHALLENGES id="table110" cellspacing="0" dir="ltr">
                          <tr> 
                            <td width="326" valign="top" bordercolor="#BEBE9C" bgcolor="#EEEEEE" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" dir="ltr"> 
                              <div align="center" dir="ltr"> 
                                <table width="98%" border="0" cellpadding="0" id="table111" style="border-collapse: collapse" dir="ltr">
                                  <tr> 
                                    <td dir="ltr"> <div align="center" dir="ltr"> 
                                        <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="table89" bordercolor="#E7E3E7" height="275" dir="ltr">
                                          <tr> 
                                            <td height="275" valign="top" dir="ltr"> 
                                              <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="274" dir="ltr">
                                                <tr> 
                                                  <td width="100%" height="23" bgcolor="#E6E6E6" style="border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; ; border-left-color:#C0C0C0; border-right-color:#C0C0C0" dir="ltr"> 
                                                    <p align="center" dir="ltr"><b><font face="Verdana" size="1"> 
                                                      :: </font></b><big><big><b> 
                                                      <font face="Verdana" size="1">Our 
                                                      other publications</font></b></big></big></td>
                                                </tr>
                                                <tr> 
                                                  <td width="100%" bgcolor="#FFFFFF" dir="ltr" valign="top" style="padding-bottom:15px;"> 
												  
												  
												  
												  
												  
												  
												  <div align="center" dir="ltr"> 
                                                  <?php
										while($publicationrow = mysql_fetch_assoc($publicationres)){
										$pcatid = $publicationrow['Cat_id'];
										$pcquery	= "SELECT * FROM `".TB_PUBCAT."` Where Pcat_id='".$pcatid."'";
										$pcres = mysql_query($pcquery);
										$pcrow=mysql_fetch_assoc($pcres);
										$pcname = $pcrow['Pcat_name']; 
										//print_r($publicationrow);
												  ?>
												  
												  <table border="0" cellpadding="0" width="90%" dir="ltr" class="pub_table">
												  <tr>
												  <td valign="top"><img border="0" src="uploads/publication_uploads/thumb/<?php echo $publicationrow['Pub_img_thumb_eng']; ?>" width="50" height="63"></td>
												  <td valign="top" class="pubtext"> 
												<h6><?php echo $pcname; ?></h6>
                                                <?php echo $publicationrow['Pub_intro']; ?>
                                                             <a target="_blank" href="<?php echo $publicationrow['Pub_more']; ?>"> 
                                                              <u>More</u></a>
															  </td>
												  </tr>
                                                  
												  <tr>
												<td width="100%" align="left" dir="ltr" colspan="2" class="publinks">
                                                <?php
												  if($publicationrow['Pub_link_eng']!="" || $publicationrow['Pub_link_ara']!="" || $publicationrow['Pub_link_arch_eng']!="" || $publicationrow['Pub_link_arch_ara']!=""){
												  ?>
<p>
e-Magazine<?php if($publicationrow['Pub_link_eng']!=""){ ?> [<a href="<?php echo $publicationrow['Pub_link_eng']; ?>" target="_blank">Eng</a>] <?php } ?><?php if($publicationrow['Pub_link_ara']!=""){ ?> [<a href="<?php echo $publicationrow['Pub_link_ara']; ?>" target="_blank">Ara</a>] <?php } ?>&nbsp;|&nbsp;Archives<?php if($publicationrow['Pub_link_arch_eng']!=""){ ?> [<a href="<?php echo $publicationrow['Pub_link_arch_eng']; ?>" target="_blank">Eng</a>] <?php } ?><?php if($publicationrow['Pub_link_arch_ara']!=""){ ?> [<a href="<?php echo $publicationrow['Pub_link_arch_ara']; ?>" target="_blank">Ara</a>]<?php } ?>
</p>
</td>
<?php
												  }
												  ?>
												  </tr>
                                                  
                                                  
                                                  
                                                  
												  <tr> 
                                                          <td width="100%" height="15" valign="top" bgcolor="#F7F7F7" colspan="2" dir="ltr" style="padding-bottom:3px;padding-top:3px;"> 
                                                            <hr size="1" width="95%" dir="ltr"></td>
                                                        </tr>
												  </table>
												  <?php } ?>
												  

												  </div>
												  
												  
												  
												  
												  
												  
												  
												  
												  </td>
                                                </tr>
                                              </table></td>
                                          </tr>
                                        </table>
                                      </div>
												  </td>
                                  </tr>
                                  <tr> 
                                    <td dir="ltr"> <hr size="1" width="95%" dir="ltr"></td>
                                  </tr>
                                </table>
												  </td>
                          </tr>
                        </table>
                      </div>
                                                    </td>
                    <td width="21%" valign="top" dir="ltr"> <div align="center" dir="ltr"> 
                        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table120" cellspacing="0" dir="ltr">
                          <tr> 
                            <td bgcolor="#E6E6E6" height="25" width="158" style="border-top-style: solid; border-top-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; border-left-width:1px; border-right-width:1px; border-bottom-style:solid; border-bottom-width:1px" bordercolor="#C0C0C0" dir="ltr"> 
                              <p align="center" dir="ltr"><b><font face="Verdana" size="1"> 
                                :: OER eMagazine</font></b></td>
                          </tr>
                          <tr> 
                            <td width="158" valign="top" bgcolor="#F7F7F7" height="847" dir="ltr"> 
                              <div align="center" dir="ltr"> 
                                <table border="0" cellpadding="0" style="border-collapse: collapse" width="90%" id="table128" bgcolor="#F7F7F7" height="848" dir="ltr">
                                  <tr> 
                                    <td height="401" bgcolor="#F7F7F7" dir="ltr"> 
                                      <div align="center" dir="ltr"> 
                                        <table border="0" cellpadding="0" width="100%" id="table135" bgcolor="#F7F7F7" dir="ltr" class="style8">
                                          <tr> 
                                            <td height="202" bgcolor="#F7F7F7" dir="ltr"> 
                                              <table width="100%" border="0" cellspacing="0" cellpadding="0" dir="ltr">
                                                <tr> 
                                                  <td height="167" dir="ltr"> 
                                                    <div align="center" dir="ltr"> 
                                                      <p dir="ltr"> 
		<b><font face="Verdana" size="1" color="#FF0000">
		<br>
		</font></b>
		<img border="0" src="php/2013/oct/images/Index/oeroct.jpg" width="130" height="171"></div></td>
                                                </tr>
                                                <tr> 
                                                  <td height="33" dir="ltr"> <div align="center" dir="ltr"> 
                                                      <p style="line-height: 15px" dir="ltr"><big><big><big><big><font face="Verdana, Arial, Helvetica, sans-serif" size="1">eMagazine 
                                                        - Click
														<a target="_blank" href="http://www.readwhere.com/read/169357/OER-/OER-October-2013#dual/1/1/rw">here</a></font></big></big></big></big><br>
                                                        <big><big><big><big><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> 
                                                        Archives - Click 
														<a href="oer_emagazine_archive.php">here</a></font></big></big></big></big></div></td>
                                                </tr>
                                                <tr> 
                                                  <td dir="ltr"> <hr color="#C0C0C0" size="1" dir="ltr"></td>
                                                </tr>
                                              </table></td>
                                          </tr>
                                         <tr>
                                            <td>
											<?php include("event_box.php"); ?>
											</td>
											</tr>
											<tr>
                                    <td height="19" bgcolor="#F7F7F7" dir="ltr"> 
                                      <hr color="#C0C0C0" size="1" dir="ltr"></td>
                                  		</tr>
                                          <tr> 
                                            <td height="5" bgcolor="#F7F7F7" dir="ltr"> 
                                              <p dir="ltr"></td>
                                          </tr>
                                          <tr> 
                                            <td bgcolor="#E6E6E6" style="border:1px solid #808080; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bordercolor="#C0C0C0" height="24" dir="ltr"> 
                                              <p align="center" dir="ltr">
												<b>
												<font face="Verdana" size="1">
												<?php
											  $ecom = $box6row['Auto_mnth'];
											$ecoy = $box6row['Auto_year'];
											$ecoid = $box6row['Category'];
											//$ecolink = "headlines.php?mnth=$ecom&yr=$ecoy&cat=$ecoid";
											
											 $siquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$ecoid."'";
										$sires = mysql_query($siquery);
										$sirow=mysql_fetch_assoc($sires);
										$envlink=$sirow['Page_link'];
										if($ecolink!=""){
										$ecolink = $ecolink."?mnth=$ecom&yr=$ecoy";	
										}
										else{
										$ecolink = "headlines.php?mnth=$ecom&yr=$ecoy&cat=$ecoid";
										}
											  ?>
												<?php 
							 
										echo $siname=$sirow['Vcat_name'];
							   ?></font></b></td>
                                          </tr>
                                          <tr> 
                                            <td bgcolor="#F7F7F7" style="border:1px solid #808080; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; " bordercolor="#C0C0C0" height="150" dir="ltr" valign="top"> 
                                            <p align="center" style="margin-left:3px; margin-right:3px; margin-top:5px; margin-bottom:10px" dir="ltr"> 
		<a href="<?php echo $ecolink; ?>"><b>
		<font face="Verdana" size="1" color="#CC3333"><?php echo $box6row['Auto_title']; ?></font></b></a>
                                            <div style="margin-left:3px; margin-right:3px; margin-top:5px; margin-bottom:10px; text-align:left" dir="ltr" class="style10"> 
									<font face="Verdana, Arial, Helvetica, sans-serif" size="1">
									<?php
									preg_match_all("#<p.*?>([^<]+)</p>#", $box6row['Auto_desc'], $box6);
														$box6val = $box6[0][0].$box6[0][1];
														echo substr($box6val, 0, 200)."...";
													//echo substr($ecorow['Auto_desc'], 0, 150)."...";
													?></font></div><p align="right" style="margin-left:3px; margin-right:3px; margin-top:5px; margin-bottom:10px" dir="ltr"> 
                                    <u><font face="Verdana" size="1">
                                    <a style="text-decoration: underline" href="<?php echo $ecolink; ?>">More..</a></font></u></td>
                                          </tr>
                                          </table>
                                      </div></td>
                                  </tr>
                                  <tr> 
                                    <td height="19" bgcolor="#F7F7F7" dir="ltr"> 
                                      <hr color="#C0C0C0" size="1" dir="ltr"></td>
                                  </tr>
                                  <tr>
                                            <td height="23" bgcolor="#E2E2E2" style="border-bottom: 1px dotted #0064A0; " dir="ltr"> 
                                              <div align="center" dir="ltr"> 
                                                <p dir="ltr"><b><font face="Verdana" size="1">:: 
                                                  Other Headlines</font></b></div></td>
                                          </tr>
                                  <tr> 
                                    <td height="262" bordercolor="#959564" bgcolor="#F7F7F7" dir="ltr"> 
                                      <table border="0" width="100%" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111" id="table129" height="291" dir="ltr">
                                        <tr> 
                                          <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="25" bgcolor="#E2E2E2" dir="ltr"> 
                                            <p align="left" style="margin: 5px" dir="ltr"><b><font face="Verdana" color="#000080" size="1">:: 
                                              Regulars</font></b></td>
                                        </tr>
                                        <?php
																														
										if($gm!="" && $gy!=""){

										$query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$gm."' AND Auto_year='".$gy."' AND Frontlink='Yes'";
										$res = mysql_query($query);
										$vm = $gm;
										$vy = $gy;
										}
										else{
										$query	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND Frontlink='Yes'";
										$res = mysql_query($query);
										$vm = $m;
										$vy = $y;
										}
										//print_r($getcat);
										
										while($getcat=mysql_fetch_assoc($res)){
										$cname= $getcat['Category'];
										$cquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$cname."'";
										$cres = mysql_query($cquery);
										$crow=mysql_fetch_assoc($cres);
										//print_r($crow);
										$cid=$crow['Vcat_id'];
										$plink=$crow['Page_link'];
										if($plink!=""){
										$vlink = $plink."?mnth=$vm&yr=$vy";	
										}
										else{
										$vlink = "headlines.php?mnth=$vm&yr=$vy&cat=$cid";
										}
										/*if($cid==17){
										$vlink = "autonews.php?mnth=$vm&yr=$vy";
										}
										else if($cid==18){
										$vlink = "billboard.php?mnth=$vm&yr=$vy";
										}
										else if($cid==19){
										$vlink = "businessbriefs.php?mnth=$vm&yr=$vy";
										}
										else if($cid==20){
										$vlink = "gizmos.php?mnth=$vm&yr=$vy";
										}
										else if($cid==21){
										$vlink = "marketwatch.php?mnth=$vm&yr=$vy";
										}
										else{
										$vlink = "headlines.php?mnth=$vm&yr=$vy&cat=$cid";
										}*/
										?>
                                        <tr>
                                          <td style="border-bottom: 1px dotted #0064A0; " height="25" bgcolor="#F7F7F7" dir="ltr"> 
                                            <p style="margin: 5px" dir="ltr"> 
                                              <b>
												<a href="<?php echo $vlink; ?>">
												<font face="Verdana" size="1" color="#0064A0">
												<?php echo $crow['Vcat_name']; ?></font></a></b></td>
                                        </tr>
                                        
                                        <?php
										}
										?>
                                       							
                                        </table></td>
                                  </tr>
                                </table>
                              </div></td>
                          </tr>
                          <tr> 
                            <td valign="top" bgcolor="#F7F7F7" height="19" dir="ltr"> 
                              <hr size="1" width="98%" dir="ltr"></td>
                          </tr>
                          <tr> 
                            <td width="158" valign="top" bgcolor="#F7F7F7" dir="ltr"> 
                              <div align="center" dir="ltr"> 
                                <center dir="ltr">
                                  <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#CCCCCC" width="136" id="AutoNumber9" height="32" dir="ltr">
                                    <tr> 
                                      <td width="130" height="25" bgcolor="#EEEEEE" dir="ltr"> 
                                        <p align="center" dir="ltr"><font color="#000000" face="Verdana" size="2"><strong>OMAN 
                                          - US</strong></font></td>
                                    </tr>
                                    <tr> 
                                      <td width="130" height="101" dir="ltr"> 
                                        <div align="center" dir="ltr"> 
                                          <p dir="ltr"> 
                                            <img border="0" src="php/aboutus/FTA_agreement/ussm.jpg" width="50" height="52" vspace="5"></div>
                                        <div align="center" dir="ltr"> 
                                          <p style="margin-top: 2; margin-bottom: 2" dir="ltr"><b><font face="Verdana" size="1"><strong style="font-weight: 400">Free 
                                            Trade Agreement<br>
                                            (FTA) </strong></font></b></div>
                                        <div align="center" dir="ltr"> 
                                          <p style="margin-top: 2; margin-bottom: 2" dir="ltr"><font color="#008000" face="Verdana" size="1"><u><a href="http://www.oeronline.com/php/aboutus/FTA_awareness_conference.php" style="text-decoration: none">Full 
                                            Details</a></u></font></div></td>
                                    </tr>
                                  </table>
                                </center>
                              </div></td>
                          </tr>
                          <tr> 
                            <td width="158" valign="top" bgcolor="#F7F7F7" dir="ltr"> 
                              <hr size="1" width="98%" dir="ltr"></td>
                          </tr>
                          <tr>
                            <td width="158" valign="top" bgcolor="#F7F7F7" dir="ltr"> 
                              <p align="center">
								<img border="1" src="images/ICT-Eng11-12-130.jpg" width="130" height="184"></td>
                          </tr>
							<tr>
                            <td width="158" valign="top" bgcolor="#F7F7F7" dir="ltr"> 
                                                      <p style="line-height: 15px; margin-top:5px; margin-bottom:5px" dir="ltr" align="center"><big><big><big><big><font face="Verdana, Arial, Helvetica, sans-serif" size="1">
														<a href="ICT_book_emagazine.php">View English eMagazine</a><br>
														</font></big></big></big></big>
														<a href="ICT_book_arabic_emagazine.php">
														<font face="Verdana, Arial, Helvetica, sans-serif" size="1">
														View Arabic </font><big>
														<big><big><big>
														<font face="Verdana, Arial, Helvetica, sans-serif" size="1"> 
                                                        eMagazine</font></big></big></big></big></a><big><big><big><big><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> 
                                                        </font></big></big></big></big></td>
                          </tr>
                          <tr>
                            <td width="158" valign="top" bgcolor="#F7F7F7" dir="ltr"> 
                              <p align="center">
								<a target="_blank" href="images/portofoman-eng-b.jpg">
								<img border="0" src="images/scroll-portofoman-eng.jpg" width="130" height="164" style="border: 0px solid #9D0210; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></a></td>
                          </tr>
							<tr>
                            <td width="158" valign="top" bgcolor="#F7F7F7" dir="ltr"> 
                                                      <p style="line-height: 15px; margin-top:5px; margin-bottom:5px" dir="ltr" align="center"><big><big><big><big><font face="Verdana, Arial, Helvetica, sans-serif" size="1">
														<a target="_blank" href="images/portofoman-eng-b.jpg">View English 
														Book</a><br>
														</font></big></big></big></big>
														<font face="Verdana, Arial, Helvetica, sans-serif" size="1">
														<a target="_blank" href="images/portofoman-ara-b.jpg">View Arabic 
														Book</a></font></td>
                          </tr>
                          </table>
                      </div></td>
                  </tr>
                </table>
              </div></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" height="1" dir="ltr"> <p align="center" dir="ltr"> 
                <script type="text/javascript"><!--

google_ad_client = "pub-2715769857296857";

google_ad_width = 728;

google_ad_height = 15;

google_ad_format = "728x15_0ads_al_s";

google_ad_channel ="8203409880";


google_color_border = "CC3333";

google_color_bg = "FFFFFF";

google_color_link = "000000";

google_color_url = "6666FF";

google_color_text = "000000";

//--></script>
                <script type="text/javascript"

  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">

                </script>
            </td>
          </tr>
          <tr> 
            <td align="center" bgcolor="#E2E2D3" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bordercolor="#BEBE9C" width="781" height="21" dir="ltr"> 
              <p dir="ltr"> </td>
          </tr>
        </table>
    </td>

  </tr>
  <tr>
    <td bgcolor="#FFFFFF" height="1" width="786" dir="ltr">
    <p dir="ltr"></td>
  </tr>
  <tr>
    <td bgcolor="#CC3333" height="17" width="786" dir="ltr">
      <p align="center" dir="ltr"><a href="http://oeronline.com/index.php"><font face="Verdana" size="1" color="#FFFFFF">Home</font></a><font face="Verdana" size="1" color="#FFFFFF">&nbsp;&nbsp; l&nbsp;&nbsp;
      </font><a href="http://oeronline.com/php/aboutus/aboutus.php"><font face="Verdana" size="1" color="#FFFFFF">About
      us</font></a><font face="Verdana" size="1" color="#FFFFFF">&nbsp;&nbsp; l&nbsp;&nbsp; </font><a href="http://oeronline.com/php/marketwatch/marketwatch.php"><font face="Verdana" size="1" color="#FFFFFF">Market Watch</font></a><font face="Verdana" size="1" color="#FFFFFF">&nbsp;&nbsp; l&nbsp;&nbsp;
      </font><a href="http://oeronline.com/php/appointments/appointments.php"><font face="Verdana" size="1" color="#FFFFFF"> Appointments</font></a><font face="Verdana" size="1" color="#FFFFFF">&nbsp;&nbsp; l&nbsp;&nbsp;
      </font><a href="http://oeronline.com/php/advertise/advertise.php"><font face="Verdana" size="1" color="#FFFFFF">Advertise</font></a><font face="Verdana" size="1" color="#FFFFFF">&nbsp;&nbsp; l&nbsp;&nbsp;
      </font><a href="mailto:editor@oeronline.com"><font face="Verdana" size="1" color="#FFFFFF"> Contact us</font></a><font face="Verdana" size="1" color="#FFFFFF">&nbsp;&nbsp; l&nbsp;&nbsp;
      <a href="http://oeronline.com/php/aboutus/careers.php">
		<font color="#FFFFFF">Careers</font></a></font></td>
  </tr>
  <tr>
    <td bgcolor="#E6E6E6" height="" width="786" dir="ltr">
            <p align="justify" style="margin: 10px" dir="ltr"><font face="Verdana" size="1"> 2002 - 2012 United Press and Publishing 
            LLC. All rights reserved. No part of this
              online publication may be reproduced&nbsp; without the prior written
              permission of the publisher United Press and Publishing LLC. The publisher
              does not accept any responsibility for any loss occasioned to any
              person or organisation acting or refraining as a result of
              material on this website. The publisher accepts no responsibility
              for advertising contents contained on this website. </font></td>
  </tr>
  <tr>
    <td bgcolor="#F7F7F7" height="16" width="786" dir="ltr">
            <p align="center" dir="ltr"><font face="Verdana" size="1">Site designed and hosted by 
            <b><a target="_blank" href="http://www.umsinteractive.com/">
            <span style="text-decoration: none">UMS<i>i</i> </span></a></b></font></td>
  </tr>
  </table>
<blockquote>&nbsp;	</blockquote>
</div>