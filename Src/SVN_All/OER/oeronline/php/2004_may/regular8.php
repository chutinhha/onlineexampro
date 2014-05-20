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
            <td width="70%" bgcolor="#FFFFFF">
            <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
            Scan</font></p>
            <p align="center"><font face="Verdana" size="2"><b>
            <a href="http://www.business.com">www.business.com</a></b></font></p>
            <p align="center"><font face="Verdana" size="1">
            <img border="0" src="im39.jpg" width="250" height="186"></font></p>
            <p align="justify"><font face="Verdana" size="1">This site 
            classifies businesses according to different fields like accounting, 
            advertising, management, financial services, etc. It further 
            classifies these into subfields. For example, financial services are 
            classified into asset management, investment banking, insurance and 
            so on. Also informs the user as to popular categories of the 
            business directory like Advertising and Marketing, Computer and 
            Software, Telecommunications. Business.com listings appear on C|net, 
            Business Week, Inc.com. This site displays a list of all companies 
            registered with them under your chosen field and takes you to the 
            company’s Website. It also provides news and jobs available in 
            different fields. It’s a simple and straightforward site with 
            emphasis on providing information only and linking to the company’s 
            Website.</font></p>
            <p align="center"><font face="Verdana" size="2"><b>
            <a href="http://www.fortune.com">www.fortune.com</a></b></font></p>
            <p align="center">
            <img border="0" src="im38.jpg" width="250" height="191"></p>
            <p align="justify"><font face="Verdana" size="1">A professional 
            Website offering current, financial, political and health news and 
            updates. The Website lists the most desirable companies you can work 
            for, the most admired companies, the fastest growing companies, best 
            investments and even companies for minorities. The site caters to 
            every kind of company you could think of while job hunting or doing 
            a comparative analysis. It’s a countdown of sort of companies. Other 
            than news it gives you tips on investing, CEO biographies, careers 
            available, different technologies to be released, how-tos on 
            different topics… it’s a warehouse of information putting across <br>
            information in a light though to-the-point manner.</font></p>
            <p align="center"><font face="Verdana" size="2"><b>
            <a href="http://www.ibd-business.de">www.ibd-business.de</a></b></font></p>
            <p align="center">
            <img border="0" src="im37.jpg" width="250" height="187"></p>
            <p align="justify"><font face="Verdana" size="1">This is an 
            International Business Directory available also in a book and CD 
            form. The Website provides fax numbers and addresses of over a 
            million companies from 175 countries. All electronic publications 
            features the clients’ own hyperlinks to their Website as well as a 
            direct link to their e-mail address. It also lists more than 8,500 
            products and services terms in four different languages and includes 
            numerous lines of businesses. This Website connects you 
            automatically within the most important lines of business in the 
            official Yellow-Pages-Databank of all the largest industrial nations 
            of the world.</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>