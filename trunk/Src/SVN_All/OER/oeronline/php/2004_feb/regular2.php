<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - February 2004 ::</title>
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
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">On 
            the up and up<br>
                  </font><b><font face="Verdana" size="1"><br>
                  Fincorp examines the latest stock movements on the Muscat 
            Securities Market</font></b><br>
                  <b>
                  <font face="Verdana" size="2"><br>
                  </font>
                  </b>
                  <font face="Verdana" size="1">
            <img border="0" src="im9.jpg" align="left" hspace="5" width="100" height="171">Maintaining 
            its momentum of 2003, the MSM heralded the New Year with catapulting 
            itself further up to end the first fortnight of 2004 within a 
            whiskers distance from the psychological barrier of 300 points. The 
            bullishness in the New Year can be gauged from the fact that for all 
            the 11 trading days of 2004, the Index has continued its upward 
            trend, gaining 21 points over its year-end close. Overall, the Index 
            peaked at 293.5 points for Jan15, 2004, a monthly gain of 7.9 per 
            cent. <br>
            <br>
            The Index gained an impressive 42 per cent in 2003 to close the year 
            at 272 points. There are several reasons behind this metaphorical 
            rise, chief among them being the corporate earnings performance for 
            the nine months ending September 2003, which increased by 27 per 
            cent YoY across all the three sectors. Other things which lead to 
            this spurt were declining interest rates on fixed income instruments 
            in the Sultanate along with a healthy maintenance of dividend yields 
            in the equity markets. Overall, the spreads between the two has been 
            a phenomenal 4-5 per cent during the latter half of the 2003. Other 
            factors included regional funds which were attracted to MSM markets 
            largely due to the relatively cheaper valuations in Oman along with 
            the war finally coming to its end during the middle of the year.<br>
            <br>
            The Banking &amp; Investment sector continued to dominate in the period 
            under review by again notching up an impressive 9 per cent gain 
            followed by other sectors at around 5 per cent improvement. <br>
            <br>
            Overall, the Banking and Investment index is also approaching a 
            psychological landmark with just 3 points separating it from the 
            400-level mark. All the banking stocks gained excessively which 
            included Alliance Housing Bank, National Bank of Oman and BankMuscat. 
            The sudden spurt was attributed to the re-rating of the stocks which 
            are among the cheapest compared to regional valuations. <br>
            <br>
            Stocks of leading brokerage companies like Global Financial 
            Investments and Financial Services along with several other holding 
            companies were also in increased demand during this period as they 
            were expected to maintain their performance for the last quarter 
            ending December 2003. <br>
            <br>
            The education sector continued to reap benefits from the budget 
            announced during the first week of January with the Majan College 
            stock further extending its gains while Oman Education and Training 
            became the star performer by notching up an impressive 200 per cent 
            gain within a week.<br>
            <br>
            Among Industrial stocks, Al Hassan Engineering continued to move up 
            on high volumes with an expected improved performance in the coming 
            years but other companies like National Aluminum, Oman Chemicals, 
            Oman Packaging started retracing on profit booking. Notable gainer 
            among the services sector remained Renaissance Services which 
            further improved its stock performance by 17 per cent to close at 
            RO5.800. <br>
            <br>
            Apart from these stocks, rights issues were also in the limelight 
            with Gulf Plastics, Oman National Dairy and Gulf Mushroom Products 
            coming out with their issues. BankMuscat convertibles also got 
            extinguished at the end of the year with the last three months 
            weighted average price for BankMuscat considered for converting the 
            convertibles working out at RO4.940. <br>
            <br>
            However, the BankMuscat convertibles are still tradable on the 
            market till the scheduled conversion date with the exception of 
            dividend for the current holders. The overall advances completely 
            overshadowed the declines by a ratio of 2.3 with 58 stocks gaining 
            during the last month. <br>
            <br>
            The overall volumes were sustained at around RO1.5 million on a 
            daily basis with the tradable timings for the market increasing by 
            half an hour during the period under review.</font><font size="1"> </font>
                  </p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>