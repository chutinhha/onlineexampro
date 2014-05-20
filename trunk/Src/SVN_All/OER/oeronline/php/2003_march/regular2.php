<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - March 2003 ::</title>
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
            Downturn starts<br>
                  </font><b><font face="Verdana" size="1"><br>
              After a good rally for the past two months, the MSM Index 
            witnessed a downward trend. OER checks out the market rally</font></b><p>
            <font face="Verdana" size="2">The Muscat Securities Market's index 
            dropped nearly one per cent in February to 192.41 points, dragged 
            down by investors looking to make a quick profit during the month 
            after the bourse has rallied for two consecutive months. <br>
            Oman Holdings International, which has reported 92 per cent higher 
            net profit in 2002 of RO529,000, was the biggest loser of the month 
            losing 700 baisas to RO1.430 followed by ONIC Holding shedding 320 
            baisas to RO1.880. <br>
            Gulf Investment Services (GIS) led gainers when its share price 
            climbed 220 baisas to 820 baisas and Oman International Bank (OIB), 
            whose net profit soared by 800 per cent to RO18.51 million in 2002, 
            made 100 baisas to RO1.890. <br>
            OIB has announced in February that it was planning to expand its 
            operations to brokerage during the second quarter of the year. The 
            bank will be the fourth financial institution to start a brokerage 
            company in the country after BankMuscat, National Bank of Oman and 
            Oman Arab Bank.<br>
            Total turnover in the market during February has dropped to 464,000 
            shares worth RO450,000 compared to 630,000 shares valued at 
            RO715,000 in the previous month. <br>
            The share price performance of the bank and investment sector 
            dropped by nearly 0.4 per cent in February 2003, industrial sector 
            by one per cent and services sector lost 0.3 per cent compared to 
            January 2003. <br>
            Analysts said that new fund injections planned by some listed 
            companies would boost trading and improve the market liquidity.<br>
            It is good to see the restructuring of some companies in terms of 
            capital. We also welcome the news that Al Omaniya is going to issue 
            bonds. All these activities will keep investor confidence high, said 
            Dinesh Ahuja, analyst at Gulf Investment Services. <br>
            Al Omaniya Financial Services is planning to issue bonds worth RO5 
            million this year to expand its operations. The company, whose 
            shares dropped by 100 baisas to RO2.450 in February, has declared a 
            net profit rise of 21 per cent to RO1.420 million in 2002. It has 
            proposed a cash dividend of 20 per cent to its shareholders. <br>
            Last year, United Finance Company became the first non-bank company 
            to sell bonds to the public, when it floated a RO5 million issue.<br>
            Al Anwar Ceramic Tiles Company has decided to increase its capital 
            by RO1 million to RO3.5 million. The firm has also approved plans to 
            expand its plant capacity by over fifty per cent with an investment 
            of about RO3.3 million.</font></p>
            <p align="center">
            <img border="0" src="msm.jpg" width="427" height="544"></p>
                    <hr color="#CC3333">
                    <p>&nbsp;</td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
          </tr>
          
        </table>
        </div>
      </center>
        </table>
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
<p>
        <?}
else 
Header("Location:/inc/error.php");
?>
        </body>
        </html>