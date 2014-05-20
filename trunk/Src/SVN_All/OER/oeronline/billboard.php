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
<title>:: OER - <?php echo $m; ?> - <?php echo $y; ?> ::</title>
<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<style>
.rhead0{
 background:#663300;
}
.rhead1{
 background:#333300;
}
.row0{
 background:#FFAA55;
}
.row1{
 background:#D2D2A6;
}
</style>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0" >


<table border="0" cellpadding="0" style="width: 780px;" bordercolor="#111111" align="center">
  <tr>
    <td width="100%">
<font face="Verdana" style="font-size: 8pt">
<?php include("inc/top1.php"); ?>  
<?php include("inc/menu_gen.htm");
?></font></td>
  </tr>
  <tr>
    <td width="100%" height="21">
<font face="Verdana" style="font-size: 8pt">
<?php include("home_inc1.php");?></font></td>
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
						<p align="left" style="margin-left: 5px; margin-bottom: 5px"> 
			<font face="Verdana" style="font-size: 8pt; font-weight:700"><a name="top">
			BILLBOARD</a></font></td>
					</tr>
				</table>
			</div>
			</td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		        <td valign="top" width="100%" colspan="2">&nbsp; 
                  </td>
		</tr>
		<?php
					  $aquery	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Category='18' ORDER BY Auto_id ASC";
					  $ares = mysql_query($aquery);
					  $i = 0;
					  while($getauto=mysql_fetch_assoc($ares))
					  {
					  $i = 1-$i;
					  $class = "row$i";
					  $hclass = "rhead$i";
					   ?> 
			<tr class="<?php echo $hclass ?>">
		        <td width="100%" style="height: 45px;" colspan="2"> 
                  <p align="left" style="margin: 3px 10px"> 
					<b><font face="Verdana" size="4" color="#FFFFFF"><?php echo $getauto['Auto_title']; ?></font></b></p>
                </td>
		</tr>
	<tr class="<?php echo $class ?>">
		        <td valign="top" width="100%" <?php if($getauto['Auto_img']==""){ echo 'colspan="2"';}?>> 
				<div align="justify" style="line-height: 14px; margin: 10px">
				<font face="Verdana" size="1"><?php echo $getauto['Auto_desc']; ?></font></div></td>
                <?php
						if($getauto['Auto_img']!=""){
						?>
		        <td valign="top" width="50%"> 
				<img border="0" src="uploads/headlines/<?php echo $getauto['Auto_img']; ?>"></td>
                <?php } ?>
		</tr>
	<tr>
		        <td valign="top" width="100%" colspan="2"> 

                    <hr color="#CC3333">
                </td>
		</tr>
		
		<?php } ?>	
		
	<tr>
		        <td valign="top" width="100%" colspan="2"> 
                  	<p align="right" style="margin: 3px 10px">
				<font face="Verdana" size="1"> 
				<br>
                    <a href="#top">
                    Top^</a></font><br>
                </td>
		</tr>
	</table>

            </td>
            <td  valign=top bgcolor=white>
			<font face="Verdana" style="font-size: 8pt"><?php include("inc/current_issue_menu_new.php");?>&nbsp;</font></td>
          </tr>
          
        </table>
	</tr>
  <tr>
    <td width="100%" height="15" valign="middle">
              <font face="Verdana" style="font-size: 8pt">
              <?php include("inc/menu1.htm");?>
        <?php include("inc/bottom.htm");?>
</font>
</table>
        <font face="Verdana" style="font-size: 8pt">
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
</font>
</body>
</html>