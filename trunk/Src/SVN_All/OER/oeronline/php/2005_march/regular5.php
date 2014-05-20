<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - March - 2005 ::</title>
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

            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.bilaterals.org">
            www.bilaterals.org</a></font></p>
            <p align="center">
            <a target="_blank" href="http://www.bilaterals.org">
            <img border="0" src="im23.jpg" width="300" height="225"></a></p>
            <p align="justify"><font face="Verdana" size="1"><br>
            This Website is dedicated to sharing information and stimulating 
            cooperation against bilateral trade and investment agreements. The 
            site includes all the topics, segregated under sub-sections, on free 
            trade agreements. For example, the “Key Issues” link includes all 
            the articles on important topics like agriculture, corporate 
            interests, environment, intellectual property rights etc. Besides, 
            the most talked about topics in free trade, the link “Treaties &amp; 
            Agreements” contains news and analysis about bilateral and regional 
            free trade and investment agreements under negotiation. The site 
            also provides the official texts of bilateral, regional and 
            plurilateral treaties and agreements that have been signed. The 
            purpose of this link is to act as a reference tool for activists and 
            researchers. There is also news, analyses, actions and online 
            discussions available on the site.</font></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.freetrade.org">www.freetrade.org</a></font></p>
            <p align="center">
            <a target="_blank" href="http://www.freetrade.org">
            <img border="0" src="im25.jpg" width="300" height="244"></a></p>
            <p align="justify"><font face="Verdana" size="1"><br>
            This is a comprehensive Website that covers all topics related to 
            globalisation and free trade agreements. All trade-related issues 
            are covered by the site, ranging from the causes of poverty to 
            sustainable development. Studies, research, articles, speeches, and 
            archived events on the issue are available on the site. Important 
            topics like China trade, the benefits of globalisation, immigration 
            and outsourcing and offshoring are discussed at length. All Centre 
            for Trade Policy Studies (CTPS) articles, trade briefing and papers 
            are posted on the site. Besides, all in-house forums are broadcast 
            live on the Internet in RealAudio. However, the user has to click on 
            the title to register before the event. During and after the event, 
            the user can listen to the discussion by clicking on the title. Some 
            of the most frequently asked questions about globalisation and free 
            trade have been listed on the site and have been answered by CTPS 
            scholars. There are also links to related works that provide more 
            in-depth analysis of the subject matter.</font></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.globalissues.org">
            www.globalissues.org</a></font></p>
            <p align="center">
            <a target="_blank" href="http://www.globalissues.org">
            <img border="0" src="im24.jpg" width="300" height="275"></a></p>
            <p align="justify"><font face="Verdana" size="1">This site talks 
            about the pros and cons of globalisation, neoliberalism, free trade 
            and open markets. It provides an ideal space to the users for 
            debating on such topics. Besides talking about the usual 
            trade-related issues like causes of poverty, third world debt, 
            Cancun and Doha WTO meeting, the site has some very interesting 
            sections like the one on geopolitics. This section attempts to 
            highlight what some of the consequences of global politics can be. 
            It focuses on the power play of personal or national interests. 
            Topics such as arms control, arms trade, conflicts in Africa, the 
            Middle East and war on terror are covered. The site criticises some 
            of the unfair practices being followed under the name of free trade. 
            This section attempts to highlight some of the misconceptions and 
            unfairness in the current model for global trading, economics and 
            the current form of overly corporate-led globalisation. It attempts 
            to provide a look at how this all has an impact on people around the 
            world, especially the developing nations.</font></p>

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
        </table>
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>