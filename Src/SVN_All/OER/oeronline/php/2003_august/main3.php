<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - August 2003 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF">
            <font size="4" color="#FF0000" face="Verdana">Public or private?</font>
            <font face="Verdana"><font size="4" color="#FF0000"><br>
            </font><font color="#FF0000" size="1">&nbsp;</font><font size="4" color="#FF0000"><br>
            </font></font>
            <font face="Verdana" size="1"><b> Khalid Khan looks at new legislation governing Omani companies and examines the virtues of a listed company going private rather than staying
            public</b><br>
            <br>
            <img border="0" src="khan.jpg" align="left" hspace="5" vspace="5" width="150" height="144">The recent flurry of new legislation affecting public joint stock companies has caused quite a stir in Omani business circles, and has already produced a number of positive results. Essentially, the new legislation aims to safeguard the general public and to boost their confidence in investing in companies listed on the Muscat Securities Market (MSM).&nbsp;<br>
 It seeks to achieve this by means of a two-pronged strategy: firstly, by appointing the Capital Market Authority (CMA) as the regulatory body responsible for supervising joint stock companies; and secondly, by the introduction of new rules designed to ensure that the boards and senior managers of public joint stock companies (i.e., companies in which members of the public can invest) are more accountable to their
            shareholders.<br>
            This strategy appears to be working. Public joint stock companies in Oman are scrambling to ensure that they comply with the new rules, which, inter alia, require:<br>
            * The establishment of audit committees.<br>
            * The appointment of an internal auditor and a legal advisor.<br>
            * The adoption (before October 1, 2003) of internal regulations relating to the management of the company and its
            business.<br>
            * Changes to Articles of Association to comply with the new rules (which must be completed before the date of their next General Meeting at which directors will be
            appointed).<br>
            * With effect from the next election of directors, for a majority of directors to be non-executive, for at least one-third of directors to be independent, and for a juristic person to be barred from having more than one representative on the board.<br>
            The new rules have resulted in a significant shake-up in the market as companies are forced to comply with the new, higher standards of accountability, transparency, disclosure and good governance applicable to public joint stock companies, or to convert themselves into closed joint stock companies (private companies prohibited from raising capital from the public), which are subject to a lesser degree of supervision and regulation.<br>
            The senior management of Oman's top companies are split. Some seem willing to accept the greater administrative and financial cost of complying with the new regime as
            'the price of doing business' as a public joint stock company in Oman. Others, reluctant to accept the increased regulation and cost that now comes with being a public joint stock company, are considering converting into closed joint stock (private) companies despite rumours of the impending abolition of such companies.<br>
            Whilst not attractive to all companies, it is becoming increasingly appealing for public companies worldwide to
            'go private'. Over the last four years, the value of public companies going private each year in Europe alone has ranged between US$11 billion (RO4.23 billion) and US$15.4 billion (RO5.92 billion).<br>
            According to the Economist magazine, there are good reasons to go private: after three years of falling share prices worldwide, many profitable, well-run public companies are trading cheaply, often below the book value of their assets. At such prices, one of the main reasons for being public - the ability to raise capital - hardly applies. Nor is there much chance of making an acquisition using the company's shares as currency. The senior managers and boards of private companies also have greater control and face less intrusive scrutiny from the authorities than those of public companies.<br>
            Following the latest series of corporate governance reforms affecting public companies worldwide, the freedom from interference which comes with going private is clearly attractive to some boards and senior management which wish to rid themselves of the administrative and financial burden of complying with the detailed requirements of being listed on the stock exchange. The other possible advantage is freedom for shareholder lawsuits. For example, it is estimated in the US that insurance costs for directors and senior managers have quadrupled over the last year.&nbsp;<br>
 Whether Omani public joint stock companies decide to convert into closed joint stock companies or accept the greater cost and regulation which comes from being a public, listed company, the recent legislative changes here have already succeeded in establishing a legal framework for public companies which: (a) reduces the risk of loss to small investors by fraud or mismanagement, and (b) has focused management attention squarely on corporate governance issues.&nbsp;</font>
            <p><font face="Verdana" size="1"><i> The author is a corporate lawyer at Denton Wilde Sapte's office in Oman</i></font></p>
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