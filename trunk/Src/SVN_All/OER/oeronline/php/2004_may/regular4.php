<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - May 2004 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF" valign="top">
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">MSM</font></p>
            <p align="justify"><b><font face="Verdana" size="2" color="#FF0000">
            Soaring stocks</font></b></p>
            <p align="justify"><b><font face="Verdana" size="1">Fincorp examines 
            the latest stock movements on the Muscat Securities Market as the 
            MSM Index crosses the 300-mark barrier </font></b></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="0" src="im9.jpg" align="left" width="150" height="232" hspace="6">The 
            MSM Index which had been constantly hovering around the 290 mark for 
            the past three months, finally crosses the psychological barrier of 
            300 points on April 13, 2004. This revisit to the 300 mark has been 
            after an agonizingly wait of almost six years. </font></p>
            <p align="justify"><font face="Verdana" size="1"><b>Lull before the 
            storm </b><br>
            However, the MSM Index underperformed during the February to March 
            period of this year with those of the last two years, with the 
            common binding for them being that it was an upward trending market.
            <br>
            <br>
            One of the possible reasons was the delay in the announcement of the 
            yearly earnings this year with the majority of the companies 
            declaring results in the latter half of March and in April. Lower 
            dividend yields this season also affected the overall MSM Index. 
            This can be largely attributed to the significant increase in the 
            share price movement of majority of the dividend paying companies. 
            However, this is still higher than the low interest rate on fixed 
            income instruments in the country. </font></p>
            <p align="center">
            <img border="0" src="im26.jpg" width="371" height="454"></p>
            <p align="justify"><font face="Verdana" size="1">For the initial 15-20 trading days for the period under review, the 
            markets stagnated with the Banking and investment sector lagging 
            behind the Index. However, the markets picked up after crossing the 
            300 mark and till our reported coverage (i.e. April 20, 2004) the 
            markets were in a bull's orbit gaining for ten consecutive trading 
            days and by 11.5 points to touch 307.44 points. <br>
            <br>
            From the sectoral point of view, all the sectors galloped during the 
            period under review, especially the industry sector. Amongst 
            Industry stocks, it was the cement companies which shared the 
            limelight. Both cement manufacturing firms, Raysut Cement and Oman 
            Cement gained by a phenomenal 20 per cent during the period under 
            review. <br>
            <br>
            Similarly, under the banking sector, Alliance Housing Bank stole the 
            spotlight, on announcement of its excellent first quarter results 
            for 2004 which saw its profitability improving by 48% on a YoY basis 
            to touch RO805k. This works out to an Earnings per Share of 153 
            Baiza. Stocks like Oman Fisheries, OIB, Oman United Insurance 
            continued their gains with some of them notching up their 52 week 
            highs. <br>
            <br>
            Rotation of investments amongst the sector was observed during the 
            period under review. If the initial upsurge in the Index was 
            provided by the Industry sector, further support came from the 
            Banking and Investment sector. <br>
            <br>
            The bullish sentiments has also helped improved the liquidity in 
            more stocks with the overall volumes maintaining at RO2.6 million, a 
            slight increase over the previous month level. However, the overall 
            advances to declines ratio was at 0.91 with 39 stocks improving 
            during the period under review. <br>
            <br>
            We believe that the markets would maintain its momentum as earnings 
            season for the first quarter of 2004 starts pouring in during the 
            coming weeks.</font></p>
            <p align="center">
            <img border="0" src="im27.jpg" width="368" height="217"></p>
            <p align="center">
            <img border="0" src="im28.jpg" width="355" height="339"></p>
            <p align="justify"><i><font face="Verdana" size="1">Data and 
            analysis by The Financial Corporation SAOG (Fincorp). While utmost 
            care has been taken in preparing the above report, neither Fincorp 
            nor Oman Economic Review make any guarantee, representation or 
            warranty, whether express or implied, and accept no responsibility 
            or liability as to its accuracy or completeness of the data being 
            provided</font></i></p>
                    <hr color="#CC3333">
                    <p></td>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>