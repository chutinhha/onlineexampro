<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="http://oeronline.com/js/jquery.doubleSelect.js"></script>

<script type="text/JavaScript">
$(document).ready(function()
{

var selectoptions = {
"2013": {
"key" : 10,
"defaultvalue" : 'http://www.oeronline.com/index_jan_13.php',
"values" : {
"January 2013": 'http://www.oeronline.com/index_jan_13.php',
"February 2013": 'http://www.oeronline.com/index_feb13.php'
}
},
"2012": {
"key" : 20,
"defaultvalue" : 'http://www.oeronline.com/index_jan_12.php',
"values" : {
"January 2012": 'http://www.oeronline.com/index_jan_12.php',
"February 2012": 'http://www.oeronline.com/index_feb_12.php',
"March 2012":'http://www.oeronline.com/index_mar_12.php',
"April 2012":'http://www.oeronline.com/index_apr_12.php',
"May 2012":'http://www.oeronline.com/index_may_12.php',
"June 2012":'http://www.oeronline.com/index_june_12.php',
"July 2012":'http://www.oeronline.com/index_july_12.php',
"August 2012":'http://www.oeronline.com/index_aug_12.php',
"September 2012":'http://www.oeronline.com/index_sep_12.php',
"October 2012":'http://www.oeronline.com/index_oct_12.php',
"November 2012":'http://www.oeronline.com/index_nov_12.php',
"December 2012":'http://www.oeronline.com/index_dec_12.php'
}
},
"2011": {
"key" : 30,
"defaultvalue" : 'http://www.oeronline.com/index_jan_11.php',
"values" : {
"January 2011": 'http://www.oeronline.com/index_jan_11.php',
"February 2011": 'http://www.oeronline.com/index_feb_11.php',
"March 2011":'http://www.oeronline.com/index_march2011.php',
"April 2011":'http://www.oeronline.com/index_april2011.php',
"May 2011":'http://www.oeronline.com/index_may2011.php',
"June 2011":'http://www.oeronline.com/index_june2011.php',
"July 2011":'http://www.oeronline.com/index_july2011.php',
"August 2011":'http://www.oeronline.com/index_aug2011.php',
"September 2011":'http://www.oeronline.com/index_sep_11.php',
"October 2011":'http://www.oeronline.com/index_oct_11.php',
"November 2011":'http://www.oeronline.com/index_nov_11.php',
"December 2011":'http://www.oeronline.com/index_dec_11.php'
}
},
"2010": {
"key" : 40,
"defaultvalue" : 'http://www.oeronline.com/index_jan_10.php',
"values" : {
"January 2010": 'http://www.oeronline.com/index_jan_10.php',
"February 2010": 'http://www.oeronline.com/index_feb_10.php',
"March 2010":'http://www.oeronline.com/index_mar_10.php',
"April 2010":'http://www.oeronline.com/index_apr_10.php',
"May 2010":'http://www.oeronline.com/index_may_10.php',
"June 2010":'http://www.oeronline.com/index_june_10.php',
"July 2010":'http://www.oeronline.com/index_july_10.php',
"August 2010":'http://www.oeronline.com/index_august_10.php',
"September 2010":'http://www.oeronline.com/index_september_10.php',
"October 2010":'http://www.oeronline.com/index_october_10.php',
"November 2010":'http://www.oeronline.com/index_november_10.php',
"December 2010":'http://www.oeronline.com/index.php'
}
},
"2009": {
"key" : 50,
"defaultvalue" : 'http://www.oeronline.com/index_jan_09.php',
"values" : {
"January 2009": 'http://www.oeronline.com/index_jan_09.php',
"February 2009": 'http://www.oeronline.com/index_feb_09.php',
"March 2009":'http://www.oeronline.com/index_mar_09.php',
"April 2009":'http://www.oeronline.com/index_apr_09.php',
"May 2009":'http://www.oeronline.com/index_may_09.php',
"June 2009":'http://www.oeronline.com/index_june_09.php',
"July 2009":'http://www.oeronline.com/index_july_09.php',
"August 2009":'http://www.oeronline.com/index_august_09.php',
"September 2009":'http://www.oeronline.com/index_september_09.php',
"October 2009":'http://www.oeronline.com/index_october_09.php',
"November 2009":'http://www.oeronline.com/index_november_09.php',
"December 2009":'http://www.oeronline.com/index_december_09.php'
}
},
"2008": {
"key" : 60,
"defaultvalue" : 'http://www.oeronline.com/index_jan.php',
"values" : {
"January 2008": 'http://www.oeronline.com/index_jan.php',
"February 2008": 'http://www.oeronline.com/index_feb_08.php',
"March 2008":'http://www.oeronline.com/index_mar_08.php',
"April 2008":'http://www.oeronline.com/index_april.php',
"May 2008":'http://www.oeronline.com/index_may.php',
"June 2008":'http://www.oeronline.com/index_june.php',
"July 2008":'http://www.oeronline.com/index_july2.php',
"August 2008":'http://www.oeronline.com/index_aug_08.php',
"September 2008":'http://www.oeronline.com/index_sept_08.php',
"October 2008":'http://www.oeronline.com/index_oct_08.php',
"November 2008":'http://www.oeronline.com/index_nov_08.php',
"December 2008":'http://www.oeronline.com/index_dec_08.php'
}
},
"2007": {
"key" : 70,
"defaultvalue" : 'http://www.oeronline.com/php/2007_january/cover.php',
"values" : {
"January 2007": 'http://www.oeronline.com/php/2007_january/cover.php',
"February 2007": 'http://www.oeronline.com/php/2007_feb/cover.php',
"March 2007":'http://www.oeronline.com/php/2007_mar/cover.php',
"April 2007":'http://www.oeronline.com/php/2007_apr/cover.php',
"May 2007":'http://www.oeronline.com/php/2007_may/cover.php',
"June 2007":'http://www.oeronline.com/php/2007_june/cover.php',
"July 2007":'http://www.oeronline.com/php/2007_july/cover.php',
"August 2007":'http://www.oeronline.com/php/2007_aug/cover.php',
"September 2007":'http://www.oeronline.com/php/2007_sept/cover.php',
"October 2007":'http://www.oeronline.com/php/2007_oct/cover.php',
"November 2007":'http://www.oeronline.com/index_nov.php',
"December 2007":'http://www.oeronline.com/index_dec.php'
}
},
"2006": {
"key" : 80,
"defaultvalue" : 'http://www.oeronline.com/php/2006_january/cover.php',
"values" : {
"January 2006": 'http://www.oeronline.com/php/2006_january/cover.php',
"February 2006": 'http://www.oeronline.com/php/2006_feb/cover.php',
"March 2006":'http://www.oeronline.com/php/2006_mar/cover.php',
"April 2006":'http://www.oeronline.com/php/2006_apr/cover.php',
"May 2006":'http://www.oeronline.com/php/2006_may/cover.php',
"June 2006":'http://www.oeronline.com/php/2006_june/cover.php',
"July 2006":'http://www.oeronline.com/php/2006_july/cover.php',
"August 2006":'http://www.oeronline.com/php/2006_aug/cover.php',
"September 2006":'http://www.oeronline.com/php/2006_sept/cover.php',
"October 2006":'http://www.oeronline.com/php/2006_oct/cover.php',
"November 2006":'http://www.oeronline.com/php/2006_nov/cover.php',
"December 2006":'http://www.oeronline.com/php/2006_dec/cover.php'
}
},
"2005": {
"key" : 90,
"defaultvalue" : 'http://www.oeronline.com/php/2005_jan/cover.php',
"values" : {
"January 2005": 'http://www.oeronline.com/php/2005_jan/cover.php',
"February 2005": 'http://www.oeronline.com/php/2005_feb/cover.php',
"March 2005":'http://www.oeronline.com/php/2005_march/cover.php',
"April 2005":'http://www.oeronline.com/php/2005_april/cover.php',
"May 2005":'http://www.oeronline.com/php/2005_may/cover.php',
"June 2005":'http://www.oeronline.com/php/2005_june/cover.php',
"July 2005":'http://www.oeronline.com/php/2005_july/cover.php',
"August 2005":'http://www.oeronline.com/php/2005_august/cover.php',
"September 2005":'http://www.oeronline.com/php/2005_september/cover.php',
"October 2005":'http://www.oeronline.com/php/2005_october/cover.php',
"November 2005":'http://www.oeronline.com/php/2005_nov/cover.php',
"December 2005":'http://www.oeronline.com/php/2005_dec/cover.php'
}
},
"2004": {
"key" : 100,
"defaultvalue" : 'http://www.oeronline.com/php/2004_january/cover.php',
"values" : {
"January 2004": 'http://www.oeronline.com/php/2004_january/cover.php',
"February 2004": 'http://www.oeronline.com/php/2004_feb/cover.php',
"March 2004":'http://www.oeronline.com/php/2004_march/cover.php',
"April 2004":'http://www.oeronline.com/php/2004_april/cover.php',
"May 2004":'http://www.oeronline.com/php/2004_may/cover.php',
"June 2004":'http://www.oeronline.com/php/2004_june/cover.php',
"July 2004":'http://www.oeronline.com/php/2004_july/cover.php',
"August 2004":'http://www.oeronline.com/php/2004_aug/cover.php',
"September 2004":'http://www.oeronline.com/php/2004_sept/cover.php',
"October 2004":'http://www.oeronline.com/php/2004_oct/cover.php',
"November 2004":'http://www.oeronline.com/php/2004_nov/cover.php',
"December 2004":'http://www.oeronline.com/php/2004_dec/cover.php'
}
},
"2003": {
"key" : 110,
"defaultvalue" : 'http://www.oeronline.com/php/2003_january/cover.php',
"values" : {
"January 2003": 'http://www.oeronline.com/php/2003_january/cover.php',
"February 2003": 'http://www.oeronline.com/php/2003_february/cover.php',
"March 2003":'http://www.oeronline.com/php/2003_march/cover.php',
"April 2003":'http://www.oeronline.com/php/2003_april/cover.php',
"May 2003":'http://www.oeronline.com/php/2003_may/cover.php',
"June 2003":'http://www.oeronline.com/php/2003_june/cover.php',
"July 2003":'http://www.oeronline.com/php/2003_july/cover.php',
"August 2003":'http://www.oeronline.com/php/2003_august/cover.php',
"September 2003":'http://www.oeronline.com/php/2003_sept/cover.php',
"October 2003":'http://www.oeronline.com/php/2003_oct/cover.php',
"November 2003":'http://www.oeronline.com/php/2003_nov/cover.php',
"December 2003":'http://www.oeronline.com/php/2003_dec/cover.php'
}
},
"2002": {
"key" : 120,
"defaultvalue" : 'http://www.oeronline.com/php/2002_january_February/cover.php',
"values" : {
"January/February 2002": 'http://www.oeronline.com/php/2002_january_February/cover.php',
"March 2002":'http://www.oeronline.com/php/2002_march/cover.php',
"April 2002":'http://www.oeronline.com/php/2002_april/cover.php',
"May 2002":'http://www.oeronline.com/php/2002_may/cover.php',
"June 2002":'http://www.oeronline.com/php/2002_june/cover.php',
"July 2002":'http://www.oeronline.com/php/2002_july/cover.php',
"August 2002":'http://www.oeronline.com/php/2002_august/cover.php',
"September 2002":'http://www.oeronline.com/php/2002_september/cover.php',
"October 2002":'http://www.oeronline.com/php/2002_october/cover.php',
"November 2002":'http://www.oeronline.com/php/2002_november/cover.php',
"December 2002":'http://www.oeronline.com/php/2002_december/cover.php'
}
},
"2001": {
"key" : 130,
"defaultvalue" : 'http://www.oeronline.com/php/2001_january_February/cover.php',
"values" : {
"January/February 2001": 'http://www.oeronline.com/php/2001_january_February/cover.php',
"March/April 2001":'http://www.oeronline.com/php/2001_march_april/cover.php',
"May/June 2001":'http://www.oeronline.com/php/2001_may_june/cover.php',
"July/August 2001":'http://www.oeronline.com/php/2001_july_august/cover.php',
"September/October 2001":'http://www.oeronline.com/php/2001_september_october/cover.php',
"November/December 2001":'http://www.oeronline.com/php/2001_nov_dec/cover.php'
}
},
"2000": {
"key" : 140,
"defaultvalue" : 'http://www.oeronline.com/php/2000_march_april/cover.php',
"values" : {
"March/April 2000": 'http://www.oeronline.com/php/2000_march_april/cover.php',
"September/October 2000":'http://www.oeronline.com/php/2000_september_october/cover.php',
"November/December 2000":'http://www.oeronline.com/php/2000_nov_dec/cover.php'
}
}
};

$('#first').doubleSelect('second', selectoptions);
});

</script>
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
              <form name="oer_go">
<table border="0" cellpadding="0" style="border-collapse: collapse" id="table5" height="22">
  <tr>
    <td height="38" align="center" width="11">
    <p align="left"></td>
    <td height="28" align="center" valign="top">
    <p align="left">

<select id="first" name="first" size="1"  style="color: #000000; font-family: Verdana; font-size: 8pt" id="selectedyear">
</select>
</td>
    </tr>
  <tr>
<td height="38" align="center" width="11">
<p align="left"></td>
<td height="38" align="center">
<div style="float:left;">

<select id="second" name="second" size="1" size="1" style="font-family: Verdana; font-size: 8pt;float:left;display:block;" >
</select>
</div> 

<div style="float:left;padding-left:5px;">
<input type="button" name="test" value="Go!" onClick="go()" style="font-family: Verdana; font-size: 8pt;float:left;display:block;">
</div>
</td>
  </tr>
  </table>
 
</form>
<script language="javascript">
function go(){
var select_id = document.getElementById("second");
document.location.href = select_id.options[select_id.selectedIndex].value;
}
</script>
            </td>
            </tr>
          </table>