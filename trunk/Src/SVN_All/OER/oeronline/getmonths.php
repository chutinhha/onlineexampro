<?php
include("includes/common.php");
	$year = $_POST['year'];
	$mn = $_POST['mn'];
	if($year>2012){
	$mnthquery	= "SELECT * FROM `".TB_HEADLISTS."` Where  Auto_year='".$year."' GROUP BY Auto_mnth ASC";
	$mnthres = mysql_query($mnthquery);
	while($mnthrow=mysql_fetch_assoc($mnthres))
		{
		$rlink = "index.php?month=".$mnthrow['Auto_mnth']."&year=".$mnthrow['Auto_year'];
			echo " <option  value ='".$rlink."'";
			if($mnthrow['Auto_mnth']==$mn) {
				
				echo "selected";
			}
			echo  ">".$mnthrow['Auto_mnth']." ".$mnthrow['Auto_year']."</option> ";
		}
		}
	else{
	if($year==2012){
	echo " <option  value ='http://www.oeronline.com/index_jan_12.php?url=1&mnth=January 2012'>January 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_feb_12.php?url=1&mnth=January 2012'>February 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_mar_12.php?url=1&mnth=January 2012'>March 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_apr_12.php?url=1&mnth=January 2012'>April 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_may_12.php?url=1&mnth=January 2012'>May 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_june_12.php?url=1&mnth=January 2012'>June 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_july_12.php?url=1&mnth=January 2012'>July 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_aug_12.php?url=1&mnth=January 2012'>August 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_sep_12.php?url=1&mnth=January 2012'>September 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_oct_12.php?url=1&mnth=January 2012'>October 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_nov_12.php?url=1&mnth=January 2012'>November 2012</option> ";
	echo " <option  value ='http://www.oeronline.com/index_dec_12.php?url=1&mnth=January 2012'>December 2012</option> ";
	}
	if($year==2011){
	echo " <option  value ='http://www.oeronline.com/index_jan_11.php?url=1&mnth=January 2011'>January 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_feb_11.php?url=1&mnth=February 2011'>February 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_march2011.php?url=1&mnth=March 2011'>March 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_april2011.php?url=1&mnth=April 2011'>April 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_may2011.php?url=1&mnth=May 2011'>May 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_june2011.php?url=1&mnth=June 2011'>June 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_july2011.php?url=1&mnth=July 2011'>July 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_aug2011.php?url=1&mnth=August 2011'>August 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_sep2011.php?url=1&mnth=September 2011'>September 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_oct2011.php?url=1&mnth=October 2011'>October 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_nov2011.php?url=1&mnth=November 2011'>November 2011</option> ";
	echo " <option  value ='http://www.oeronline.com/index_dec2011.php?url=1&mnth=December 2011'>December 2011</option> ";
	}
	if($year==2010){
	echo " <option  value ='http://www.oeronline.com/index_jan_10.php?url=1&mnth=January 2010'>January 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_feb_10.php?url=1&mnth=February 2010'>February 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_mar_10.php?url=1&mnth=March 2010'>March 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_apr_10.php?url=1&mnth=April 2010'>April 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_may_10.php?url=1&mnth=May 2010'>May 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_june_10.php?url=1&mnth=June 2010'>June 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_july_10.php?url=1&mnth=July 2010'>July 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_august_10.php?url=1&mnth=August 2010'>August 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_september_10.php?url=1&mnth=September 2010'>September 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_october_10.php?url=1&mnth=October 2010'>October 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index_november_10.php?url=1&mnth=November 2010'>November 2010</option> ";
	echo " <option  value ='http://www.oeronline.com/index.php'>December 2010</option> ";
	}
	if($year==2009){
	echo " <option  value ='http://www.oeronline.com/index_jan_09.php?url=1&mnth=January 2009'>January 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_feb_09.php?url=1&mnth=February 2009'>February 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_mar_09.php?url=1&mnth=March 2009'>March 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_apr_09.php?url=1&mnth=April 2009'>April 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_may_09.php?url=1&mnth=May 2009'>May 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_june_09.php?url=1&mnth=June 2009'>June 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_july_09.php?url=1&mnth=July 2009'>July 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_august_09.php?url=1&mnth=August 2009'>August 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_september_09.php?url=1&mnth=September 2009'>September 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_october_09.php?url=1&mnth=October 2009'>October 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_november_09.php?url=1&mnth=November 2009'>November 2009</option> ";
	echo " <option  value ='http://www.oeronline.com/index_december_09.php?url=1&mnth=December 2009'>December 2009</option> ";
	}
	if($year==2008){
	echo " <option  value ='http://www.oeronline.com/index_jan.php?url=1&mnth=January 2008'>January 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_feb_08.php?url=1&mnth=February 2008'>February 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_mar_08.php?url=1&mnth=March 2008'>March 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_april.php?url=1&mnth=April 2008'>April 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_may.php?url=1&mnth=May 2008'>May 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_june.php?url=1&mnth=June 2008'>June 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_july2.php?url=1&mnth=July 2008'>July 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_aug_08.php?url=1&mnth=August 2008'>August 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_sept_08.php?url=1&mnth=September 2008'>September 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_oct_08.php?url=1&mnth=October 2008'>October 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_nov_08.php?url=1&mnth=November 2008'>November 2008</option> ";
	echo " <option  value ='http://www.oeronline.com/index_dec_08.php?url=1&mnth=December 2008'>December 2008</option> ";
	}
	if($year==2007){
	echo " <option  value ='http://www.oeronline.com/php/2007_january/cover.php?url=1&mnth=January 2007'>January 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_feb/cover.php?url=1&mnth=February 2007'>February 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_mar/cover.php?url=1&mnth=March 2007'>March 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_apr/cover.php?url=1&mnth=April 2007'>April 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_may/cover.php?url=1&mnth=May 2007'>May 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_june/cover.php?url=1&mnth=June 2007'>June 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_july/cover.php?url=1&mnth=July 2007'>July 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_aug/cover.php?url=1&mnth=August 2007'>August 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_sept/cover.php?url=1&mnth=September 2007'>September 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2007_oct/cover.php?url=1&mnth=October 2007'>October 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/index_nov.php?url=1&mnth=November 2007'>November 2007</option> ";
	echo " <option  value ='http://www.oeronline.com/index_dec.php?url=1&mnth=December 2007'>December 2007</option> ";
	}
	if($year==2006){
	echo " <option  value ='http://www.oeronline.com/php/2006_january/cover.php?url=1&mnth=January 2006'>January 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_february/cover.php?url=1&mnth=February 2006'>February 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_march/cover.php?url=1&mnth=March 2006'>March 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_april/cover.php?url=1&mnth=April 2006'>April 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_may/cover.php?url=1&mnth=May 2006'>May 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_june/cover.php?url=1&mnth=June 2006'>June 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_july/cover.php?url=1&mnth=July 2006'>July 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_aug/cover.php?url=1&mnth=August 2006'>August 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_sept/cover.php?url=1&mnth=September 2006'>September 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_oct/cover.php?url=1&mnth=October 2006'>October 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_nov/cover.php?url=1&mnth=November 2006'>November 2006</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2006_dec/cover.php?url=1&mnth=December 2006'>December 2006</option> ";
	}
	if($year==2005){
	echo " <option  value ='http://www.oeronline.com/php/2005_jan/cover.php?url=1&mnth=January 2005'>January 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_feb/cover.php?url=1&mnth=February 2005'>February 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_march/cover.php?url=1&mnth=March 2005'>March 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_april/cover.php?url=1&mnth=April 2005'>April 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_may/cover.php?url=1&mnth=May 2005'>May 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_june/cover.php?url=1&mnth=June 2005'>June 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_july/cover.php?url=1&mnth=July 2005'>July 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_august/cover.php?url=1&mnth=August 2005'>August 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_september/cover.php?url=1&mnth=September 2005'>September 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_october/cover.php?url=1&mnth=October 2005'>October 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_nov/cover.php?url=1&mnth=November 2005'>November 2005</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2005_dec/cover.php?url=1&mnth=December 2005'>December 2005</option> ";
	}
	if($year==2004){
	echo " <option  value ='http://www.oeronline.com/php/2004_january/cover.php?url=1&mnth=January 2004'>January 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_feb/cover.php?url=1&mnth=February 2004'>February 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_march/cover.php?url=1&mnth=March 2004'>March 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_april/cover.php?url=1&mnth=April 2004'>April 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_may/cover.php?url=1&mnth=May 2004'>May 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_june/cover.php?url=1&mnth=June 2004'>June 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_july/cover.php?url=1&mnth=July 2004'>July 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_aug/cover.php?url=1&mnth=August 2004'>August 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_sept/cover.php?url=1&mnth=September 2004'>September 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_oct/cover.php?url=1&mnth=October 2004'>October 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_nov/cover.php?url=1&mnth=November 2004'>November 2004</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2004_dec/cover.php?url=1&mnth=December 2004'>December 2004</option> ";
	}
	if($year==2003){
	echo " <option  value ='http://www.oeronline.com/php/2003_january/cover.php?url=1&mnth=January 2003'>January 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_february/cover.php?url=1&mnth=February 2003'>February 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_march/cover.php?url=1&mnth=March 2003'>March 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_april/cover.php?url=1&mnth=April 2003'>April 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_may/cover.php?url=1&mnth=May 2003'>May 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_june/cover.php?url=1&mnth=June 2003'>June 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_july/cover.php?url=1&mnth=July 2003'>July 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_august/cover.php?url=1&mnth=August 2003'>August 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_sept/cover.php?url=1&mnth=September 2003'>September 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_oct/cover.php?url=1&mnth=October 2003'>October 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_nov/cover.php?url=1&mnth=November 2003'>November 2003</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2003_dec/cover.php?url=1&mnth=December 2003'>December 2003</option> ";
	}
	if($year==2002){
	echo " <option  value ='http://www.oeronline.com/php/2002_january_February/cover.php?url=1&mnth=January/February'>January/February</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_march/cover.php?url=1&mnth=March 2002'>March 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_april/cover.php?url=1&mnth=April 2002'>April 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_may/cover.php?url=1&mnth=May 2002'>May 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_june/cover.php?url=1&mnth=June 2002'>June 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_july/cover.php?url=1&mnth=July 2002'>July 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_august/cover.php?url=1&mnth=August 2002'>August 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_september/cover.php?url=1&mnth=September 2002'>September 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_october/cover.php?url=1&mnth=October 2002'>October 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_november/cover.php?url=1&mnth=November 2002'>November 2002</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2002_december/cover.php?url=1&mnth=December 2002'>December 2002</option> ";
	}
	if($year==2001){
	echo " <option  value ='http://www.oeronline.com/php/2001_january_February/cover.php?url=1&mnth=January/February'>January/February</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2001_march_april/cover.php?url=1&mnth=March/April'>March/April</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2001_may_june/cover.php?url=1&mnth=May/June'>May/June</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2001_july_august/cover.php?url=1&mnth=July/August'>July/August</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2001_september_october/cover.php?url=1&mnth=September/October'>September/October</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2001_nov_dec/cover.php?url=1&mnth=November/December'>November/December</option> ";
	}
	if($year==2000){
	echo " <option  value ='http://www.oeronline.com/php/2000_march_april/cover.php?url=1&mnth=March/April'>March/April</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2000_september_october/cover.php?url=1&mnth=September/October'>September/October</option> ";
	echo " <option  value ='http://www.oeronline.com/php/2000_nov_dec/cover.php?url=1&mnth=November/December'>November/December</option> ";
	}
	}
	//return $sresult;
	//print_r($mnthrow);
?>	
