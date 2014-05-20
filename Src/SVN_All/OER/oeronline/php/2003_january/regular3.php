<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - January 2003 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF"><font face="Verdana" size="4" color="#FF0000">
                  Turn around possible?<br>
                  </font><b><font face="Verdana" size="1"><br>
                  After posting a dismal performance in November 2002, MSM is 
                  finally showing signs of revival as the following December 
                  boosted investor confidence</font></b><br>
                  <font face="Verdana" size="2"><b><br>
                  </b>Investor confidence was renewed as large transactions of Majan 
                  International Bank and BP Oman lifted the Muscat Securities 
                  Market (MSM) Index to an all time high for last year after a 
                  dismal performance in November 2002. <br>
                  <br>
                  The Index touched 192.46 points on December 19, its highest 
                  level this year, after the boards of Bank Dhofar Al Omani Al 
                  Fransi and Majan Bank International agreed to merge. The two 
                  banks transferred a total of 6.56 million shares worth RO6.7 
                  million to the market during the second week of December, as 
                  part of their merger conditions. Bank Dhofar, whose profit 
                  jumped 26 per cent to RO6.2 million in the first nine months 
                  of 2002, has added 50 baizas in December to RO2.250, as 
                  compared to the previous month.<br>
                  <br>
                  State-run Oman Oil Company (OCC) bought 49 per cent of BP 
                  Plc's stakes in BP Oman in a deal worth RO10 million. The 
                  transaction of 2.82 million shares on the MSM was valued at 
                  RO8.99 million executed by the brokerage arm of Oman Arab 
                  Bank. The takeover increased BP OmanÕs share price by 80 
                  baizas to RO3.<br>
            <br>
                  'I think these two transactions have allayed some of the 
                  fears, which we saw in November, especially about the 2002 
                  corporate profitability. Investors are now more confident and 
                  I am positive that MSM will make a considerable gain this year 
                  compared to 2001,' Ahmed Al Hadhrami, an economist at Oman 
                  Holding International said. <br>
                  <br>
                  The MSM lost 24.4 per cent last year after investor confidence 
                  was severely battered on allegations of widespread misconduct 
                  by a few listed companies. The bourse is trading 27 per cent 
                  higher so far this year.<br>
                  <br>
                  The biggest gainer of the month was Ominvest, which made 960 
                  baizas to touch RO2.190 per share, and was followed by Al 
                  Anwar Ceramic Tiles, which gained 440 baizas to reach RO4.050. 
                  Al Sharqia Investment Holding added 280 baizas moving to 
                  RO1.590 per share.<br>
            <br>
                  Brokerage company Al Shalman Securities lost 10 baizas during 
                  the month to 630 baizas. The share prices of Salalah Port 
                  Services and Oman Holding International remained unchanged at 
                  RO2.550 and RO1.440 respectively.<br>
                  Total (traded) turnover jumped to 727,759 shares during 
                  December, compared to 566,00 shares a month earlier while the 
                  volume reached RO949,606 from RO820,000. <br>
                  <br>
                  Analysts are forecasting that 2003 would start on a positive 
                  note following the bullish trend in December. 'It is good 
                  timing. We normally see the Index dipping towards the end of 
                  the year, but so far MSM Index looks good. With this late 
                  boost, we can only expect 2003 to start with a good note,' 
                  Vibhuti Joshi, analyst at Al Shalman Securities Company said. </font><font size="2">&nbsp;</font><hr color="#CC3333">
                    <p>&nbsp;</td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
          </tr>
          
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