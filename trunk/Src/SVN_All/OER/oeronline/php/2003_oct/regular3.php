<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - October 2003 ::</title>
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
            Gizmos</font><p><font face="Verdana" size="1"><b>Timeless timepieces</b><br>
            Once upon a time, a watch was a watch was a watch. Today, however, 
            it's a handy device - literally - that is a computer, a phone, a 
            status symbol, a piece of jewellery, a barometer, an activity 
            manager, a messenger.....the list goes on. Here's OER's random 
            selection from the world of watches</font></p>
            <p><font face="Verdana" size="1"><b>
            <img border="0" src="im86.jpg" align="left" hspace="5" vspace="5" width="90" height="126">Fossil 
            Wrist PDA with Palm OS</b><br>
            At a slender 12.5 mm thick, the Fossil Wrist PDA is the size of a 
            standard wristwatch, but is packed with all the powerful features of 
            a Palm handheld. Wired magazine called it &quot;a collaboration between 
            high style and high tech&quot; and it won Best Mobile Device of the Year 
            honours at the COMDEX technology trade show. The Wrist PDA can do 
            almost anything any other basic Palm handheld can do. With 2 MB of 
            flash memory for the operating system, and an additional 2 MB for 
            data and applications, you can store thousands of addresses. 
            Drop-down menus allow you to navigate between different functions. 
            You can also input years' worth of appointments, schedule events, 
            create and mark off to-do items, and receive reminders.<br>
            Price: $275 (RO105.77)</font></p>
            <p><font face="Verdana" size="1"><b>
            <img border="0" src="im86a.jpg" align="right" hspace="5" vspace="5" width="80" height="133">Swatch 
            YBS9002AG</b><br>
            The first Swatch, a slim plastic watch with only 51 components, 
            first went on sale in 1983. Now, two decades and 200 million units 
            later, it is considered the most successful wristwatch of all time. 
            The YBS9002AG, from Swatch Irony Chronograph Bracelet Collection, 
            comes with a quartz movement, analog date display, rotating bezel, 
            black luminous hands and numeric markers, backlight, and is 100 
            metres water-resistant. This men's chronograph has an aluminium 
            bracelet with black polyurethane and fold-over clasp, an aluminium 
            case, ocean blue dial and has with 3 black sub-dials. <br>
            Price: $150 (RO57.70)</font></p>
            <p><font face="Verdana" size="1"><b>Guess G22525G</b><br>
            This high-class chronograph with silver-tone hands and roman 
            numeral/stick markers comes in a stainless steel case with blue dial 
            along with 3 sub-dials. This distinctive timepiece is designed with 
            global sophistication and the quality is enhanced with solid 
            stainless steel bracelets and signature screw down crowns, providing 
            added water resistance. The G22525G men's chronograph has a quartz 
            movement, analog date display, screw-in caseback and 100 metres 
            water-resistant.<br>
            Price: $225 (RO86.54)</font></p>

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