<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - October - 2004 ::</title>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">


<table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111">
  <tr>
    <td width="100%">
<? include("../../inc/top1.php"); ?>  
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



<? if(!$HTTP_SESSION_VARS["id"]==""){echo "<font face=Verdana size=2 color=#000000>Welcome&nbsp;&nbsp;</font><font face=Verdana size=2 color=red><i>".$HTTP_SESSION_VARS["id"]."!</i></font>
            ";}else{echo$HTTP_SESSION_VARS["mes"];$HTTP_SESSION_VARS["mes"]="";}?>
              </b></td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top">
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">::
                    </font><font face="Verdana" size="2" color="#C0C0C0">Web 
            Scan</font><font face="Verdana" size="4" color="#FF0000"><br>
            <br>
            </font>
<font face="Verdana" size="1" color="#FF0000">
            <b>OER compiles a listing of Websites that help users gain a better 
            understanding of the dynamics of mergers and acquisitions and help 
            them take an informed decision</b></font></p>

<p align="center">
<font face="Verdana" size="1">
<a target="_blank" href="http://www.mareport.com">http://www.mareport.com</a></font></p>

<p align="center">
<img border="0" src="im2.jpg" width="203" height="151"></p>

<p align="justify">
<font face="Verdana" size="1">
This site belongs to the Mergers &amp; Acquisitions Report, a weekly newsmagazine 
that provides information on mergers, acquisitions, restructurings and 
bankruptcies across the world. Each weekly issue of the magazine delivers 
complete coverage of pending and ongoing deals as well as insights into industry 
trends, strategies and the firms and people involved. Each issue includes 
Washington news, analysis of merger financings, indexing of companies and 
stories (and quarterly rankings) of M&amp;A advisors. This paid site provides access 
to all the stories appearing in the magazine, as well as offers features such as 
access to archived reports, dataflow alerts, M&amp;A news updates, regulatory 
framework in different countries as well as information on private targets, 
divestitures, and withdrawn deals etc.
</font></p>

                    <hr color="#CC3333" size="1">

<p align="center">
<font face="Verdana" size="1">
<a target="_blank" href="http://www.maadvisor.com">http://www.maadvisor.com</a></font></p>

<p align="center">
<img border="0" src="im3.jpg" width="203" height="151"></p>

<p align="justify">
<font face="Verdana" size="1">
The M&amp;A Advisor is a unique, monthly newsletter that focuses specifically on 
timely issues, bottom-line trends and career-enhancing strategies for buyers and 
sellers of middle market companies. The site is an online version of the 
newsletter, with a host of additional features, like the career centre, an 
online guide to major M&amp;A events, and downloadable data for Planning 
professionals. As one of the membership benefits, subscribers of the site 
receive the monthly newsletter for professionals in mergers and acquisitions, 
The M&amp;A Advisor. The company hosts a number of conferences and seminars 
throughout the year covering all major areas of M&amp;A on both a broad and narrow 
scope. The company also publishes and sells special reports, videos and software 
for M&amp;A professionals at its Professional Store. Members receive discounts on 
all products and services offered by the company.
</font></p>

                    <hr color="#CC3333" size="1">

<p align="center">
<font face="Verdana" size="1">
<a target="_blank" href="http://www.mergernetwork.com/">
http://www.mergernetwork.com/</a></font></p>

<p align="center">
<img border="0" src="im4.jpg" width="205" height="160"></p>

<p align="justify">
<font face="Verdana" size="1">
MergerNetwork provides search solutions for buyers of businesses, and claims to 
help corporates reduce their search time and save their money while on an M&amp;A 
hunt. The MergerNetwork database of Businesses For Sale contains over 8,000 
listings in a wide array of industries, locations and sales levels. The user can 
create a Business Wanted ad that will appear in the database at SellerWorks.com. 
The site claims that this database is used every day by hundreds of business 
brokers, investment bankers, and business owners across the world. The site 
offers free Bronze membership for those interested to further explore M&amp;A 
opportunities with companies that may not otherwise be advertised or even 
listed. The site boasts of claims to be used by 50,000 users throughout the 
world, including small and large companies, private equity groups, business 
brokers, investment bankers, and individual buyers.
</font></p>

                    <hr color="#CC3333">
                    <p>&nbsp;</td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
          </tr>
          
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>