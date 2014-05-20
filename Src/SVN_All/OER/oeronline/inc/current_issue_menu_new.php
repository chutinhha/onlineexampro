<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="generator" content="Bluefish 2.2.4" >
<meta name="ProgId" content="FrontPage.Editor.Document">
<title></title>

<style type="text/css">
.style1 {
	text-decoration: none;
}
.style3 {
	font-weight: bold;
	text-decoration: none;
}
.style4 {
	margin-top: 5px;
	margin-bottom: 5px;
}
</style>
</head>

<body topmargin="0" leftmargin="0">

            <div align="center">

            <center>

            
    <table border="0" cellpadding="6" style="border-collapse: collapse" width="90%" cellspacing="2">
      <tr> 
        <td height="36"> <p style="margin-top: 0; margin-bottom: 0"> </td>
      </tr>
      <tr> 
        <td height="196"> <p align="center"> 
		<b><font face="Verdana" size="1" color="#FF0000">
        <?php
		$publicationquery	= "SELECT * FROM `".TB_PUBLICATIONS."` Where Pub_month='".$_GET['mnth']."' AND Pub_year='".$_GET['yr']."' AND Cat_id='10' AND publish=1";
		$publicationres = mysql_query($publicationquery);
		$publicationrw=mysql_fetch_assoc($publicationres);
		//print_r($publicationrw);
		?>
		<a href="<?php echo $publicationrw['Pub_link_eng']; ?>" target="_blank"><img border="0" src="uploads/publication_uploads/thumb/<?php echo $publicationrw['Pub_img_thumb_eng']; ?>" width="130" height="171"></a><br>
          </font><font face="Verdana" size="1" color="#CC3333"><?php echo $_GET['mnth']; ?> - <?php echo $_GET['yr']; ?></font></b></td>
      </tr>
      <tr> 
        <td bgcolor="#FFF7D7" height="12" style="border-left-width: 1; border-right-width: 1; border-top-width: 1; border-bottom: 1px solid #CC9900">        <?php
	$yrr = $_GET['yr'];
	$mnthh = $_GET['mnth'];
	$mnthhqry	= "SELECT * FROM `".TB_HEADLISTS."` Where  Auto_year='".$yrr."' AND Auto_mnth='".$mnthh."' AND Category='4'";
	$mnthhrs = mysql_query($mnthhqry);
	$mnthhrw=mysql_fetch_assoc($mnthhrs);
	//print_r($mnthhrw);
?>
        <b> 
          <font face="Verdana" size="1"> Cover Story</font></b></td>
      </tr>
      <tr> 
        <td bgcolor="#FFFCF0" height="48"> 
		<h6 class="rightsubhead"><a style="text-decoration: none" href="headlines.php?mnth=<?php echo $_GET['mnth']; ?>&yr=<?php echo $_GET['yr']; ?>&cat=<?php echo $_GET['cat']; ?>">
		<?php echo $mnthhrw['Auto_title'];   ?></a></h6>
        <div class="boxdesc" style="margin-top:-5px;">
        <?php
			preg_match_all("#<p.*?>([^<]+)</p>#", $mnthhrw['Auto_desc'], $cbox1);
			$cbox1val = $cbox1[0][0].$cbox1[0][1];
			echo substr($cbox1val, 0, 100)."...";
		?>
        </div></td>
      </tr>
      <tr> 
        <td bgcolor="#FFF7D7" height="12" style="border-left-width: 1; border-right-width: 1; border-top-width: 1; border-bottom: 1px solid #CC9900">
        <?php
	$byrr = $_GET['yr'];
	$bmnthh = $_GET['mnth'];
	//$bmnthhqry	= "SELECT * FROM `".TB_HEADLISTS."` Where  Auto_year='".$yrr."' AND Auto_mnth='".$mnthh."' AND Category='4'";
	$bmnthhqry	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$bmnthh."' AND Auto_year='".$byrr."' AND publish=1 AND Category='19' GROUP BY Category ASC";
	$bmnthhrs = mysql_query($bmnthhqry);
	$bmnthhrw=mysql_fetch_assoc($bmnthhrs);
	//print_r($bmnthhrw);
