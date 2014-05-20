<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table4">
            <tr>
              <td valign="top" bgcolor="#CCCCCC" height="16">
              <p align="center" style="margin-top: 4; margin-bottom: 4">
            <b><font face="Verdana" size="1">Archives</font></b></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#F7F7F7" width="100%" height="10">
            </td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#F7F7F7" width="100%" height="20">
              <form name="doublecombo">
<table border="0" cellpadding="0" style="border-collapse: collapse" id="table5" height="22">
  <tr>
    <td height="38" align="center" width="11">
    <p align="left"></td>
    <td height="28" align="center" valign="top">
    <p align="left">
	<?php
	$yearArray = array(2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000);
	?>
	<select name="example" size="1" onChange="redirect(this.options.selectedIndex)" style="color: #000000; font-family: Verdana; font-size: 8pt" id="selectedyear">
	<?php 
	foreach($yearArray as $key => $value )
	{	echo '<option ';
			if($_REQUEST['url'] == $key )
			echo 'selected';
		echo '>'.$value.'</option>';
	}
	?>
<!-- <option>2013</option>
<option>2013</option>
<option>2012</option>
<option>2011</option>
<option>2010</option>
<option>2009</option>
<option>2008</option>
<option>2007</option>
<option>2006</option>
<option>2005</option>
<option>2004</option>
<option>2003</option>
<option>2002</option>
<option>2001</option>
<option>2000</option> -->
</select></td>
    </tr>
  <tr>
    <td height="38" align="center" width="11">

<p align="left"></td>
    <td height="38" align="center">

<div style="float:left;"><select name="stage2" size="1" style="font-family: Verdana; font-size: 8pt;float:left;display:block;" id="month">
<option value="http://www.oeronline.com/index.php">Feburary 2013</option>

</select></div> <div style="float:left;padding-left:5px;"><input type="button" name="test" value="Go!"

onClick="go()" style="font-family: Verdana; font-size: 8pt;float:left;display:block;"></div></td>
  </tr>
  </table>
 

<script id="archivebox" type="text/javascript"> 

<!--
/*
Double Combo Script Credit
By Website Abstraction (www.wsabstract.com)
Over 200+ free JavaScripts here!
*/
var getmonth = "<?php echo $_REQUEST['mnth']; ?>";
var groups=document.doublecombo.example.options.length
var group=new Array(groups)
for (i=0; i<groups; i++)
group[i]=new Array()
group[0][0]=new Option("January 2013","http://www.oeronline.com/index_jan_13.php")
group[0][1]=new Option("February 2013","http://www.oeronline.com/index_feb13.php")


group[1][0]=new Option("January 2012","http://www.oeronline.com/index_jan_12.php")
group[1][1]=new Option("February 2012","http://www.oeronline.com/index_feb_12.php")
group[1][2]=new Option("March 2012","http://www.oeronline.com/index_mar_12.php")
group[1][3]=new Option("April 2012","http://www.oeronline.com/index_apr_12.php")
group[1][4]=new Option("May 2012","http://www.oeronline.com/index_may_12.php")
group[1][5]=new Option("June 2012","http://www.oeronline.com/index_june_12.php")
group[1][6]=new Option("July 2012","http://www.oeronline.com/index_july_12.php")
group[1][7]=new Option("August 2012","http://www.oeronline.com/index_aug_12.php")
group[1][8]=new Option("September 2012","http://www.oeronline.com/index_sep_12.php")
group[1][9]=new Option("October 2012","http://www.oeronline.com/index_oct_12.php")
group[1][10]=new Option("November 2012","http://www.oeronline.com/index_nov_12.php")
group[1][11]=new Option("December 2012","http://www.oeronline.com/index_dec_12.php")

group[2][0]=new Option("January 2011","http://www.oeronline.com/index_jan_11.php")
group[2][1]=new Option("February 2011","http://www.oeronline.com/index_feb_11.php")
group[2][2]=new Option("March 2011","http://www.oeronline.com/index_march2011.php")
group[2][3]=new Option("April 2011","http://www.oeronline.com/index_april2011.php")
group[2][4]=new Option("May 2011","http://www.oeronline.com/index_may2011.php")
group[2][5]=new Option("June 2011","http://www.oeronline.com/index_june2011.php")
group[2][6]=new Option("July 2011","http://www.oeronline.com/index_july2011.php")
group[2][7]=new Option("August 2011","http://www.oeronline.com/index_aug2011.php")
group[2][8]=new Option("September 2011","http://www.oeronline.com/index_sep2011.php")
group[2][9]=new Option("October 2011","http://www.oeronline.com/index_oct2011.php")
group[2][10]=new Option("November 2011","http://www.oeronline.com/index_nov2011.php")
group[2][11]=new Option("December 2011","http://www.oeronline.com/index_dec2011.php")

