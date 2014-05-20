<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - September 2003 ::</title>
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



<? if(!$HTTP_SESSION_VARS["id"]==""){echo "<font face=Verdana size=2 color=#000000>Welcome&nbsp;&nbsp;</font><font face=Verdana size=2 color=red><i>".$HTTP_SESSION_VARS["id"]."&nbsp;!</i></font>
            ";}else{echo$HTTP_SESSION_VARS["mes"];$HTTP_SESSION_VARS["mes"]="";}?>
              </b></td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
          </center>
            <td width="70%" bgcolor="#FFFFFF" valign="top">
              
              <center>
                    <p align="left"><font face="Verdana" size="4" color="#FF0000">Tech
                    Review</font>
                    <p align="left"><font face="Verdana" size="1"><b>Siemens 
                    takes care of Lufthansa's baggage</b><br>
                    Siemens Business Services has developed an online solution 
                    for German airline Lufthansa AG, to continuously track 
                    passengers' baggage right from the check-in desk to baggage 
                    reclaim at the destination airport. <br>
                    As before the luggage is given a barcode at the check-in 
                    desk. The information in the code is scanned in and logged 
                    by a central IT system. On its way to the destination 
                    airport the suitcase passes through at least six different 
                    scanners before it has even left the airport from where the 
                    journey began. <br>
                    Baggage for transit flights can be given preference during 
                    check-in to ensure that it joins the same plane. Ground 
                    staff also has details of the order in which baggage was 
                    loaded and where exactly in the hold it is stored. There is 
                    also a central search system with detailed information on 
                    the individual items of luggage.<br>
                    Thus, the solution developed by the Siemens subsidiary 
                    improves the quality of Lufthansa's baggage transport, 
                    minimises errors in the transport of baggage, increases 
                    customer satisfaction and cuts costs. The pilot project has 
                    been running in 26 airports around the world since March 
                    2003</font></p>
                    <p align="justify"><font face="Verdana" size="1"><b>LG screens 
                    Digital Light Processing TV in Mid East.</b><br>
                    <img border="0" src="pg96b.jpg" align="left" hspace="4" vspace="4" width="150" height="198">LG 
                    Electronics unveiled the latest in digital screen technology 
                    in the Middle East with the launch of its first Digital 
                    Light Processing (DLP) projection TV screen. <br>
                    DMD(tm) technology, on which the DLP screen works, is the 
                    new technology for movie theatres. <br>
                    It is being adopting the world over as the technology 
                    produces excellent quality pictures, with superior contrast 
                    and brightness and an extremely wide viewing angle. <br>
                    This LG product, a 44-inch RL-44SZ20RD DLP rear-projection 
                    screen uses a single DMD(tm) (Digital Micromirror Device) 
                    chip on the surface. It has 1.3 million mirrors that reflect 
                    the image for each pixel on the screen. <br>
                    ÒThese tiny mirrors switch on and off up to 5,000 times a 
                    second enabling a clear, sharp picture that no CRT or PDP 
                    can generate,&quot; said Mr. S. S. Lee, Digital Display Product 
                    Manager, LG Electronics Gulf FZE. <br>
                    The DLP screen can be used for both video and graphics. 
                    DMD(tm) also helps in reducing the number of component parts 
                    and the size of the cabinet required compared to a standard 
                    LCD or CRT projection TV. <br>
                    Unlike a standard 14-inch CRT television, the new 44-inch 
                    screen LG TV is just over 13-inches in depth, and weighs 
                    only 33-kilograms, making it easy to move and install and 
                    suitable for table-tops and desktops.<br>
                    Another advantage of the DLP screen technology over the CRT 
                    or LCD screens is that there is no phosphor burn to the 
                    screen, thus lengthening its life expectancy to decades.<br>
                    The DLP screen technology has everything - sharp, high 
                    definition images, long life and a slim, attractive design, 
                    which will change the way people watch television in the Mid 
                    East, claims LG Electronics.</font></p>
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