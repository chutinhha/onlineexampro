<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - November 2003 ::</title>
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
          </center>
            <td width="70%" bgcolor="#FFFFFF" valign="top">
              <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
              scan </font>
              
              <center>
                    <p align="left"><font face="Verdana" size="1">
                    <b>This month, OER reviews websites that help corporates 
                    measure consumer satisfaction. These websites provide tools 
                    to understand specific and actionable ways that drive 
                    satisfaction of key customer segments and provide tips on 
                    how to increase it </b></font></p>
              </center>
              <p align="left"><font face="Verdana" size="1">
              <font color="#FF0000"><b>
              <img border="0" src="web1.jpg" align="right" hspace="5" vspace="5" width="185" height="137">Matrix of marketing</b></font><br>
              <a href="http://www.marketingmetrics.com">
              http://www.marketingmetrics.com</a><br>
              Marketing Metrics is a renowned marketing consulting firm and an 
              expert in the measurement and improvement of customer 
              satisfaction. The Website of the company provides new techniques 
              and processes for analysing and interpreting customer 
              satisfaction. Besides assessing customer satisfaction, the site is 
              full of information to maximise customer retention, a big problem 
              in today's business world. The site provides strategies like 
              database building, customer communication tactics, satisfaction 
              measurement, complaint and compliment handling and lost customer 
              initiatives information to increase customer satisfaction. <br>
              <br>
              <font color="#FF0000"><b>
              See for yourself </b></font><br>
              <a href="http://www.ForeSeeResults.com">
              http://www.ForeSeeResults.com</a> <br>
              <b>
              <font color="#FF0000">
              <img border="0" src="web3.jpg" width="183" height="132" align="left"></font></b>ForeSeeResults is a top-rated Website for satisfaction survey 
              development. The company helps its clients in surveying and 
              managing online customer satisfaction. The site works according to 
              the reputed methodology of the University of Michigan's American 
              Customer Satisfaction Index (ACSI), a respected, credible and 
              well-known measure of Website satisfaction. ForeSee, not only 
              specialises in converting satisfaction data into user-driven Web 
              development strategies, but also helps its clients in 
              distinguishing the elements that drive online customer 
              satisfaction. Besides, the site helps companies in predicting 
              future behaviours of consumers, like the impact of future 
              purchases, return visits, referrals and other desired behaviours. 
              It is of great help to those interested in online customer 
              satisfaction management. <br>
              <br>
              <font color="#FF0000"><b>
              <img border="0" src="web2.jpg" align="right" hspace="5" vspace="5" width="183" height="134">Indexing satisfaction </b></font><br>
              <a href="http://www.theacsi.org">http://www.theacsi.org</a><br>
              The Website of American Customer Satisfaction Index is the only 
              uniform, national, cross-industry measure of satisfaction with the 
              quality of goods and services available in the US. Rated as a 
              standard metric for measuring citizen satisfaction, the site 
              serves over 55 Federal government agencies to measure citizen 
              satisfaction. Its index is a strong powerful economic indicator, 
              which shows the current trends in customer satisfaction. The ACSI 
              helps its corporate subscribers to calculate the net present value 
              of their company's customer base as an asset over time. It 
              provides insights of the consumer economy for companies, industry 
              trade associations, and government agencies. It serves as a 
              strategic business tool for client companies to improve their 
              customer satisfaction.<br>
&nbsp;</font></p>
              
              <center>
                    <hr color="#CC3333">
              </center>
                    </td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
          </tr>
          
        </table>
        </div>
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