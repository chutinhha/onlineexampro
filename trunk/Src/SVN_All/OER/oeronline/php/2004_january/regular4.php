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
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">
            gizmos<br>
                  </font><b><font face="Verdana" size="1"><br>
                  </font></b><font face="Verdana" size="1"><b>Pen Pals</b><br>
            Keyboards may be faster, but the tool that is mightier than the 
            sword just won't go away. It just becomes better - digitally 
            speaking. For years, the paperless office has seemed about as likely 
            as the paperless toilet. Digital pens are changing that now, albeit 
            slowly. They work pretty much like a normal pen, but are bulkier. 
            However, they're both lighter and smaller than a PDA and unlike a 
            graphics tablet, they need batteries. Whether you're taking notes or 
            filling in a form, using a digital pen rather than a keyboard means 
            you don't have to lose the flexibility of paper. OER profiles some 
            of the digital pen pals available in the market today <br>
            <br>
            <b>Logitech io Personal Digital Pen </b><br>
            <img border="0" src="gizmos1.jpg" align="left" hspace="5" width="125" height="119">This 
            simple looking yet smart pen can change boring handwriting tools to 
            effective digital gadgets. The Logitech io digital pen looks and 
            feels just like an ordinary ballpoint pen and is, in fact, even used 
            in a similar manner. There are no keys to press and no display. 
            However, it remembers everything you write when you are away from 
            your PC. You have to just activate the pen by removing the cap. Then 
            you write on digital paper the same way you write on regular paper. 
            Using MyScript Notes software, the io Personal Digital Pen 
            transforms handwritten notes into computer readable files, including 
            text, tables, and drawings. Words and images are both inked on the 
            paper and stored in the pen's memory. To transfer these handwritten 
            documents to your PC, place the pen in its cradle and download them. 
            Then, easily share, store, organise, and retrieve them. The pen can 
            also be used for writing calendar entries into your electronic 
            organiser, it can automatically add handwritten tasks to your 
            electronic 'To Do' list and can create 'Post-it Note' reminders on 
            your PC desktop. The Logitech io works with Microsoft Outlook, Lotus 
            Notes, or any other MAPI-compliant email program. The ink cartridges 
            of the pen lets you write like you normally do and the memory stores 
            up to 40 pages between downloads. Battery lasts up to 25 pages 
            between recharges. The pen comes with a cradle and AC adaptor and a 
            2-year warranty. Price: $199.99 (RO77) <br>
            <br>
            <b>Nokia SU-1B Digital Pen</b> <br>
            <img border="0" src="gizmos2.jpg" align="right" hspace="5" width="125" height="185">The 
            Nokia Digital Pen doesn't just write, but also remembers what it 
            writes or draws on digital paper. This sleek pen has a good memory 
            and remembers up to 100 A5 sheets' worth of text. You can connect 
            the pen to your compatible PC, and download all the information that 
            has been stored in the memory of the pen. Once properly paired, the 
            Nokia Digital Pen also forms an automatic connection to your 
            compatible mobile phone, so you can send handwritten notes to 
            compatible mobile phones or email addresses via Multimedia Messaging 
            Service (MMS). Compatible with Nokia 3650, Nokia 6600, Nokia 6650, 
            Nokia 7600 and Nokia 7650 phones and other phones supporting 
            Bluetooth specification 1.1 and the necessary Bluetooth profiles. 
            Besides a good memory, the pen has a writing time up to 2 hours. It 
            also has 3 LED indicators and vibration alert indicate pen and send 
            status. It works as a normal pen on non-digital paper and charges in 
            its stand when connected to a compatible Nokia charger or with a 
            compatible Nokia travel charger. During the first few days, the user 
            may have to face some problems as it takes time to predict solid 
            information gathering by the subtle vibrations emitted by the pen. 
            Price: £159.74 (RO106)</font><font size="1">.</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>