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
          </center>
            <td width="70%" bgcolor="#FFFFFF" valign="top">
              <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
              scan </font>
              
              <center>
                    <p align="left"><font face="Verdana" size="1"><b>This month, OER profiles Websites that deal with all aspects of branding -&nbsp;<br>
                    conceiving, building, marketing, managing, protecting and growing brands<br>
                    Brand battles</b></font></p>
                    <p><img border="0" src="web3.jpg" width="200" height="175"></p>
              </center>
              <p align="left"><font face="Verdana" size="1"><b>The BuildingBrands&nbsp;</b><br>
              <a href="http://www.buildingbrands.com">http://www.buildingbrands.com</a><br>
 Website offers sound and effective brand management advice to business, thus helping them in generating revenues and creating enduring brand value. It helps companies fight duplication by helping clients in building a brand that is unique and powerful, one that can give a tough fight to cheaper imitations. The site has loads of free content, which includes entire sections of articles, illustrations and anecdotes from the world of brand-led marketing - to both entertain and inform. Plus, itÕs a great place to hone your brand management skills and knowledge with the interactive learning content of the site - brand management games and quizzes. Besides, the premium services offered by the site, like executive coaching and online training, are especially designed to educate and help business managers, business owners, young executives or students by making them aware of the nitty-gritty of marketing and brand management.</font></p>
              <p align="center">
              <img border="0" src="web1.jpg" width="200" height="152"></p>
              <p align="left"><font face="Verdana" size="1"><b>Brand e-wareness</b><br>
              <a href="http://www.brandintelligence.com">http://www.brandintelligence.com</a><br>
              BrandIntelligence. com helps and provides service to brands that conduct business through e-commerce. With online business comes the threat of hackers and cyber-squatters. This site is especially designed and developed to offer maximum online security against such threats. It helps businesses protect their intellectual property in the new medium. It also helps companies increase awareness about their brands. BrandIntelligence.com locates and reports areas and instances of brand risk, vulnerability, counterfeit goods, diverted goods, brand damage and brand abuse. Besides, it gives expert opinion in search technology, multi-territory online marketplaces, online brand risk and brand ring fencing.&nbsp;</font></p>
              <p align="center">
              <img border="0" src="web2.jpg" width="200" height="151"></p>
              <p align="left"><font face="Verdana" size="1"><b>Brandishing brands</b><br>
              <a href="http://www.marketingprofs.com">http://www.marketingprofs.com</a><br>
              This site is perfect if you want marketing know-how from professionals and professors. It especially caters to companies about to launch new brands. It helps them in the difficult task of positioning a brand-spanking-new product when the market is unaware of its existence. The site helps companies to establish their brands online by offering a whole lot of information on email marketing, marketing strategy on Net, copy and content to be used, usability, customer analysis, marketing metrics, research methods, advertising/PR, search marketing, global marketing and selling. It helps companies in making brands relevant online and thereafter helping them to successfully extend it. Plus, it has a rich archives section, which offers a wealth of marketing know-how, organised by topics, which are regularly updated.</font></p>
              
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