group[3][0]=new Option("January 2010","http://www.oeronline.com/index_jan_10.php")
group[3][1]=new Option("February 2010","http://www.oeronline.com/index_feb_10.php")
group[3][2]=new Option("March 2010","http://www.oeronline.com/index_mar_10.php")
group[3][3]=new Option("April 2010","http://www.oeronline.com/index_apr_10.php")
group[3][4]=new Option("May 2010","http://www.oeronline.com/index_may_10.php")
group[3][5]=new Option("June 2010","http://www.oeronline.com/index_june_10.php")
group[3][6]=new Option("July 2010","http://www.oeronline.com/index_july_10.php")
group[3][7]=new Option("August 2010","http://www.oeronline.com/index_august_10.php")
group[3][8]=new Option("September 2010","http://www.oeronline.com/index_september_10.php")
group[3][9]=new Option("October 2010","http://www.oeronline.com/index_october_10.php")
group[3][10]=new Option("November 2010","http://www.oeronline.com/index_november_10.php")
group[3][11]=new Option("December 2010","http://www.oeronline.com/index.php")

group[4][0]=new Option("January 2009","http://www.oeronline.com/index_jan_09.php")
group[4][1]=new Option("February 2009","http://www.oeronline.com/index_feb_09.php")
group[4][2]=new Option("March 2009","http://www.oeronline.com/index_mar_09.php")
group[4][3]=new Option("April 2009","http://www.oeronline.com/index_apr_09.php")
group[4][4]=new Option("May 2009","http://www.oeronline.com/index_may_09.php")
group[4][5]=new Option("June 2009","http://www.oeronline.com/index_june_09.php")
group[4][6]=new Option("July 2009","http://www.oeronline.com/index_july_09.php")
group[4][7]=new Option("August 2009","http://www.oeronline.com/index_august_09.php")
group[4][8]=new Option("September 2009","http://www.oeronline.com/index_september_09.php")
group[4][9]=new Option("October 2009","http://www.oeronline.com/index_october_09.php")
group[4][10]=new Option("November 2009","http://www.oeronline.com/index_november_09.php")
group[4][11]=new Option("December 2009","http://www.oeronline.com/index_december_09.php")

group[5][0]=new Option("January 2008","http://www.oeronline.com/index_jan.php")
group[5][1]=new Option("February 2008","http://www.oeronline.com/index_feb_08.php")
group[5][2]=new Option("March 2008","http://www.oeronline.com/index_mar_08.php")
group[5][3]=new Option("April 2008","http://www.oeronline.com/index_april.php")
group[5][4]=new Option("May 2008","http://www.oeronline.com/index_may.php")
group[5][5]=new Option("June 2008","http://www.oeronline.com/index_june.php")
group[5][6]=new Option("July 2008","http://www.oeronline.com/index_july2.php")
group[5][7]=new Option("August 2008","http://www.oeronline.com/index_aug_08.php")
group[5][8]=new Option("September 2008","http://www.oeronline.com/index_sept_08.php")
group[5][9]=new Option("October 2008","http://www.oeronline.com/index_oct_08.php")
group[5][10]=new Option("November 2008","http://www.oeronline.com/index_nov_08.php")
group[5][11]=new Option("December 2008","http://www.oeronline.com/index_dec_08.php")