?> 
        <b><font size="1" face="Verdana">Business Briefs</font></b></td>
      </tr>
      <tr> 
        <td bgcolor="#FFFCF0" height="48" class=""><div align="left"> 
			<h6 class="rightsubhead">
			<a style="text-decoration: none" href="businessbriefs.php?mnth=<?php echo $_GET['mnth']; ?>&yr=<?php echo $_GET['yr']; ?>"><?php echo $bmnthhrw['Auto_title'];  ?></a>

             </h6>
              <div class="boxdesc" style="margin-top:-5px;">
        <?php
			preg_match_all("#<p.*?>([^<]+)</p>#", $bmnthhrw['Auto_desc'], $bbox1);
			$bbox1val = $bbox1[0][0].$bbox1[0][1];
			echo substr($bbox1val, 0, 100)."...";
		?>
        </div>
</div></td>
      </tr>
      <tr> 
        <td bgcolor="#FFF7D7" height="12" style="border-left-width: 1; border-right-width: 1; border-top-width: 1; border-bottom: 1px solid #CC9900"><b> 
          <font face="Verdana" size="1"> Other Headlines</font></b></td>
      </tr>
      
      <?php
	$oyrr = $_GET['yr'];
	$omnthh = $_GET['mnth'];
	//$bmnthhqry	= "SELECT * FROM `".TB_HEADLISTS."` Where  Auto_year='".$yrr."' AND Auto_mnth='".$mnthh."' AND Category='4'";
	$omnthhqry	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$omnthh."' AND Auto_year='".$oyrr."' AND publish=1 AND Category!='19' AND Category!='4'  AND Category!='17'  AND Category!='18' AND Category!='20' AND Category!='21' AND Auto_title!='&nbsp;' GROUP BY Category ASC";
	$omnthhrs = mysql_query($omnthhqry);
	while($omnthhrw=mysql_fetch_assoc($omnthhrs)){
		//echo $omnthhrw['Category'];
		$cquery	= "SELECT * FROM `".TB_CATEGORY."` Where Vcat_id='".$omnthhrw['Category']."'";
		$cres = mysql_query($cquery);
		$crow=mysql_fetch_assoc($cres);
		$cid=$crow['Vcat_id'];
		$plink=$crow['Page_link'];
		if($plink!=""){
		$vlink = $plink."?mnth=$omnthh&yr=$oyrr";	
		}
		else{
		$vlink = "headlines.php?mnth=$omnthh&yr=$oyrr&cat=$cid";
		}
		?>
        <tr>
        <td bgcolor="#FFFCF0" height="36"> 
        <h6 class="rightsubhead">
		<a href="<?php echo $vlink;  ?>" style="text-decoration: none">
		<?php echo $omnthhrw['Auto_title'];  ?></a>
        </h6>
        <div class="boxdesc seperator" style="margin-top:-5px;font-size:10px;font-weight:normal;">
        <?php
			preg_match_all("#<p.*?>([^<]+)</p>#", $omnthhrw['Auto_desc'], $obox1);
			$obox1val = $obox1[0][0].$obox1[0][1];
			echo substr($obox1val, 0, 100)."...";
			echo '<a href="'.$vlink.'" style="text-decoration: none;float:right;color:#0000EE;">more</a>';
		?>
        </div></td>
      </tr>
        <?php
	}
	//print_r($bmnthhrw);
?>

      
      <tr> 
        <td bgcolor="#FFF7D7" height="12">
		<p align="center"><b> <font face="Verdana" size="1"> Regulars</font></b></td>
      </tr>
      <tr> 
        <td bgcolor="#FFFCF0" height="1"> 
          <?php include("current_issue_regular_new.php");?>
        </td>
      </tr>
      <tr> 
        <td height="19">&nbsp;</td>
      </tr>
    </table>
            </center>
</div>

</body>

</html>