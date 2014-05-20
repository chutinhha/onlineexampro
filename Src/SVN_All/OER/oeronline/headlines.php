<?php
include("includes/common.php");
$m=$_GET['mnth'];
$y=$_GET['yr'];
$cat=$_GET['cat'];
$cquery	= "SELECT Vcat_name FROM `".TB_CATEGORY."` Where Vcat_id=".$cat;
$cres = mysql_query($cquery);
$getcat=mysql_fetch_assoc($cres);
$categ=$getcat['Vcat_name'];
$hquery	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Category='".$cat."' ORDER BY Auto_id DESC";
$hres = mysql_query($hquery);
$gethead=mysql_fetch_assoc($hres);
//print_r($gethead);
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="generator" content="Bluefish 2.2.4" >
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - <?php echo $m; ?> - <?php echo $y; ?> ::</title>
<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" />
<link href="css/scrollstyle_poup.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="js/jquery_slider.js"></script>
 <script type="text/javascript" src="js/jquery.tinycarousel.min.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function($) {
		
		$('#slider1').tinycarousel({ axis: 'x'});
    });

  </script>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">
<table border="0" cellpadding="0" style="width: 780px;" bordercolor="#111111" class="style10" align="center">
  <tr>
    <td width="100%" style="height: 19px">
<?php include("inc/top1.php"); ?>  
<?php include("inc/menu_gen.htm"); ?></td>
  </tr>
  <tr>
    <td width="100%" height="21">
<?php include("home_inc1.php"); ?></td>
  </tr>
  <tr>
    <td width="100%" height="15" valign="middle">
      <div align="center">
        <center>
        <table border="0" width="100%" bgcolor="#FFFCE8" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111">
          <tr>
            <td width="100%" bgcolor="#EFEFE9" colspan="3" align=center height="10">
            <div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
					<tr>
						<td width="18" bgcolor="#FF0000" height="35" style="border-left: 1px solid #FF0000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #FF0000">&nbsp;</td>
						<td height="35" valign="bottom" style="border-left: 1px solid #FF0000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #FF0000">
						<p align="left" style="margin-left: 5px; margin-bottom: 5px"> <a name="top"><span class="headcat">
                    <?php echo $getcat['Vcat_name']; ?></span></a></td>
					</tr>
				</table>
			</div>
			</td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top">

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse" bordercolor="#111111" class="innertable">
	<tr>
						<td>&nbsp;
						</td>
					</tr>
	<tr>
						<td valign="top">
                        <h3 style="color:#C00000;font-size:18px;"><?php echo $gethead['Auto_title']; ?></h3>
						
						<div class="style15">
                        
						<?php echo $gethead['Auto_desc']; ?>
						</div>
				
</td>
					</tr>
	<tr>
		        <td width="100%" valign="top"> 

                    <hr color="#CC3333">
                  <p align="right" style="margin: 3px 10px">
					<font face="Verdana" size="1">
                <a href="#top">Top^</a></font><br>
				</td>
		</tr>
	<tr>
		        <td width="100%" valign="top">&nbsp; 

                    </td>
		</tr>
	</table>

            </td>
            <td  valign=top bgcolor=white><?php include("inc/current_issue_menu_new.php");?>&nbsp;</td>
          </tr>
          
        </table>
	</tr>
  <tr>
    <td width="100%" height="15" valign="middle">
              <?php include("inc/menu1.htm");?>
        <?php include("inc/bottom.htm");?>
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
</body>
</html>
