<?php
include("includes/common.php");
$y=$_GET['yr'];
if($y!=""){
$equery	= "SELECT * FROM `".TB_PUBLICATIONS."` Where Pub_year='".$y."' AND Cat_id=7 AND publish=1 ORDER BY Pub_id DESC";
$eres = mysql_query($equery);
}
else{
$y = date("Y");
$equery	= "SELECT * FROM `".TB_PUBLICATIONS."` Where Pub_year='".$y."' AND Cat_id=7 AND publish=1 ORDER BY Pub_id DESC";
$eres = mysql_query($equery);
}
//echo $y;
?>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER- Signature - eMagazine - Archive::</title>

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

<style>
<!--
.style1 {
	text-align: center;
	font-family: Verdana;
	font-size: 11px;
}
.style2 {
	color: #CC3333;
}
.style3 {
	text-decoration: none;
}
.style6 {
	color: #FF0000;
}
.style4 {
	color: #000000;
}
.style7 {
	color: #333333;
}
-->
.yearfont{
color:#000000;
}
.activeyear{
	color:#F00 !important;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
<script>
var yr = "<?php echo $y; ?>";
$(document).ready(function(){
	$("#"+yr).addClass("activeyear");
});
</script>	
</head>
<script language="JavaScript">

<!--



function NewWindow(url) {                       

                var hWnd = window.open(url,"Window","width=700,height=440,resizable=no,scrollbars=yes,left=100,top=25");

                if (hWnd.focus != null) hWnd.focus();

        }



// -->

</script>


<body topmargin="0" leftmargin="0" rightmargin="0">


<div align="left">


<table border="0" width="780" cellpadding="0" style="border-collapse: collapse;margin:0 auto;" bordercolor="#111111">
  <tr>
    <td width="100%">
<? include("inc/top1.php"); ?>  
<? include("inc/menu_gen.htm");
?></td>
  </tr>
  <tr>
    <td width="100%" height="21">
<?include("home_inc1.php");?></td>
  </tr>
  <tr>
    <td width="100%" valign="middle">
      <div align="center">
        <center>
        <table border="0" width="741" bgcolor="#FFFCE8" cellspacing="0" cellpadding="0" style="border-collapse: collapse;" bordercolor="#111111" height="366">
          <tr> 
            <td width="1475" bgcolor="#EFEFE9" align=center height="10"> <div align="left"> 
                <table border="0" style="border-collapse: collapse" width="37%" cellpadding="0">
                  <tr> 
                    <td width="35" bgcolor="#FF0000" height="30" style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bordercolor="#000000">&nbsp;</td>
                    <td width="223" valign="bottom" bordercolor="#FF0000" style="border-bottom-style: solid; border-bottom-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
                      <p align="left" style="margin-left: 5px"> <b><font face="Verdana" size="1"> 
                        SIGNATURE : e-MAGAZINE : Archive</font></b></td>
                  </tr>
                </table>
              </div></td>
          </tr>
          <tr> 
            <td height="336" bgcolor="#FFFFFF"><div align="center"> <center> 
              <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="95%" id="AutoNumber2" height="835">
                <tr>
                      <td width="100%" height="80" valign="top"> 
						<table style="width: 45%" align="center">
							<tr>
								<td style="width: 136px">&nbsp;</td>
								<td style="width: 136px">&nbsp;</td>
								<td style="width: 136px">&nbsp;</td>
								<td style="width: 200px">&nbsp;</td>
								<td style="width: 148px">&nbsp;</td>
							</tr>
							<tr>
                            <?php
	for($i=date('Y'); $i>=2014; $i--) {
	$yArray[]=$i;
	}
	//print_r($yArray);
	foreach($yArray as $key => $value )
	{
	?>
    <td class="style1" style="width: 136px">
								<span class="style6"><strong>
								<a href="signature_emagazine_archive.php?yr=<?php echo $value; ?>" style="text-decoration: none">
								<font  class="yearfont" id="<?php echo $value; ?>"><?php echo $value; ?></font></a></strong></span></td>
                                <?php } ?>
								<td class="style1" style="width: 136px">
								<span class="style6"><strong>
								<a href="signature_emagazine_archive_2013.php" style="text-decoration: none">
								<font  class="yearfont" id="2013">2013</font></a></strong></span></td>
								<td class="style1" style="width: 136px">
								<span class="style6"><strong>
								<a style="text-decoration: none" href="signature_emagazine_archive_2012.php">
								<font  class="yearfont" id="2012">2012</font></a></strong></span></td>
								<td class="style1" style="width: 136px"><strong>
								<span class="style2">
								<span class="style6">
								<a class="style3" href="signature_emagazine_archive_2011.php">
								<font  class="yearfont" id="2011">2011</font></a></span></span></strong></td>
								<td class="style1" style="width: 200px"><strong>
								<span class="style4">
								<span class="style7">
								<a class="style3" href="signature_emagazine_archive_2010.php">
								<font  class="yearfont" id="2010">2010</font></a></span></span></strong></td>
								<td class="style1" style="width: 148px"><strong>
								<span class="style4">
								<span class="style7">
								<a class="style3" href="signature_emagazine_archive_2009.php">
								<font class="yearfont" id="2009">2009</font></a></span></span></strong></td>
							</tr>
						</table>
						<p>
						<br>
&nbsp;</td>
                    </tr>
                <tr>
                  <td width="100%" height="42" valign="top"> <div align="center">
						<p style="margin-left: 5px"><br>
&nbsp;</p>
                  <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="95%" id="AutoNumber3" class="style5">
                    <tr>
                      <td width="100%" height="80" valign="top" style="height: 19px">   
                    <div align="center">
						<table border="0" width="70%" cellspacing="0" cellpadding="0">
                        
                        
                        <?php
						while($wrow = mysql_fetch_assoc($eres)){
						?>
                        
							<tr>
							  <td valign="top"> <p align="center"><b> 
								<font face="Verdana" size="1">Signature - <?php echo $wrow['Pub_month']; ?> <?php echo $wrow['Pub_year']; ?><br>
                                  &nbsp;</font></b></td>
							</tr>
							<tr>
								<td valign="top">
								<p align="center"> 
						<img border="0" src="/uploads/publication_uploads/<?php echo $wrow['Pub_img_big_eng']; ?>" width="300" height="382"></td>
							</tr>
							<tr>
								<td valign="top">
								<p align="center">
									<font face="Verdana" size="1">
									<a target="_blank" href="<?php echo $wrow['Pub_link_eng']; ?>">Open publication</a></font>
									</td>
							</tr>
							<tr>
								<td valign="top">&nbsp;</td>
							</tr>
                            <tr>
								<td valign="top">&nbsp;</td>
							</tr>
                            
                            <?php } ?>
                            <td width="100%" height="80" valign="top" style="height: 19px">   
                    <div align="center">
						<table border="0" width="70%" cellspacing="0" cellpadding="0">
							
							
							
							<tr>
								<td valign="top">&nbsp;</td>
							</tr>
                            
                            <td width="100%" height="80" valign="top" style="height: 19px">   
                		</td>
                    </tr>
                    <tr> 
                      <td width="100%" valign="top">&nbsp;  
                    </td>
                    </tr>
                    </table>
					</div>
                		</tr>
                <tr> 
                  <td width="100%" height="19" valign="top"> 
					&nbsp;<tr> 
                  <td width="100%" height="19" valign="top"> &nbsp;</table>
        </table>
  </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
</div>
   <div style="width:780px;margin:0 auto;">     
<? include("inc/menu1.htm");?>
<? include("inc/bottom.htm");?>
<table>
        <tr>
    <td bgcolor="#F7F7F7" height="16" width="786" dir="ltr">
            <p align="center" dir="ltr"><font face="Verdana" size="1">Site designed and hosted by 
            <b><a target="_blank" href="http://www.umsinteractive.com/">
            <span style="text-decoration: none">UMS<i>i</i> </span></a></b></font></td>
  </tr>
  </table>
        </div>
</body>
</html>