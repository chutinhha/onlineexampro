<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - January 2004 ::</title>
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
            <p align="justify"><font size="4" color="#FF0000" face="Verdana">
            Tech review<br>
                  </font><font face="Verdana" size="2"><br>
                  </font><font size="1" face="Verdana"><b>Epson launches printer 
            for high-res printing without a PC</b><br>
            <br>
            <img border="0" src="tech1.jpg" align="left" hspace="5" vspace="2" width="130" height="98">Epson, 
            the global manufacturer of award-winning, high quality digital 
            imaging products, has recently announced the launch of the EPSON 
            Stylus Photo R300 printer in the Middle East market. The Stylus 
            Photo R300 printer is the first standalone long lasting premium 
            quality photo printer offering digital camera users a range of 
            innovative standalone and printing functionalities. Giving users 
            more flexibility than ever before, this standalone device is 
            compatible with the widest selection of digital cameras available in 
            the region.<br>
            <br>
            &quot;Capitalising on the recent trend of using digital cameras and 
            mobile phones with built-in cameras to capture images instantly, 
            Epson has introduced the standalone Stylus Photo R300 photo printer 
            to give our consumers in the Middle East more flexibility than ever 
            before. Consumers in the region demand the latest and most 
            technologically advanced printing solutions, and we are confident 
            that the Stylus Photo R300 will be well received here,&quot; said Khalil 
            El-Dalu, general manager, Epson Middle East. <br>
            <br>
            The Stylus Photo R300 printer's functionalities include printing of 
            high-resolution photos, personalising CDs and the storage of images 
            without the need for a PC. &quot;The Stylus Photo R300's unique printing 
            functionalities, easy-to-use options and cost-effectiveness makes it 
            ideal for both the experienced digital photographer looking for the 
            highest quality photo output, as well as for the amateur user 
            requiring the ease and convenience of standalone printing. The 
            printer also offers several add-on features so that the user can 
            tailor it to perform specific tasks, depending on the need,&quot; added 
            El-Dalu. <br>
            <br>
            Proving its high-speed professional functionality, the Stylus Photo 
            R300 is equipped with a new printer engine for high-speed output, 
            producing a 10x15cm photo in less than one minute, all at a premium 
            resolution of 5760x1440dpi, even in standalone mode. The printer is 
            also available in an optional monitor version with a 2.5&quot; LCD colour 
            preview monitor, for easy selection of images, by even 
            non-technology literate users. <br>
            <br>
            In addition, the printer is equipped with a new MicroPiezo print 
            head technology with 90 nozzles per colour guaranteeing high 
            definition lab style photos and dramatically faster throughput. The 
            Stylus Photo R300 supports the latest direct print industry 
            standards including Pictbridge technology and USB (universal serial 
            bus) Direct-Print. The improved memory card support means the device 
            can support nine different types of memory cards without the need 
            for an adapter. <br>
            <br>
            Apart from offering wireless connectivity through a Bluetooth 
            interface, the printer also supports wireless LAN 802.11b through an 
            EPSONNet 802.11b wireless external print server, for longer range 
            communication and networking between devices. <br>
            <br>
            <b>Outsourcing IT services gaining popularity in the Middle East <br>
            </b><br>
            <img border="0" src="tech2.jpg" align="right" hspace="5" vspace="1" width="125" height="180">According 
            to a worldwide survey by the Gartner group, only 28 per cent of all 
            projects are successful. While reasons for failure range from lack 
            of planning to insufficient resources, experts agree that companies 
            often do not realise the importance of deploying and managing the 
            right network infrastructure and solutions. However, the situation 
            is slowly changing as an increasing number of businesses in the 
            Middle East are outsourcing IT management services. This was 
            highlighted at the Performing Network seminar held by Equant, a 
            global network and integration services provider and its local 
            partner, Eastern Networks. <br>
            <br>
            The seminar featured IT and telecom experts from the UK and Saudi 
            Arabia who gave presentations and demonstrations on subjects ranging 
            from IP telephony to voice, video and data convergence. According to 
            Darren Stratton, account manager, Eastern Networks Middle East: 
            &quot;While networks can deliver enormous value, due to their complex 
            nature, they can cause enormous headaches too. We have seen a sharp 
            increase in demand for outsourcing By outsourcing network 
            integration management to an expert in the field, companies can 
            divert their time and effort to other strategic matters.&quot; </font>
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