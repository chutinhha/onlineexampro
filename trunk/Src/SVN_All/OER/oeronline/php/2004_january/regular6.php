<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - January 2004 ::</title>
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
            <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
            scan<br>
                  </font><b><font face="Verdana" size="1">
                  <br>
                  This month, OER reviews Websites that make predictions and 
            forecasts about global and regional economies and analyse economic 
            trends for providing research assistance</font></b></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.globalinsight.com">http://www.globalinsight.com</a><br>
            <a target="_blank" href="http://www.globalinsight.com">
            <img border="0" src="web1.jpg" vspace="7" width="200" height="154"></a></font></p>
            <p align="justify"><font face="Verdana" size="1">This Website offers 
            comprehensive economic and financial coverage of countries and 
            regions around the world. It also provides economic analysis and 
            forecasts of the world and regional economies. Besides a lot of 
            economic data, the site provides consulting expertise to its users. 
            It offers solutions and strategies to clients, helping them reap 
            profits by better money management. It also helps surfers in 
            achieving critical policy objectives. A separate section on the site 
            called Industry Expertise offers comparative industry rankings, data 
            and analysis across 70 industries around the world. Apart from the 
            various products and services of the site, a lot of information 
            about upcoming economic events is also provided. All major economic 
            news and highlights are covered for the user.</font></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.johnbeggs.com">http://www.johnbeggs.com</a><br>
            <a target="_blank" href="http://www.johnbeggs.com">
            <img border="0" src="web2.jpg" vspace="7" width="200" height="157"></a></font></p>
            <p align="justify"><font face="Verdana" size="1">This Website is a 
            one-stop-shop for all economic and financial outlooks. Easy to 
            navigate, the site places different economic topics neatly under 
            various subheads. E.g., the section called Monthly Market Focus is a 
            good indicator of all the current economic forecasts around the 
            world. The Website has informative articles on world markets like 
            the Euro economy, the US economy and the Japanese economy and 
            financial markets. The site also maintains a weekly economics diary 
            which is a compilation of economic releases and key market events 
            for that week. The site has a link to a research centre which offers 
            in-depth economic analysis and research done by experts. The site 
            also has links to various other economic sites like that of the 
            European Central Bank, Board of Governors of the Federal Reserve, 
            Central Statistics Office and the Investment and Development Agency 
            Ireland (IDA) to name a few. </font></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.economagic.com">http://www.economagic.com</a><br>
            <a target="_blank" href="http://www.economagic.com">
            <img border="0" src="web3.jpg" vspace="7" width="200" height="165"></a></font></p>
            <p align="justify"><font face="Verdana" size="1">This is a 
            comprehensive Website of economic time series data useful for 
            research, in particular economic forecasting. With this site, one 
            can access large amounts of economic data and relevant charts. The 
            site not only offers a significant amount of economic data but also 
            presents it in a very convenient tabular form. A lot of such data 
            can be used by the surfer by maintaining personalised excel 
            spreadsheets and copy/paste formats. An impressive 100,000-data file 
            collection is available on the site, the majority of which is US 
            data. The core data includes US macroeconomic data which applies to 
            the entire country. At the same time, the bulk of the data is 
            employment data used by local area in state, county, MSA, or cities 
            and towns. The site is helpful for students, government analysts, 
            academics, social policy analysts and businesspeople. The site has 
            all the relevant data sets from the Bureau of Labour Statistics, the 
            Census Bureau, the Federal Reserve, and various other agencies.</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>