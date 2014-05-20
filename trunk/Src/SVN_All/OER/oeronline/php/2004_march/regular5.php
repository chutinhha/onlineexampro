<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - March 2004 ::</title>
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



<? if(!$HTTP_SESSION_VARS["id"]==""){echo "<font face=Verdana size=2 color=#000000>Welcome&nbsp;&nbsp;</font><font face=Verdana size=2 color=red><i>".$HTTP_SESSION_VARS["id"]."&nbsp;!</i></font>
            ";}else{echo$HTTP_SESSION_VARS["mes"];$HTTP_SESSION_VARS["mes"]="";}?>
              </b></td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF">
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">Web 
            scan<br>
                  </font><font face="Verdana" size="2"><br>
                  </font><font face="Verdana" size="1">
            <a target="_blank" href="http://www.allaboutbranding.com">http://www.allaboutbranding.com</a></font></p>

<p align="justify"><font face="Verdana" size="1">
<img border="0" src="im18.jpg" align="left" hspace="5" width="200" height="138">All About Branding is a nifty website to 
decipher what you might
need to build a great brand from scratch, to enhance your existing
brand or to bring the voice of your brand online. Articles are
archived and to a large extent surfers have unrestricted access to
dozens of detailed features on recent trends and marketing strategies.
There are also excellent anecdotes and pithy quotes to inspire
you to go out and build a brand that paints a terrific picture of your
product in the minds of others. DNA Design, one of New Zealand’s
leading design communications companies, is responsible for the
site. According to this award-winning company, the site is supposed
to reconcile the many and conflicting views of what constitutes
a brand and to help their clients and others arrive at clearly
defined views of their own brand, how to develop and manage it
and how they would like to see it expressed. </font></p>

<p align="justify"><font face="Verdana" size="1">
<a target="_blank" href="http://www.globalstreetscapes.com">http://www.globalstreetscapes.com</a> </font></p>

<p align="justify"><font face="Verdana" size="1">
<img border="0" src="im17.jpg" align="right" hspace="5" width="200" height="136">Another site that expresses in visual terms, what brands are and
what they stand for is GlobalStreetscapes. It is billed as a site networking
discerning, observant, urban connected individuals all
over the world. The site’s mission statement is: “To provide
access and connection to global urban energies, both consumer
and brand”. The consultants that run the site claim the site exists
to work with clients to “access rapid, raw global intelligence
from urban hubs across the world”. The language might be OTT
but the content with its exciting imagery and ideas live up to
their hype. You can access old issues of site’s online magazine to
find out why you should opt for subscription. An annual fee of
around RO310 allows you access to six on-line bi-monthly intelligence
reports. Each report promises to bring you the freshest
global intelligence that is available nowhere else on the web.</font></p>

<p align="justify"><font face="Verdana" size="1">
<a target="_blank" href="http://www.thebrandcouncil.org">http://www.thebrandcouncil.org</a> </font></p>

<p align="justify"><font face="Verdana" size="1">
<img border="0" src="im16.jpg" align="left" hspace="5" width="200" height="138">The Brand Council is the independent arbiter on branding. The
organisation promotes the discipline of branding and pays tribute
to exceptional brands through its Superbrands programmes that
operate in over 25 countries. An independent judging panel of
experts awards ‘Superbrand’ status. Different juries exist for the
different geographical regions to ensure that only the most deserving
of brands attain the credential. Only brands that are scored
highly by the panel qualify for the status and to be featured in the
publication. The shortlist that the panel score is itself derived from
a list of thousands of potential brands. In the UK the organisation
also runs the Business Superbrands and Cool BrandLeaders programmes.
These areas of the site provide a gateway that contains
case histories on the finest brands as featured in that programme.
Each sub-site also features valuable comment, research and information
pertinent to the world of branding in that area.</font></p>

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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>