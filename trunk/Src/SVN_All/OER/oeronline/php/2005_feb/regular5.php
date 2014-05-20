<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - February - 2005 ::</title>
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
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">:: Web 
            Scan</font></p>

            <p align="justify"><font color="#FF0000" face="Verdana" size="1"><b>
            The sports business industry is one of the largest and fastest 
            growing industries in the world. OER tracks three sites providing an 
            overview of the business of sports</b></font></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.sportsoman.com/">
            http://www.sportsoman.com/</a></font></p>
            <p align="center">
            <img border="0" src="im30.jpg" width="200" height="163"></p>
            <p align="justify"><font face="Verdana" size="1">Sportsoman.com is a 
            unique Website for Oman’s Ministry of Sports Affairs, one that 
            provides constantly updated local, national and international sports 
            news. In time, the Ministry intends to broaden the scope of the 
            Website to include views and commentary on a wide variety of 
            subjects relating to the world of sport. SportsOman.com as an 
            initiative is designed to help both men and women become more 
            active, in sports, the community and lead to living healthier and 
            happier lives. The site aims to bring national and expatriate 
            interests in sports and healthy living together under one roof on 
            the Internet. SportsOman.com strives to develop interest in sporting 
            activities and using the Internet and technology help develop 
            communities of interest around these. SportsOman.com is a community 
            portal.</font></p>
            <hr color="#C0C0C0" size="1">
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.sportsbusinessjournal.com/">
            http://www.sportsbusinessjournal.com/</a></font></p>
            <p align="center">
            <img border="0" src="im31.jpg" width="200" height="161"></p>
            <p align="justify"><font face="Verdana" size="1">SportsBusiness 
            Journal is one of the most respected names in the sports industry. 
            Its influence goes beyond the pages of the magazine through a 
            variety of special events and awards series that attract and 
            facilitate dialogue for industry leaders. As a weekly publication, 
            SportsBusiness Journal provides readers with the most important 
            breaking news stories. This is the online address of the weekly 
            magazine, which claims to ‘‘break the news that decision-makers need 
            to stay on top of the fast-paced sports industry.’’ The site makes 
            available the content of the magazine to subscribers besides 
            offering goodies like a calendar of events and College and 
            University Programs. Issues in sports business often deserve more 
            in-depth coverage than can be given in regular, weekly coverage. 
            SportsBusiness Journal recognises this by offering weekly Special 
            Reports throughout the year on the important topics that demand 
            greater in-depth coverage, and makes them available on its site too.
            </font></p>
            <hr color="#C0C0C0" size="1">
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.sportbusiness.com/">
            http://www.sportbusiness.com/</a></font></p>
            <p align="center">
            <img border="0" src="im32.jpg" width="200" height="161"></p>
            <p align="justify"><font face="Verdana" size="1">The world’s leading 
            supplier of information, media and B2B marketing services to the 
            sports industry, SportBusiness Group, with its network of partners 
            and agents, assists companies from all over the globe in achieving 
            their business goals. SportBusiness Group has established its 
            reputation as the 'leading voice' for the international sport 
            business community, supplying a host of informational products and 
            services to help its clients make better-informed business 
            decisions. Its publishing, information services and seminars 
            divisions support some of the most influential figures from sporting 
            federations, governing bodies and key rights holders to leading 
            sponsors, broadcasters and sport marketing companies. For B2B 
            marketers, its advertiser, sponsor and partner programmes offer 
            access to executives across the range of sports-related 
            organisations – electronically (through this site), in print, and 
            person-to-person.</font></p>

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