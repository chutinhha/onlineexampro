<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - July 2003 ::</title>
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
            <td width="1%" bgcolor="#FFFFFF">&nbsp;<p>&nbsp;</p>
            <p>&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="4" color="#FF0000">
            Gizmos&nbsp;
                  </font>
            <p><font face="Verdana" size="1">PDAs to please all pockets The PDAs 
            marketplace is all about choice. The latest PDA developments include 
            a flood of combo models - PDAs that also double as cell phones, 
            digital cameras and MP3 players. And they come in all shapes and 
            sizes. More importantly, they come with a variety of price tags. In 
            a device this small, however, multi-functionality has its limits, 
            and even the most expensive models can sometimes miss the mark. For 
            the PDA-phile, OER profiles the latest available to match every 
            pocket. </font></p>

            <p><font face="Verdana" size="1"><b>
            <img border="0" src="Gizmos-PalmZireBlue.jpg" width="125" height="149" align="left" hspace="5" vspace="5">Palm Zire Limited Edition</b>
            <br>
            Palm may have actually taken a step backwards with this 
            stripped-down model; the Zire costs little more than one of those 
            fancy paper day planners, and that seems to be the whole idea. Palm 
            is aiming to convert paper users to electronic without making a big 
            investment - and for keeping track of your contact information, it 
            does just fine. The monochrome Zire has 2MB of memory and comes with 
            basic Palm software to get you up and running, but forget about 
            playing MP3s and storing digital - this PDA doesnÕt have the bells 
            and whistles. Price range: US$87 (RO33.46) - US$100 (RO38.46) </font></p>

            <p><font face="Verdana" size="1"><b>
            <img border="0" src="Gizmos-SonyCLIEPEG-SJ20-1.jpg" align="right" hspace="5" vspace="5" width="150" height="147">Sony CLIE PEG-SJ20<br>
            </b>If you use your PDA mainly for contact management - that is, to 
            keep track of the names, addresses, and to-do lists that youÕd 
            otherwise write on scraps of paper - the Sony CLIE PEG-SJ20 is the 
            best basic monochrome (B&amp;W) unit. With 16MB of memory and a 
            high-resolution (320 x 320 pixel) screen, it holds thousands of 
            addresses, memos, and to-do items. Yes, it lacks a sync cradle and 
            Mac software, but it does have a rechargeable battery. The CLIE runs 
            on the Palm 4.1 OS, but doesn't morph into a cell phone or MP3 
            player like the more expensive models. Price range: US$130 (RO69.23) 
            - US$150 (RO57.69) </font></p>

            <p><font face="Verdana" size="1"><b>Sony PEG-NZ90 CLIE</b> <br>
            <img border="0" src="Gizmos-SonyPEG-NZ90-CLIE-1.jpg" align="left" hspace="5" vspace="5" width="125" height="206">The new Palm-powered PEG-NZ90 CLIE handheld pushes the envelope of 
            handheld computing, featuring the new Palm OS 5.0 as well as an 
            ARM-compliant 200 MHz CPU. The built-in 2-megapixel camera supports 
            UXGA resolution (1,600 x 1,200), and includes several enhancements. 
            Built-in Bluetooth technology allows you to pair your CLIE handheld 
            with other Bluetooth-compatible peripheral devices. The PEG-NZ90 is 
            also equipped with a wireless communication slot for adding an 
            optional wireless LAN (802.11b) card. Another new feature is the 
            removable lithium-ion rechargeable battery pack. Price range: 
            US$619.95 (RO238) - US$799.99 (RO307.69)</font></p>

            <p><i><font face="Verdana" size="1">Note: This is an indicative - 
            and not an exhaustive - list. These products are available online at 
            a number of dealers, including Amazon.com, EBay.com, BizRate.com, 
            DealTime.com and PDABuzz.com besides the manufacturers' own 
            Websites. Different dealers may offer different prices for these 
            products. Shipping charges not included. </font></i></p>

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