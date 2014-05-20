<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - January - 2005 ::</title>
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

            <p align="justify"><font face="Verdana" size="1">
            <font color="#FF0000"><b>OER profiles three sites providing sectoral 
            and economic forecasts of the various countries of the world</b></font></font></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.consensuseconomics.com">
            http://www.consensuseconomics.com</a> </font></p>
            <p align="center">
            <img border="1" src="im31.jpg" width="200" height="159"></p>
            <p align="justify"><font face="Verdana" size="1">Consensus 
            Economics, founded in 1989, is the world’s leading international 
            economic survey organisation and polls more than 700 economists each 
            month to obtain their forecasts and views. These surveys cover 
            estimates for the principal macroeconomic variables (including 
            growth, inflation, interest rates and exchange rates) in over 70 
            countries. The forecasts are compiled into a series of publications, 
            devoted to the world’s major industrialised countries (G7 &amp; Western 
            Europe), the emerging economies of Asia Pacific, Latin America and 
            Eastern Europe, and international currencies. Its latest report, the 
            consensus forecasts global outlook 2004-2014, covers individual 
            countries, regional and world long-term forecasts for the global 
            economy. The site also provides separate analyses with country and 
            aggregate survey data for GDP growth, consumer price inflation, 
            current account balances, industrial production growth etc.</font></p>
            <hr color="#CC3333" size="1">
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.isa-world.com">
            http://www.isa-world.com</a></font></p>
            <p align="center">
            <img border="1" src="im30.jpg" width="200" height="161"></p>
            <p align="justify"><font face="Verdana" size="1">This Website helps 
            in understanding the current and future of individual and global 
            markets. It provides a wide range of reports and forecasts as well 
            as a variety of advisory service offerings. ISA country reports 
            provide up-to-date coverage, analysis and forecasts for 112 
            countries. These reports provide users with the information they 
            need to understand the key issues, developments, opportunities and 
            risks in each country. These reports cover key data and forecasts 
            from 1993 to 2008. Analysis of key sectors, industries, issues and 
            businesses is also provided. Reporting of recent business and 
            economic events and an overview of the business and investment 
            climate is given. The economic forecasts on the Website provide 
            users with key economic indicator data and forecasts for 160 
            countries. The forecasts cover topics like GDP growth, inflation, 
            exchange rates, unemployment rate, current account balance and FDI 
            inflows.</font></p>
            <hr color="#CC3333" size="1">
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.eiu.com">http://www.eiu.com</a></font></p>
            <p align="center">
            <img border="1" src="im32.jpg" width="200" height="166"></p>
            <p align="justify"><font face="Verdana" size="1">The Economist 
            Intelligence Unit (EIU) is the business information arm of The 
            Economist Group, publisher of The Economist, CFO magazine, Roll Call 
            and other specialist journals. The EIU it is a leading provider of 
            country, industry and management analysis. It provides timely and 
            reliable analysis for making successful global decisions. Through 
            its global network of analysts and economists, it continuously 
            assesses and forecasts the political, economic and business climates 
            of 200 countries. The EIU’s 650 contributors report on recent 
            economic and political events, comment on the business environment 
            and legislative changes, and give their views on political, economic 
            and social trends. Its offerings include events-driven briefings, 
            economic and geopolitical analysis, operating conditions and 
            regulations, management strategies and executive development, market 
            and business outlook, risk assessments and early warning, industry 
            trends, data and forecasts, and custom publishing.</font></p>

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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>