group[6][0]=new Option("January 2007","http://www.oeronline.com/php/2007_january/cover.php")
group[6][1]=new Option("February 2007","http://www.oeronline.com/php/2007_feb/cover.php")
group[6][2]=new Option("March 2007","http://www.oeronline.com/php/2007_mar/cover.php")
group[6][3]=new Option("April 2007","http://www.oeronline.com/php/2007_apr/cover.php")
group[6][4]=new Option("May 2007","http://www.oeronline.com/php/2007_may/cover.php")
group[6][5]=new Option("June 2007","http://www.oeronline.com/php/2007_june/cover.php")
group[6][6]=new Option("July 2007","http://www.oeronline.com/php/2007_july/cover.php")
group[6][7]=new Option("August 2007","http://www.oeronline.com/php/2007_aug/cover.php")
group[6][8]=new Option("September 2007","http://www.oeronline.com/php/2007_sept/cover.php")
group[6][9]=new Option("October 2007","http://www.oeronline.com/php/2007_oct/cover.php")
group[6][10]=new Option("November 2007","http://www.oeronline.com/index_nov.php")
group[6][11]=new Option("December 2007","http://www.oeronline.com/index_dec.php")

group[7][0]=new Option("January 2006","http://www.oeronline.com/php/2006_january/cover.php")
group[7][1]=new Option("February 2006","http://www.oeronline.com/php/2006_february/cover.php")
group[7][2]=new Option("March 2006","http://www.oeronline.com/php/2006_march/cover.php")
group[7][3]=new Option("April 2006","http://www.oeronline.com/php/2006_april/cover.php")
group[7][4]=new Option("May 2006","http://www.oeronline.com/php/2006_may/cover.php")
group[7][5]=new Option("June 2006","http://www.oeronline.com/php/2006_june/cover.php")
group[7][6]=new Option("July 2006","http://www.oeronline.com/php/2006_july/cover.php")
group[7][7]=new Option("August 2006","http://www.oeronline.com/php/2006_aug/cover.php")
group[7][8]=new Option("September 2006","http://www.oeronline.com/php/2006_sept/cover.php")
group[7][9]=new Option("October 2006","http://www.oeronline.com/php/2006_oct/cover.php")
group[7][10]=new Option("November 2006","http://www.oeronline.com/php/2006_nov/cover.php")
group[7][11]=new Option("December 2006","http://www.oeronline.com/php/2006_dec/cover.php")

group[8][0]=new Option("January 2005","http://www.oeronline.com/php/2005_jan/cover.php")
group[8][1]=new Option("February 2005","http://www.oeronline.com/php/2005_feb/cover.php")
group[8][2]=new Option("March 2005","http://www.oeronline.com/php/2005_march/cover.php")
group[8][3]=new Option("April 2005","http://www.oeronline.com/php/2005_april/cover.php")
group[8][4]=new Option("May 2005","http://www.oeronline.com/php/2005_may/cover.php")
group[8][5]=new Option("June 2005","http://www.oeronline.com/php/2005_june/cover.php")
group[8][6]=new Option("July 2005","http://www.oeronline.com/php/2005_july/cover.php")
group[8][7]=new Option("August 2005","http://www.oeronline.com/php/2005_august/cover.php")
group[8][8]=new Option("September 2005","http://www.oeronline.com/php/2005_september/cover.php")
group[8][9]=new Option("October 2005","http://www.oeronline.com/php/2005_october/cover.php")
group[8][10]=new Option("November 2005","http://www.oeronline.com/php/2005_nov/cover.php")
group[8][11]=new Option("December 2005","http://www.oeronline.com/php/2005_dec/cover.php")

group[9][0]=new Option("January 2004","http://www.oeronline.com/php/2004_january/cover.php")
group[9][1]=new Option("February 2004","http://www.oeronline.com/php/2004_feb/cover.php")
group[9][2]=new Option("March 2004","http://www.oeronline.com/php/2004_march/cover.php")
group[9][3]=new Option("April 2004","http://www.oeronline.com/php/2004_april/cover.php")
group[9][4]=new Option("May 2004","http://www.oeronline.com/php/2004_may/cover.php")
group[9][5]=new Option("June 2004","http://www.oeronline.com/php/2004_june/cover.php")
group[9][6]=new Option("July 2004","http://www.oeronline.com/php/2004_july/cover.php")
group[9][7]=new Option("August 2004","http://www.oeronline.com/php/2004_aug/cover.php")
group[9][8]=new Option("September 2004","http://www.oeronline.com/php/2004_sept/cover.php")
group[9][9]=new Option("October 2004","http://www.oeronline.com/php/2004_oct/cover.php")
group[9][10]=new Option("November 2004","http://www.oeronline.com/php/2004_nov/cover.php")
group[9][11]=new Option("December 2004","http://www.oeronline.com/php/2004_dec/cover.php")

