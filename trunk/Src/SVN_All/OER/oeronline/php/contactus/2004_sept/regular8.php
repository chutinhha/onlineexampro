<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - September - 2004 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF" valign="top">
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">Web 
            Scan<br>
            <br>
            </font><b><font face="Verdana" size="1">OER reviews Websites related 
            to the oil &amp; gas industry</font></b></p>

<p align="center"><font face="Verdana" size="1">
<a target="_blank" href="http://www.opec.org">www.opec.org</a></font></p>

<p align="justify"><font face="Verdana" size="1">
<img border="0" src="im5.jpg" align="left" hspace="5" width="200" height="167">This 
is the official Website of Organisation of Petroleum Exporting Countries (OPEC), 
the international organisation of 11 developing countries that are heavily 
reliant on oil revenues as their main source of income. The Website provides and 
compiles information on the member countries, oil and petroleum related topics 
and gives general information about the organisation. A link on the Website 
provides the speeches made by the organisation’s secretary general and other 
officials. The following publications can be downloaded from the Website: 
Monthly Oil Market Report, Annual Statistical Bulletin, the OPEC Annual Report, 
the OPEC Statute and the monthly OPEC Bulletin. The FAQ link provides answers to 
the most frequently asked questions about OPEC. Besides, the section also 
provides information about each member country.</font></p>

            <hr color="#CC3333" size="1">

<p align="center">
<font face="Verdana" size="1"><a target="_blank" href="http://www.shell.com">www.shell.com</a></font></p>

<p align="justify">
<font face="Verdana" size="1">
<img border="0" src="im6.jpg" align="right" hspace="5" width="200" height="160">The official Website of Shell, a global group of energy and petrochemicals
companies, provides information about the company
and the petrochemicals industry. It also enlists the commitments,
policies and standards Shell follows. The Shell directory
link takes the surfer to his chosen Shell country and its business
Websites around the globe. The ‘Shell for Home’ link offers
information about a range of products and services for the home.
Similarly, Shell for Businesses offers information about oils,
fuels, financial services, dynamic business solutions etc. The site
has an Investor Centre, which provides latest information on
proved reserves restatement, latest details about share buyback
programme of the company and the latest share price of The
Royal Dutch/Shell Group of Companies. The online media centre
on the Website provides latest news from Shell.</font></p>

            <hr color="#CC3333" size="1">

<p align="center">
<font face="Verdana" size="1"><a target="_blank" href="http://www.bp.com">www.bp.com</a></font></p>

<p align="justify">
<font face="Verdana" size="1">
<img border="0" src="im7.jpg" align="left" width="200" height="163">The official Website of British Petroleum gives all information that a
surfer may need about the company and its products and services. ‘On
the road’ link gives information about fuels and stations, fuel cards,
gas (LPG), lubricants, route planner, roadside assistance to the surfer.
‘For the home’ section allows the user to check details about gas (LPG)
and solar items. Lastly the ‘For business’ link caters to the business
needs of a user, where information about fuels, fuel cards, gas and
power, lubricants, solar and renewables, petrochemicals and bitumen
etc can be checked. ‘Environment and society’ link on the site tells
about BP as a company that respects the environment and contributes
to social progress of the society. There is a separate section for the
investors on the site. This section gives key information for ordinary
shareholders. Information on latest presentations and key news can
also be accessed. Surfers can sign up for BP news and alert service.
</font></p>

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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>