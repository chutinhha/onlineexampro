<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="generator" content="Bluefish 2.2.4" >
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="keywords" content="oer, Magazine, oeronline">
<script type="text/javascript" src="js/ga.js"></script>
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
<title>Oer</title>

</head>
<body topmargin="0" leftmargin="0">
<table border="0" width="780" height="80" cellspacing="0" cellpadding="0" style="margin-left:auto;margin-right:auto;">
  <tr>
    <td width="780" bgcolor="#CCCCCC" height="80" valign="top">
      <table border="0" width="100%"  height="80" cellspacing="0" cellpadding="0">
        <tr>
          <td width="163" valign="bottom" bgcolor="#F81922" height="19">&nbsp;
          </td>
          <td width="7" valign="bottom" bgcolor="#C9CDD1" height="19">&nbsp;
          </td>
          <td valign="top" rowspan="2">
            <table border="0" width="609" cellspacing="0" cellpadding="0" height="119">
              <tr>
                <td width="609" height="68">
  <table border="0" bgcolor="#D9D0E6" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="38">
    <tr>
      <td width="100%" bgcolor="#D9D0E6" height="38">

<iframe id="Ticker" frameBorder="0" width="100%" scrolling="no" height="39" src="http://www.msm.gov.om/pages/tickerframe.aspx" name="I1" align="left">
        </iframe></td>
    </tr>
  </table>
      <table border="0" width="100%" cellspacing="0" cellpadding="0" height="68">
        <tr>
          <td width="469">
            <p align="center">
        <center>
<?php
$fcontents = join ('', file ('http://www.oeronline.com/inc/banner_ads.txt'));
$s_con = split("~",$fcontents);
session_start();
if(isset($_SESSION['banner']))
{
    if($_SESSION['banner'] >= count($s_con) - 1)
    {
        $_SESSION['banner'] = 0;
    }
 else {
     $_SESSION['banner'] = $_SESSION['banner'] + 1;    
 }
}
 else {
    $_SESSION['banner'] = 0;
}
$banner_no = $_SESSION['banner'];
echo $s_con[$banner_no];
?>
</center>

</td>
          <td width="123" height="68">
            <p align="center">
                <a href="http://www.oeronline.com/php/contactus/subscribe.php">
                    <img border="0" src="http://www.oeronline.com/images/banner_sub_oer.jpg" width="110" height="58">
                </a>
          </td>
        </tr>
      </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td width="170" valign="bottom" bgcolor="#F81922" colspan="2">
          <img border="0" src="http://www.oeronline.com/images/inc_im7.jpg"></td>
        </tr>
      </table>