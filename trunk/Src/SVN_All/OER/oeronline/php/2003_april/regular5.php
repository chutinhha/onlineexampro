<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - April 2003 ::</title>
</head>

<body topmargin="0" leftmargin="0">





<table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111">
  <tr>
    <td width="100%">
<? include("../../inc/top.htm"); ?>  
<? include("../../inc/menu_gen.htm");
?></td>
  </tr>
  <tr>
    <td width="100%" height="21">
<?include("../../inc/home_inc1.htm");?></td>
  </tr>
  <tr>
    <td width="100%" height="15" valign="middle">
      <div align="center">
        <center>
        <table border="0" width="95%" bgcolor="#FFFCE8" cellspacing="0" cellpadding="5" style="border-collapse: collapse" bordercolor="#111111">
          <tr>
            <td width="100%" bgcolor="#FFFCE8" colspan="3" align=center><b>



<? if(!$HTTP_SESSION_VARS["id"]==""){echo "<font face=Verdana size=2 color=#000000>Welcome&nbsp;&nbsp;</font><font face=Verdana size=2 color=red><i>".$HTTP_SESSION_VARS["id"]."&nbsp;!</i></font>
            ";}else{echo$HTTP_SESSION_VARS["mes"];$HTTP_SESSION_VARS["mes"]="";}?>
              </b></td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="4" color="#FF0000">
                  Web Scan</font><p align="left"><font face="Verdana" size="2"><b>Bookworm</b></font></p>
            <p align="center"><font face="Verdana" size="1"><b>
            <img border="0" src="bookcross.jpg" width="250" height="179"></b></font></p>
            <p><font face="Verdana" size="1"><b>&nbsp;</b><br>
<a href="http://www.BookCrossing.com">www.BookCrossing.com</a><br>
Branding itself a &quot;book lovers' community,&quot; the Website BookCrossing.com's 
stated goal &quot;is to make the whole world a library.&quot; The site invites surfers to, 
after signing up, Read a book (anything from Shakespeare to Rowling), Register 
it (with a short review), and Release it (give it to a friend, leave it on a 
park bench, donate it to charity, Ôforget' it in a coffee shop, etc.) for 
someone else to read. Notes are left in the book encouraging the findee to 
register their find on BookCrossing.com, review it, then set it free again. And 
thus become a BookCrosser. &quot;It's a global book club that crosses time and space. 
It's a reading group that knows no geographical boundaries.&quot; Quite. You can also 
hunt for books in the wild or make comments on books you've found. The only 
question mark is whether the site can keep up with the growth in BookCrossers 
(there were 90,000-plus at last count). At this moment, however, this &quot;free and 
always will be&quot; site looks set to become one of the Web's better phenomena.
</font>
            </p>
<p><font face="Verdana" size="2"><b>Cross Country</b></font></p>

<p align="center"><img border="0" src="webcountry.jpg" width="180" height="200"></p>

<p><font face="Verdana" size="1"> <br>
<a href="http://www.CountryWatch.com">www.CountryWatch.com</a> <br>
CountryWatch.com is a paid site that provides country-specific geopolitical 
intelligence on 192 countries. The site provides a key set of political, 
economic, and business data, daily news and data in the form of Country Reviews 
(demographic, historical, political, economic and environmental background and 
contemporary issues facing a country), the Country Wire (breaking news) and 
CountryWatch Data (cross-sectional data series spanning socio-demographic, 
macroeconomic, economic sector, environmental and cultural information) apart 
from a forecast of global macroeconomic trends, over 2000 maps and a translation 
service in all major world languages.</font></p>

                    <hr color="#CC3333">
                    <p>&nbsp;</td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
          </tr>
          
        </table>
        </div>
      </center>
        </table>
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
<p>
        <?}
else 
Header("Location:/inc/error.php");
?>
        </body>
        </html>