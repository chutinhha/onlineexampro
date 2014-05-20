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
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
		
		$( "#headhr hr:last" ).css({ color: "white" });
    });

  </script>
<style type="text/css">
.style2 {
	border-collapse: collapse;
}
.style3 {
	text-align: center;
}
.style4 {
	margin-top: 6px;
	margin-bottom: 6px;
}
.style5 {
	font-weight: bold;
	border-style: solid;
	border-width: 0;
	background-color: #CBB9A7;
}
.style6 {
	color: #FFFFFF;
}
.style7 {
	font-weight: bold;
	color: #FFFFFF;
	background-color: #CB3A25;
}
.style8 {
	background-color: #F5EDE9;
}
.style9 {
	background-color: #ECE6DF;
}
.style10 {
	font-family: Verdana;
	font-size: 8pt;
	margin: 10px;
}
.style11 {
	background-color: #F3F2F1;
}
.style12 {
	font-weight: bold;
	background-color: #9C9FA5;
	color: #5A3825;
}
.style14 {
	color: #FFFFFF;
	font-weight: bold;
	background-color: #A9ADA8;
}
.style16 {
	color: #FFFFFF;
	font-weight: bold;
}
.style17 {
	font-family: Verdana;
	font-size: medium;
	margin: 3px 10px;
}
.style18 {
	background-color: #D2E2E6;
}
.style19 {
	background-color: #EFEFE9;
}
.style20 {
	color: #FFFFFF;
	font-weight: bold;
	background-color: #E31E2B;
}
.style21 {
	background-color: #F9CCCF;
}
.style22 {
	direction: ltr;
}
.style23 {
	font-family: Verdana;
	font-size: 8pt;
}
.style24 {
	font-weight: bold;
	color: #FFFFFF;
	background-color: #A76644;
}
.style25 {
	background-color: #FCEFED;
}
.style26 {
	color: #FFFFFF;
	font-weight: bold;
	background-color: #111623;
}
.style27 {
	background-color: #DCE4FA;
}
.style30 {
	background-color: #DBDAF3;
}
.style32 {
	direction: ltr;
	font-family: Verdana;
	font-size: xx-small;
	margin: 10px;
}
.style33 {
	border-style: solid;
	border-width: 1px;
}
.style36 {
	color: #FFFFFF;
	font-weight: bold;
	background-color: #000000;
}
.style37 {
	text-align: center;
	color: #FFFF00;
}
.style38 {
	background-color: #FFFF75;
}
.style40 {
	font-family: Verdana;
	font-size: xx-small;
	margin: 10px;
	color: #5A3825;
}
.style41 {
	font-family: Verdana;
	font-size: x-small;
	text-align: center;
}
.style42 {
	font-weight: normal;
}
.style43 {
	font-weight: bold;
	border-style: solid;
	border-width: 0;
}
.style44 {
	margin: 3px 10px;
	color: #FFFFFF;
	font-family: Verdana;
	font-size: medium;
}
.style45 {
	margin-left: 6px;
	margin-right: 6px;
}
.rhead0{
 background:#111623;
}
.rhead1{
 background:#2F4E55;
}
.row0{
 background:#AEBAD9;
}
.row1{
 background:#BED7DC;
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
						<p align="left" style="margin-left: 5px; margin-bottom: 5px"> <b><font face="Verdana" style="font-size: 8pt"> 
                      <a name="top">BUSINESS BRIEFS</a></font></b></td>
					</tr>
				</table>
			</div>
			</td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top">

				<table border="0" cellpadding="0" cellspacing="0" width="546">
					<tr>
						<td colspan="2">&nbsp;

                    </td>
					</tr>
					
					 <?php
					  $aquery	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$m."' AND Auto_year='".$y."' AND publish=1 AND Category='19' ORDER BY Auto_id ASC";
					  $ares = mysql_query($aquery);
					  $i = 0;
					  while($getauto=mysql_fetch_assoc($ares))
					  {
					  $i = 1-$i;
					  $class = "row$i";
					  $hclass = "rhead$i";
					   ?>  
					<tr class="<?php echo $hclass ?>">
						<td class="style16" style="height: 45px" colspan="2">
						<p align="left" class="style17">
						<span style="font-size: 13pt"><?php echo $getauto['Auto_title']; ?></span></td>
						</tr>
					<tr class="<?php echo $class ?>">
						<td valign="top" <?php if($getauto['Auto_img']==""){ echo 'colspan="2"';}?>>
						<div align="justify" class="style10" style="line-height: 14px"><?php echo $getauto['Auto_desc']; ?></div></td>
                        <?php
						if($getauto['Auto_img']!=""){
						?>
						<td>
						<img border="0" src="uploads/headlines/<?php echo $getauto['Auto_img']; ?>" ></td>
                        <?php } ?>
						</tr>
					<tr  id="headhr">
						<td colspan="2">

                    <hr color="#CC3333">
            			</td>
					</tr>
					<?php } ?>	
                    
                    
                    
                    
                    <tr>
						<td valign="top" class="style30" colspan="2">
				<div align="center">
					<table cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="width: 100%" class="style33">
						<tr>
							<td bgcolor="#CB3A25" style="height: 35px" class="style43">
							<p align="justify" style="margin: 3px 10px">
							<font face="Verdana" color="#FFFF00" style="font-size: 13pt">
							QUICK LOOKS</font></td>
						</tr>
						<tr>
							<td bgcolor="#FFFFC4">
							<p style="margin: 3px 10px" class="style3"><b>
							<font face="Verdana" size="2"></font></b></td>
						</tr>
                        
                          <?php
					  $qquery	= "SELECT * FROM `".TB_QUICK."` Where Q_month='".$m."' AND Q_year='".$y."' AND publish=1 ORDER BY Q_id ASC";
					  $qres = mysql_query($qquery);
					  while($getquick=mysql_fetch_assoc($qres))
					  {
					   ?>                  
                        <?php 
						if($getquick['Q_title']!=""){
						?>
						<tr>
							<td bgcolor="#FFFFC4">
							<p style="margin: 3px 10px" class="style41"><strong>
							<?php echo $getquick['Q_title']; ?></strong></td>
						</tr>
                        <?php } ?>
						<tr>
							<td bgcolor="#EFEFE9" class="style23" style="padding:10px;text-align:justify;">
							
						<?php echo $getquick['Q_desc']; ?></td>
						</tr>
						<tr>
							<td class="style23">
							<hr color="#808080" style="background-color: #EFEFE9" size="1">
							</td>
						</tr>
                        <?php
					  }
						?>
                        
                        
                        
                        </table>
                        </div>
                        </td>
                        </tr>
                    
                    
                    
                    
                    <tr>
						<td colspan="2">

                    <hr color="#CC3333">
            			</td>
					</tr>

					<tr>
		        <td valign="top" width="100%" colspan="2"> 
                  	<p align="right" style="margin: 3px 10px">
				<font face="Verdana" size="1"> 
				<br>
                    <a href="#top">
                    Top^</a></font><br>
                </td>
		</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					
					</table>

            </td>
            <td  valign=top bgcolor=white><?php include("inc/current_issue_menu_new.php");?>
			&nbsp;</td>
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