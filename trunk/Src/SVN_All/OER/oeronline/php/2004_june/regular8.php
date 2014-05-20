<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - June - 2004 ::</title>
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
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">Web 
            Scan<br>
            <br>
            </font><font face="Verdana" size="1"><b>Travelling for work or 
            pleasure has become an inevitable part of our lives. OER lists a few 
            Websites that offer international mobile services to help you be in 
            touch with the world wherever you maybe.</b></font></p>
            <p align="center"><a href="http://www.business.com"><b>
            <font face="Verdana" size="2">www.cellularabroad.com</font></b></a></p>
            <p align="justify"><font face="Verdana" size="1">Travellers and 
            businessmen on the go would benefit greatly with this Website. One<img border="0" src="web1.jpg" width="240" height="174" align="right" hspace="5" vspace="2"> 
            phone, one number, anywhere in the world, is the motto of Cellular 
            Abroad. The online cellular service provider, Cellular Abroad offers 
            the users with the opportunity to use the cell phone service from 
            almost any part of the world. The Website provides complete 
            information on the countries the international service is available 
            (around 85), the rates, how to buy/rent the GSM phones required for 
            this service and the places where the recharge cards for the service 
            are sold. The Website also provides information on the satellite 
            phone services of the mobile communication provider. All the details 
            that would be required to know about their services are clearly 
            outlined on the Website. Users are also provided with the 
            opportunity to purchase GSM accessories required online through the 
            Website.</font></p>
            <p align="center"><a href="http://www.fortune.com"><b>
            <font face="Verdana" size="2">www.worldcell.com</font></b></a></p>
            <p align="justify"><font face="Verdana" size="1">WorldCell is for 
            those who do not intend to buy an international GSM, mobile or<img border="0" src="web2.jpg" width="240" height="171" align="right" hspace="5" vspace="2"> 
            satellite connection, but would rather rent it when required. 
            WorldCell provides global wireless phone rentals for international 
            travellers. And this can be done either at the country of domicile 
            or even from the country you are travelling too, making this a very 
            convenient service. Whether you want to rent an international cell 
            phone, global satellite phone or even a domestic cell phone, the 
            Website provides in-depth info on how you can go about choosing the 
            right connection. The cellular airtime rates on this Website are 
            provided in a clearer manner than a few others with detailed 
            description of the pulse points and also roaming charges. You also 
            have the option of buying international phones online. The list of 
            the corporate and service-offices of WorldCell around the world is 
            quite handy.<br>
&nbsp;</font></p>
            <p align="center"><a href="http://www.ibd-business.de"><b>
            <font face="Verdana" size="2">www.thuraya.com</font></b></a></p>
            <p align="justify"><font face="Verdana" size="1">This site gives you 
            all the information that you would require a<img border="0" src="web3.jpg" width="240" height="172" align="right" hspace="5" vspace="2">bout 
            one of the well-known satellite communication service providers, 
            Thuraya Satellite Communicatio</font><font face="Verdana" size="1">ns 
            Company. Comprehensive yet concise, the Website has various options 
            to choose from for those planning to opt for satellite 
            communication. One of the interesting features of the Website is the 
            detailed information on the service providers in various counties 
            who have tied with Thuraya. The site also provides customers with 
            the option of buying Thuraya online. Call charges around the world 
            for Thuraya are also provided on the Website. You can also get all 
            the information required on the various services of Thuraya like 
            subscription benefits, SMS, roaming facilities, prepaid-service 
            option and rate cards. And thereÕre lots more services and products 
            to choose from. To cut it short, this Website is exhaustive yet 
            user-friendly. Even if it's just to keep abreast of the satellite 
            communication world, this site is worth a visit.</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>