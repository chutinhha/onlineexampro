<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - July - 2004 ::</title>
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
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">Web 
            Scan<br>
            <br>
            </font><b><font face="Verdana" size="1">Buying or selling a house or office space can 
be extremely demanding. This month,
OER reviews some popular real estate Websites</font></b></p>

<p align="center"><font face="Verdana" size="1">&nbsp;<a target="_blank" href="http://www.gulfproperties.net">http://www.gulfproperties.net</a></font></p>

<p align="justify"><font face="Verdana" size="1">
<img border="0" src="im61.jpg" align="left" hspace="5" width="150" height="115">This is a comprehensive property locator service on the Internet for
thousands of properties in hundreds of cities. If you are looking for any
kind of property, be it a house, villa, land, office showroom or even a
warehouse, this site can give you the details of all that is available. All
you have to do is just click on the country of your choice - Oman,
Bahrain, Kuwait, United Arab Emirates, Qatar, Saudi Arabia or Egypt
- and the kind of the property that you are interested in. In a matter
of few seconds, a whole list of properties that match your requests will
scroll down your screen. Besides, the site provides the surfer links to
25,000 Websites on real estate throughout the world. It also provides
the latest property news across the Gulf and news on hot deals that are
available in the market. A surfer can also be a part of property discussion
forum by filling a simple form about his personal details.</font></p>

            <hr color="#CC3333" size="1">

<p align="center"><font face="Verdana" size="1">&nbsp;<a target="_blank" href="http://www.totalrealestatesolutions.com">http://www.totalrealestatesolutions.com</a></font></p>

<p align="justify"><font face="Verdana" size="1">
<img border="0" src="im62.jpg" align="right" width="150" height="112">As its name 
suggests, this Website claims to provide one-stop solutions to all your real 
estate problems. If you're planning to buy a house, this Website is a must-see. 
Just click on the 'Useful Tips for Buyers' link and you can get a whole lot of 
information that you've been looking for. Featured listing, search property 
listings, foreclosure listings, financial calculators are a few links under this 
section that can help you shortlist the best option available. It's not just the 
buyers but the sellers too who can benefit from this Website. A whole lot of 
latest articles and advice on real estate are available on the site. You can 
also join the real estate chat, and talk to others who share your interest in 
real estate, make new friends and share tips and ideas. Also, don't forget to 
check the latest real estate talk discussion topics.</font></p>

            <hr color="#CC3333" size="1">

<p align="center"><font face="Verdana" size="1">
<a target="_blank" href="http://www.RElibrary.com">http://www.RElibrary.com</a></font></p>

<p align="justify"><font face="Verdana" size="1">
<img border="0" src="im60.jpg" align="left" hspace="5" width="150" height="120">The Real Estate Library site contains essential resources for buyers,
sellers, home owners, real estate professionals, and anyone investing
or seeking to connect with the world of real estate. If you have
any query, chances are that you will find the answers here. If you
are a buyer and need assistance getting through the home buying
process, click on the Home Buyers Information Centre. The link
can help you guide and show you the right direction on where to
find agents or your dream home. Besides the individual buyers
and sellers, this site is useful for real estate agents with Website
questions. If you click on the Real Estate Website Design link, a lot
of your problems can be solved by experts. Just post your question
and get professional answers to them. Surfers can also avail of free
yet comprehensive real estate guide. Besides, the Mortgage
Directory Online link provides relevant information on mortgage
services home equity and debt consolidation.</font></p>

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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>