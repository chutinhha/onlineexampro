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
            <td width="1%" bgcolor="#FFFFFF">&nbsp;<p>&nbsp;</p>
            <p>&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="4" color="#FF0000">
            Gizmos&nbsp;
                  </font>
              <p><font face="Verdana" size="1"><b>Digital dreams<br>
              </b><br>
              Introduced just about a decade ago, digital cameras have gone from expensive, low-quality, functionally limited techno-toys to affordable, effective, highly-functional devices that regularly outsell most categories of their film-based counterparts. With over 300 consumer and prosumer digital cameras in the market, selecting the perfect model can be daunting. OER profiles a few latest available models to bridge the digital
              divide</font></p>
              <p><font face="Verdana" size="1"><b>Canon PowerShot G5</b><br>
              The PowerShot G3, built on the success of the G2, has gained a huge following and proves to be popular among the ÔprosumerÕ shutterbug photographer. The G5 should have no problem in that respect as it is identical to the G3 from a feature and functionality point of view (4.8 x 2.9 x 2.8 in; 481 gm). It has lots of unique features such as a switchable ND filter, orientation sensor, one-button RAW creation, Intervalometer and included InfraRed remote. Image quality and resolution are as good as we can expect from a compact five megapixel. However, while the G5 is a superbly capable digital camera in its own right, you could save yourself some money, lose only a few pixels and avoid the extra chromatic aberrations by picking up a
              G3.<br>
              Price range: US$648-799 (RO249-307)</font></p>
              <p><font face="Verdana" size="1"><b>Sony Cybershot DSC-V1</b><br>
              <img border="0" src="Giz-sony.jpg" align="right" hspace="5" vspace="5" width="150" height="116">The DSC-V1 is a camera that appeals to a wide range of buyers. It is compact enough to be carried out, yet featured enough to still be attractive to the prosumer owner. ItÕs notably smaller and lighter than the competition (3.9 x 2.6 x 2.2 in; 291 gm); yet, can still produce the goods from an image quality point of view and has the majority of the manual controls you could need. While the DSC-V1 may not carry some of the extraneous features of the other digital cameras in the same league, it is still more than capable of delivering excellent images. Resolution is good although some detail is lacking. The DSC-V1 is a quality compact digital camera with a useful zoom range and high-resolution sensor. Like previous high-end Sony digital cameras, the DSC-V1 has a
              'Carl Zeiss' branded lens system although not as fast (large maximum aperture) as previous
              'Carl Zeiss' lenses.<br>
 Price range: US$534-699 (RO205-269)</font></p>
              <p><font face="Verdana" size="1"><b>Kodak DCS-14n</b><br>
              The DCS-14n offers a full 35 mm size sensor with huge resolution (5.16 x 6.22 x 3.5 in; 907 gm). It is one camera which one moment can fill you with amazement and awe at its ability to capture such fine detail, and the next be frustrating you with its slow startup times, long write time or high ISO noise. It's also a camera of limits - you can't go above ISO 400 at full resolution, you can't shoot faster than 1.7 frames per second, you have to live with 1/2 EV stops and you should expect some occasional image artefacts (moiré, noise reduction etc.). Yet, there is no getting away from the fact that this is the cheapest way to shoot at such high resolutions - RO2000 may seem like a lot of money, but if you earn a living from your photographs then you could probably make it pay.&nbsp;<br>
 Price range: US$4499-5000 (RO1730-1923)</font></p>

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