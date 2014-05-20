<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - July - 2004 ::</title>
</head>

<body topmargin="0" leftmargin="0">


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

<p align="justify"><font size="4" color="#FF0000"><font face="Verdana">Gulf Air: 
Turning around in mid-air </font></font></p>

<p align="justify"><font face="Verdana" size="1">
<img border="0" src="gulf.jpg" align="left" hspace="6" width="147" height="163">Gulf Air began operations in 1950 as the Gulf Aviation Company serving oil 
companies around the region. Its majority shareholder at that time was British 
Overseas Aircraft Corporation (BOAC), now British Airways. Operating in its 
early years predominantly as an intra-regional carrier, it was not until 1970 
that the airline launched its intercontinental service with the start of 
operations to London. In 1974, seeking a Gulf-owned, Gulf flag-carrier, the 
governments of Abu Dhabi, Bahrain, Qatar and Oman purchased the shares from BOAC 
and renamed the airline. Gulf Air was born. <br>
<br>
Rapid corporate expansion followed with an increasing number of routes becoming 
available to major commercial destinations in the Middle East, Europe, Africa, 
Asia and the Far East. Over the years, and especially in the wake of 9/11, the 
airline accumulated huge losses. Even in 2000, the airline lost nearly $100 
million (RO38.5 million). Then, in May 2002, when the total debt of Gulf Air 
stood at around $800 million (RO307.7 million), Qatar, one of the strategic 
equity shareholders of Gulf Air, pulled out of the venture, further compounding 
its woes. <br>
<br>
Over the past two years, Gulf Air embarked on a major transformation program, to 
drive the changes that are setting the airline back on track as a commercially 
viable, modern world-class airline. One of the most noticeable changes was the 
introduction of a new corporate identity. Central to Gulf Air's resurgence is 
the enhanced range of products and services it offers, such as the In-Flight 
Chef and Sky Nanny, to meet the needs of the multi-segmented market. Last year 
also saw the re-launch of the airline's loyalty program, which was established 
in 1994. <br>
<br>
Changes in the air are complemented with those on the ground. In early 2004, the 
airline opened a state-of-the-art dedicated lounge for First and Business Class 
passengers at Bahrain International Airport. Last month, Gulf Air, in 
partnership with local entrepreneur and premium distributor for books and 
newspapers in the Middle East, Jashanmal &amp; Sons, launched another unique service 
known as the Bookshop in the Sky. <br>
<br>
Gulf Air is re-aligning its offering to address the growing demand for more 
adventurous travel and a move away from mainstream destinations. In conjunction 
with the local tourism ministries in the Kingdom of Bahrain, the Sultanate of 
Oman and Emirate of Abu Dhabi, Gulf Air launched a new tourism initiative, 
Arabian Experience Destination Services.<br>
<br>
In its 'back-office' operations, Gulf Air opened the region's first Worldwide 
Customer Contact Centre in Oman, where the airline has created a single-point 
contact for customers to facilitate a seamless customer service operation. Other 
innovations include self-service electronic check-in kiosks at regional hubs, 
worldwide SMS notification technology and a downloadable version of the 
timetable - all firsts for a Middle Eastern airline. Another significant first 
was the recent recruitment of the region's first female pilots. <br>
<br>
All this seems to be paying off, as is evident from the record passenger figures 
for 2003, when six million passengers flew on Gulf Air flights to more than 50 
destinations around the network. This is the highest number ever carried in a 
single financial year by the airline. In fact, as recognition of the changes 
brought about by James Hogan, the airline's new CEO, the airline was honoured 
with the prestigious Airline Turnaround of the Year Award by the Centre for Asia 
Pacific Aviation (CAPA) in 2003 and was selected as a one of the leading and 
most recognised brands in the UAE by the Superbrands Council besides a host of 
other awards and recognitions that it has been garnering since 2003.. </font></p>

                    <hr color="#CC3333">
                    <p><font face="Verdana" size="1" color="#CC3333"><b>Other
                    Headlines<br>
                    </b></font><font face="Verdana" size="1" color="#FF0000">
                    <a href="main2.php">The adaptive 
enterprise</a><br>
                    <a href="main2b.php">GONDP: Juicing up sweet success</a></font><p>&nbsp;</td>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>