group[10][0]=new Option("January 2003","http://www.oeronline.com/php/2003_january/cover.php")
group[10][1]=new Option("February 2003","http://www.oeronline.com/php/2003_february/cover.php")
group[10][2]=new Option("March 2003","http://www.oeronline.com/php/2003_march/cover.php")
group[10][3]=new Option("April 2003","http://www.oeronline.com/php/2003_april/cover.php")
group[10][4]=new Option("May 2003","http://www.oeronline.com/php/2003_may/cover.php")
group[10][5]=new Option("June 2003","http://www.oeronline.com/php/2003_june/cover.php")
group[10][6]=new Option("July 2003","http://www.oeronline.com/php/2003_july/cover.php")
group[10][7]=new Option("August 2003","http://www.oeronline.com/php/2003_august/cover.php")
group[10][8]=new Option("September 2003","http://www.oeronline.com/php/2003_sept/cover.php")
group[10][9]=new Option("October 2003","http://www.oeronline.com/php/2003_oct/cover.php")
group[10][10]=new Option("November 2003","http://www.oeronline.com/php/2003_nov/cover.php")
group[10][11]=new Option("December 2003","http://www.oeronline.com/php/2003_dec/cover.php")

group[11][0]=new Option("January/February","http://www.oeronline.com/php/2002_january_February/cover.php")
group[11][1]=new Option("March","http://www.oeronline.com/php/2002_march/cover.php")
group[11][2]=new Option("April","http://www.oeronline.com/php/2002_april/cover.php")
group[11][3]=new Option("May","http://www.oeronline.com/php/2002_may/cover.php")
group[11][4]=new Option("June","http://www.oeronline.com/php/2002_june/cover.php")
group[11][5]=new Option("July","http://www.oeronline.com/php/2002_july/cover.php")
group[11][6]=new Option("August","http://www.oeronline.com/php/2002_august/cover.php")
group[11][7]=new Option("September","http://www.oeronline.com/php/2002_september/cover.php")
group[11][8]=new Option("October","http://www.oeronline.com/php/2002_october/cover.php")
group[11][9]=new Option("November","http://www.oeronline.com/php/2002_november/cover.php")
group[11][10]=new Option("December","http://www.oeronline.com/php/2002_december/cover.php")

group[12][0]=new Option("January/February","http://www.oeronline.com/php/2001_january_February/cover.php")
group[12][1]=new Option("March/April","http://www.oeronline.com/php/2001_march_april/cover.php")
group[12][2]=new Option("May/June","http://www.oeronline.com/php/2001_may_june/cover.php")
group[12][3]=new Option("July/August","http://www.oeronline.com/php/2001_july_august/cover.php")
group[12][4]=new Option("September/October","http://www.oeronline.com/php/2001_september_october/cover.php")
group[12][5]=new Option("November/December","http://www.oeronline.com/php/2001_nov_dec/cover.php")

group[13][0]=new Option("March/April","http://www.oeronline.com/php/2000_march_april/cover.php")
group[13][1]=new Option("September/October","http://www.oeronline.com/php/2000_september_october/cover.php")
group[13][2]=new Option("November/December","http://www.oeronline.com/php/2000_nov_dec/cover.php")



function redirect(x){
var temp=document.doublecombo.stage2;
for (m=temp.options.length-1;m>0;m--);

temp.options[m]=null
for (i=0;i<group[x].length;i++){
temp.options[i]=new Option(group[x][i].text,group[x][i].value)
if(group[x][i].text == getmonth)
temp.options[i].selected=true;

}
//temp.options[0].selected=true
}

function go(){
	var temp=document.doublecombo.stage2;
	var selObj = document.getElementById('selectedyear');
	var selIndex  = selObj.selectedIndex;
	var year = selIndex;
	
	var selObjmnth = document.getElementById('month');
	var selmnth = selObjmnth.selectedIndex;
	var mnth = selObjmnth.options[selmnth].text;
location=temp.options[temp.selectedIndex].value+"?url="+year+"&mnth="+mnth;

}
//-->
</script>
 <?php if(isset($_REQUEST['url']))
{
 echo '<script type="text/javascript">
window.onload=redirect('.$_REQUEST['url'].');
</script>';
}
?>
</form>
            </td>
            </tr>
          </table>