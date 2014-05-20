<?php
include("includes/common.php");
	$year = $_POST['year'];
	if($year>2012){
	$mnthquery	= "SELECT * FROM `".TB_CARTOON."` Where  Ctn_year='".$year."' GROUP BY Ctn_month ASC";
	$mnthres = mysql_query($mnthquery);
	echo " <option  value =''>Select month</option> ";
	while($mnthrow=mysql_fetch_assoc($mnthres))
		{
		$rlink = "cartoon.php?month=".$mnthrow['Ctn_month']."&year=".$mnthrow['Ctn_year'];
			echo " <option  value ='".$rlink."' ";
			if($_GET['month']==$mnthrow['Ctn_month']){ echo 'selected'; }
			echo ">".$mnthrow['Ctn_month']." ".$mnthrow['Ctn_year']."</option> ";
		}
		}
	else{
	if($year==2012){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_jan.php'>January 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_feb.php'>February 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_mar.php'>March 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_apr.php'>April 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_may.php'>May 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_june.php'>June 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_july.php'>July 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_aug.php'>August 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_sep.php'>September 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_oct.php'>October 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_nov.php'>November 2012</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2012_dec.php'>December 2012</option> ";
	}
	if($year==2011){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_jan.php'>January 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_feb.php'>February 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_mar.php'>March 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_april.php'>April 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_may.php'>May 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_june.php'>June 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_july.php'>July 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_aug.php'>August 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_sep.php'>September 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_oct.php'>October 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_nov.php'>November 2011</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2011_dec.php'>December 2011</option> ";
	}
	if($year==2010){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_jan.php'>January 2010</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_feb.php'>February 2010</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_apr.php'>April 2010</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_may.php'>May 2010</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_june.php'>June 2010</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_july.php'>July 2010</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_august.php>August 2010</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_september.php'>September 2010</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2010_october.php'>October 2010</option> ";
	}
	if($year==2009){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_jan.php'>January 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_feb.php'>February 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_mar.php'>March 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_apr.php'>April 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_may.php'>May 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_june.php'>June 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_july.php'>July 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_august.php'>August 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_september.php'>September 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_october.php'>October 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_november.php'>November 2009</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2009_december.php'>December 2009</option> ";
	}
	if($year==2008){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_april.php'>April 2008</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_may.php'>May 2008</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_june.php'>June 2008</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_july.php'>July 2008</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_aug.php'>August 2008</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_sept.php'>September 2008</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_oct.php'>October 2008</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_nov.php'>November 2008</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2008_dec.php'>December 2008</option> ";
	}
	if($year==2007){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_jan.php'>January 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_feb.php'>February 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_march.php'>March 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_april.php'>April 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_june.php'>June 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_july.php'>July 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_aug.php'>August 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_sep.php'>September 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_oct.php'>October 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_nov.php'>November 2007</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2007_dec.php'>December 2007</option> ";
	}
	if($year==2006){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_janu.php'>January 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_feb.php'>February 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_march.php'>March 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_april.php'>April 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_may.php'>May 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_june.php'>June 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_july.php'>July 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_augst.php'>August 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_sept.php'>September 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_oct.php'>October 2006</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2006_nov.php'>November 2006</option> ";
	}
	if($year==2005){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_jan.php'>January 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_feb.php'>February 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_april.php'>April 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_may.php'>May 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_june.php'>June 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_july.php'>July 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_august.php'>August 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_september.php'>September 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_october.php'>October 2005</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2005_nov.php'>November 2005</option> ";
	}
	if($year==2004){
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_jan.php'>January 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_feb.php'>February 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_mar.php'>March 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_may.php'>May 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_june.php'>June 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_july.php'>July 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_aug.php'>August 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_sept.php'>September 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_oct.php'>October 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_nov.php'>November 2004</option> ";
	echo " <option  value ='http://oeronline.com/kk-cartoon/2004_dec.php'>December 2004</option> ";
	}
	}
	//return $sresult;
	//print_r($mnthrow);
?>	
