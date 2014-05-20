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
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">
            Tech Review</font></p>
            <p class="MsoPlainText" align="justify">
            <font face="Verdana" size="1"><b>Robot Guided by its Voice</b><br>
            Two 
            years ago, when University of Toronto researchers tried to 
            <img border="0" src="im34.jpg" align="left" hspace="5" width="150" height="102">use one 
            of the University’s Artificial Perception Lab robots to give tours 
            to the several dozen high school students, corporate personnel, 
            professors and journalists who traipse through the facility every 
            year, they ran into implementation problems.<br>
            The robot, which has a motorized base and speakers that play 
            pre-recorded phrases at appropriate locations, had trouble 
            accurately navigating to the locations.<br>
            The problem spurred the researchers to devise a relatively simple 
            robot navigation system. Instead of mimicking human sight-based 
            methods, they turned to sound.<br>
            As the lab’s revamped robot tour guide explains the importance of 
            various stations on a lab tour, every phrase it says is recorded by 
            24 microphones embedded in the wall that determines the sound’s 
            location. The system requires about two seconds of sound to get 
            enough information to the robot’s location.<br>
            The robot also has whisker-like touch sensors that determine when an 
            object is in its path. When this happens it backs up, reorients 
            itself and plots a new course around the obstacle. The navigation 
            system is accurate to 7 centimeters, and is relatively cheap to 
            implement.<br>
            The sound navigation system could be used in tour guide applications 
            that don’t require speech recognition and understanding with a year 
            or two; more elaborate systems that recognize speech are further 
            off, according to the researchers.</font></p>
            <p class="MsoPlainText" align="justify">
            <font face="Verdana" size="1"><b>Curve Widens 3D Display</b><br>
            <img border="0" src="im35.jpg" align="right" hspace="5" width="121" height="92">Although 
            three-dimensional screens have been around in different forms for 
            decades, they generally have downsides. Some types require glasses, 
            and those that don’t usually cannot be viewed from much more than a 
            15-degree angle or are fairly dim.<br>
            Researchers from Seoul National University in Korea have showed that 
            using curved lenses doubles the viewing angle of three-dimensional 
            integral imaging systems without sacrificing brightness. The 
            technique could eventually be used for three-dimensional billboards 
            and three-dimensional television, according to the researchers.<br>
            Integrated imaging systems project sections of images through an 
            array of lenses. The sections are combined, or integrated, at a 
            point in front of the display to produce a 3D image. These displays 
            have a limited viewing angle because the image sections must be 
            wider the farther they are from the center of the display, and can 
            be only so wide before they overlap. <br>
            The researchers’ prototype uses a lens array that is curved rather 
            than flat. This increases the viewing angle because the lenses are 
            angle around the viewer, which helps keep<br>
            the image sections proportional. <br>
            There is some work to be done before the method is ready for prime 
            time, however, according to the researchers. In order to present an 
            image free of gaps between image sections, the screen must be 
            slightly curved as well. Technologies like plastic electronics and 
            electronic paper are poised to deliver flexible screens.<br>
            The technique could be used in applications like three-dimensional 
            advertising displays within two to four years. Three-dimensional 
            television systems are at least a decade away, according to the 
            researchers.</font></p>
            <p class="MsoPlainText" align="justify">
            <font face="Verdana" size="1"><b>Chip-Camera combo tracks viruses</b><br>
            <img border="0" src="im36.jpg" align="left" width="150" height="117">Labs-on-a-chip 
            promise to make mixing chemicals and detecting microbes cheaper, 
            faster and easier. But how do you keep track of reactions that are 
            taking place on a tiny chip? <br>
            Researchers from Purdue University have devised methods of labeling 
            virus structural elements and DNA, of imaging virus particles as 
            they flow through labs-on-a-chip, and of concentrating virus 
            particles.<br>
            The researchers’ dielectrophoretic microchip could ultimately be 
            used to separate, concentrate and detect many types of biological 
            molecules for biodefense, microbiological research and development, 
            space and point-of-care clinical diagnostics, according to the 
            researchers. The researchers’ system consists of a biochip for 
            capturing virus particles, a digital camera, and image analysis 
            software. They are working to integrate the viral analysis functions 
            into biosensor chips to make an integrated device that would sense 
            infectious agents like bacteria, spores and viruses, and then carry 
            out a biochemical analysis on the microorganisms.<br>
            The method could be used practically in four or five years, 
            according to the researchers.</font></p>
            <p class="MsoPlainText" align="justify">
            <font face="Verdana" size="1"><b>Under Your Thumb</b><br>
            Like so many people who use computers all day, Abir Qamhiyah and her 
            colleagues in Iowa State University’s Mechanical Engineering 
            Department found that the mouse-intensive software they used was 
            giving them numb hands and painful wrists—the signs of carpal tunnel 
            syndrome. But rather than submit to the traditional solutions —wrist 
            splints, painkillers, or even surgery — Qamhiyah decided to develop 
            a new kind of pointing device, one that would leave the wrists out 
            of the equation.<br>
            The result: a kind of joystick without a base, with a pressure plate 
            at the thumb end that can be used to move an on-screen cursor in any 
            direction. Says Qamhiyah, “We looked at how much force a thumb is 
            capable of exerting, and we specified the sensitivity range to be on 
            the very low end”—meaning the new pointer shouldn’t cause its own 
            ergonomic nightmares.<br>
            Two buttons on the side take care of left-clicking and 
            right-clicking. Iowa State is looking for corporate licensees to 
            bring the device to market.</font></p>
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