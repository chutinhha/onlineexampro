<?php
include("includes/common.php");
$m=$_GET['mnth'];
$y=$_GET['yr'];
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="generator" content="Bluefish 2.2.4" >
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - <?php echo $m; ?> - <?php echo $y; ?>  ::</title>
<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<style type="text/css">
.style2 {
	border-collapse: collapse;
}
.style5 {
	font-weight: bold;
	border-style: solid;
	border-width: 0;
	background-color: #343434;
}
.style7 {
	font-weight: bold;
	color: #FFFFFF;
	background-color: #343434;
}
.style9 {
	background-color: #ECE6DF;
}
.style10 {
	font-family: Verdana;
	font-size: 8pt;
	margin: 10px;
}
.style23 {
	font-family: Verdana;
	font-size: xx-small;
}
.style44 {
	margin: 3px 10px;
	color: #FFFFFF;
	font-family: Verdana;
	font-size: medium;
}
</style>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">


<table border="0" cellpadding="0" style="width: 780px;" bordercolor="#111111" class="style2" align="center">
  <tr>
    <td width="100%">
<?php include("inc/top1.php"); ?>  
<?php include("inc/menu_gen.htm");
?></td>
  </tr>
  <tr>
    <td width="100%" height="21">
<?php include("home_inc1.php");?></td>
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
						<p align="left" style="margin-left: 5px; margin-bottom: 5px"> <b>
			<font face="Verdana" style="font-size: 8pt"> 
                      <a name="top">GIZMOS</a></font></b></td>
					</tr>
				</table>
			</div>
			</td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF" style="width: 1%">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top">

<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse" bordercolor="#111111">
	<tr>
						<td colspan="2">&nbsp;
						</td>
					</tr>
					<?php
					  $aquery	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Category='20' ORDER BY Auto_id ASC";
					  $ares = mysql_query($aquery);
					  while($getauto=mysql_fetch_assoc($ares))
					  {
					   ?> 
						<tr>
						<td class="style5" style="height: 45px" colspan="2">
						<p align="justify" class="style44"><?php echo $getauto['Auto_title']; ?></td>
					</tr>
	<tr>
						<td valign="top" class="style9" <?php if($getauto['Auto_img']==""){ echo 'colspan="2"';}?>>
						<div align="justify" class="style10" style="line-height: 14px"><?php echo $getauto['Auto_desc']; ?></div></td>
                        <?php
						if($getauto['Auto_img']!=""){
						?>
						<td valign="top" class="style9" width="35%">
				<img border="0" src="uploads/headlines/<?php echo $getauto['Auto_img']; ?>"></td>
                 <?php } ?>
					</tr>
	<tr>
						<td colspan="2">

                    <hr color="#CC3333">
            			</td>
					</tr>
					<?php } ?>	
					
	<tr>
		        <td width="100%" valign="top" colspan="2"> 
				<p align="right">
					<font face="Verdana" size="1">
                <a href="#top">Top^</a></font><br>
				</td>
		</tr>
	<tr>
		        <td width="100%" valign="top" colspan="2">&nbsp; 
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