<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - February - 2005 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF">
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">:: 
            by invitation</font></p>
            <p align="justify"><font size="4" color="#FF0000">
            <font face="Verdana">E-volve!</font></font></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="0" src="im33.jpg" align="left" hspace="5" width="100" height="117">Everybody 
            loves the Internet; if you are a teenager, chat is cool, and the 
            ability to retrieve information about so many things is truly 
            miraculous, even if some search engines are a bit clunky. And 
            despite early misgivings about credit card security, shopping on the 
            Net—especially for books, CDs, DVDs, airlines and hotel special 
            offers—is convenient and economical, and is getting increasingly 
            popular.<br>
            <br>
            Today, it may seem painfully obvious that companies should seek to 
            serve customers in as many venues as possible: online, by phone, 
            fax, by mail or in person. Some industries, notably airlines and 
            banks, have mastered the bricks-and-clicks integrated approach. 
            However, even as some Web-only companies seek desperately to get a 
            foothold in the physical world, several traditional companies 
            continue to dither about getting online because they worry about 
            competing with their existing distributors and retailers. <br>
            <br>
            In their initial Web strategies, many traditional retailers thought 
            that only a distinct Web unit would give them the quick charging 
            personality needed to survive on the Internet. That notion has lost 
            its allure because it made inventory co-ordination—let alone 
            marketing, sales and other key operations—impossible.<br>
            <br>
            Today, hybrid retailers—i.e., traditional retailers with thriving 
            e-commerce operations—are linking bricks with clicks in many 
            different ways. Menu Pricing and Option Bundling are two of them. 
            Menu pricing explicitly addresses the cost/value trade-offs and 
            increases price and inventory transparency in the retail industry 
            value chain. Through menu pricing, companies offer customers either 
            better service or significant price discounts, sometimes both, to 
            encourage their retail trade customers to change buying behaviour 
            and improve the economics of the overall value chain.<br>
            <br>
            Option bundling, the bundling of choices into a pre-defined set of 
            options when possible, offers a particularly powerful way to keep 
            policies simple. Looking at the airlines industry, in addition to 
            pricing differences, airlines offer a host of different services and 
            levels of flexibility to customers paying premium prices. As 
            customers develop a clear understanding of the options, companies 
            are better able to differentiate customer segments, offering more 
            value by better matching specific needs. The best companies keep a 
            forward eye on changing economics and customer value perceptions to 
            anticipate these trends in each new evolution of their programs.<br>
            <br>
            The challenge going forward is to create new demand, what we call 
            market space. New market space is about creating a company’s future. 
            Companies continue to mine their wealth from an existing market 
            space – that’s maintenance. But there is something more – the act of 
            creation. If you offer buyers hugely improved value, you give birth 
            to new markets. <br>
            <br>
            The big issue is not whether e-commerce will proceed; it is too 
            powerful to stop. Every major company today must evolve operations 
            to harvest the enormous value potential sown by the Internet. With a 
            bit of ingenuity, Web technology that can turn a product or a 
            service into a commodity can also turn it back into an experience. 
            The Internet with its round-the-clock, round-the-week availability 
            raises customer expectations. Richer communications and close 
            contact with the customer fostered by the Net makes it possible to 
            meet these expectations. The Internet may be revising the rules of 
            business, but it is not repealing the laws of economics.</font></p>
            <hr color="#C0C0C0" size="1">
            <p align="justify"><i><font face="Verdana" size="1">The author is 
            Country Manager (Oman &amp; Yemen), British Airways. The views contained 
            within this column are those of the author and do not necessarily 
            represent those of her organisation or OER.</font></i></p>
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