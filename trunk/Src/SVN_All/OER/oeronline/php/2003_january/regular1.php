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
                  Stabilising interest rates</font><p><b>
                  <font face="Verdana" size="1">The money supply expansion in 
                  Oman has taken a breather since March 2002. Consequently, the 
                  deposit and money market rates are showing signs of 
                  stabilisation. A gradual shift in preference from demand to 
                  time deposits is happening</font></b><br>
                  <br>
                  <font face="Verdana" size="2"><b>Money supply</b><br>
                  Narrow money (M1) (currency outside commercial banks + demand 
                  deposits) increased by 18 per cent from RO616 million in 
                  September 2001 to RO725 million in September 2002. Broad money 
                  (M2) or domestic liquidity (M1 + local currency saving and 
                  time deposits, margins and forex deposits) increased by five 
                  per cent from RO2,535 million in September 2001 to RO2,674 
                  million in September 2002. Local currency demand deposits 
                  significantly contributed to the money supply rise with an 
                  increase of 29 per cent from RO354 million to RO455 million 
                  during the period under review. <br>
                  <br>
            <img border="0" src="Deposit.jpg" align="left" width="173" height="111">While M2 expanded significantly till Q1 of 2002, it has been 
                  registering a decline, albeit marginally since then. M2 
                  declined by two per cent each in Q2 and Q3 of 2002. Quasi 
                  money (local currency savings and time deposits, margins and 
                  foreign currency deposits) declined from RO2,014 million to 
                  RO1,919 million in Q2, and demand deposits declined from RO521 
                  million to RO455 million in Q3. A shift in preference from 
                  demand deposits to time deposits was observed in Q3.<br>
                  <b><br>
                  Deposits and credit<br>
                  </b>Total deposits of commercial banks increased by five per 
                  cent from RO2,624 million in September 2001 to RO2,760 million 
                  in September 2002, and total credit rose by one per cent from 
                  RO3,185 million to RO3,230 million <br>
                  <b><br>
                  Interest rates </b><br>
                  The weighted average interest rate on local currency deposits 
                  fell significantly to 1.81 per cent as at September 2002 from 
                  3.72 per cent in September 2001. Compared to the steep fall 
                  during the period September 2001 to June 2002, the deposit 
                  rate almost stabilised during the Q3 of 2002. The local 
                  currency lending rate fell to 8.7 per cent in September 2002 
                  from 9.43 per cent in September 2001. Interest rate on foreign 
                  currency deposits also fell sharply to 1.61 per cent in 
                  September 2002 from 2.82 per cent in September 2001. The 
                  foreign currency lending rate also fell sharply to 2.78 per 
                  cent in September 2002 from 5.04 per cent in September 2001.<br>
                  The domestic weighted average overnight inter bank lending 
                  rate fell to 0.74 per cent in September 2002 from 2.05 per 
                  cent in September 2001. Similarly, the weighted average 
                  domestic Treasury Bill (T-Bill) yield rate for 91 days fell to 
                  0.87 per cent in September 2002 from 2.33 per cent in 
                  September 2001. 182 days T-Bill rate fell to 0.94 per cent in 
                  September 2002 from 2.61 per cent in September 2001, whereas 
                  364 days T-Bill yield rate fell to 1.34 per cent in September 
                  2002 from 3.43 per cent in September 2001. <br>
                  <br>
                  Money market rates (both 90 days and 182 days) are showing a 
                  stabilising trend since March 2002. The comparative movement 
                  of 91 days T-Bill rates in Oman and the US shows that the rate 
                  in Oman has fallen steeply during Q1 of 2002 and the gap 
                  between both the rates remain significant in 2002. <br>
                  <br>
                  <b>Other indicators</b><br>
                  The total assets of the commercial banks increased to RO4,288 
                  million in September 2002 from RO4,043 million in September 
                  2001. The ratio of core capital and reserves to total deposits 
                  marginally declined to 15.6 per cent in September 2002 from 
                  16.2 per cent in September 2001.The ratio of provisions and 
                  reserve interest to total credit increased to 8.9 per cent in 
                  September 2002 from six per cent in September 2001. </font>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>