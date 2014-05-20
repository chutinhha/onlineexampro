<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - December - 2005 ::</title>
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

<p align="justify" dir="ltr"><font face="Verdana" size="2" color="#C0C0C0">:: 
Art Scape<br>
</font><font face="Verdana" size="4" color="#FF0000">
<br>
</font><b><font face="Verdana" size="5" color="#FF0000">The Spirit of Oman</font></b><font face="Verdana" size="4" color="#FF0000"><br>
</font><font face="Verdana" size="1">
<img border="0" src="art.jpg" align="right" width="148" height="215"><br>
It is said that the object of art is not to reproduce reality, but to create a 
reality of the same intensity. Water colourist Patricia Al Fakhri’s paintings 
are an embodiment of this statement. The Dubai-based artist recently held her 
first solo exhibition in Oman at the Bait Muzna Gallery. Titled ‘Oman - Artists’ 
Paradise’, the exhibition featured water colours depicting landscapes and people 
of Oman. <br>
<br>
A land like Oman has inspired many an artist to present the picturesque beauty 
of the Sultanate through colours and drawings. Patricia could very well be 
considered as one among them. What makes her paintings stand out is the quiet 
intensity reflected in every work. The snapshots of Oman and life in the country 
have been beautifully depicted through a pleasant palette and a style that is 
unique to the artist. <br>
<br>
Though her paintings depict various well-known landmarks of Oman, Patricia has 
not stuck to just reproductions of these sites. She has instead attempted to 
capture the spirit of each of the subjects she chose and present a visually 
appealing, at times intriguing interpretation. The visiting artist talks to Oman 
Economic Review.<br>
<br>
<img border="0" src="art1.jpg" align="left" width="113" height="91">Oman: This is a land of natural beauty. Though there has been progress in Oman, 
the country has retained its natural beauty and this is very appealing to an 
artist. This is one of the reasons why I have called my exhibition ‘Oman - 
Artists’ Paradise’. <br>
<br>
I was struck by the beauty of the architecture in buildings, natural landscaping 
of the terrain, wonderful coastline and warm people when I first came here. 
There’s something very Mediterranean about the land and is the perfect place for 
an artist. I have been working for two years on this series and would like to 
continue to do more paintings on Oman.<br>
<br>
Paintings with a difference: To capture the beauty of Oman in my works, I took 
many references and wherever possible, observed and recorded them in my mind. I 
did not want to replicate what you already see in Oman as it is on the canvas. 
What I wanted to do was to capture the spirit of Oman and present my 
interpretation of the landscape, seascape and people of the country. I use 
colours that are light and these colours attract people. <br>
<br>
<img border="0" src="art2.jpg" align="right" hspace="5" vspace="2" width="120" height="178">The colours have also helped in portraying the beauty of Oman in a different 
light and the way I wanted to illustrate the land.<br>
<br>
I, me, myself: I studied art from Dubai International Art Centre. I chose 
watercolours as the medium for my works as felt very comfortable with it. I 
tried my hand at acrylics and oils on canvas but somehow nothing gave the 
comfort of working with water colours. My first solo exhibition was held in 
Dubai in 1987. Besides painting, I also teach water colours at the Dubai 
International Art Centre. I have also illustrated a few children’s books. We 
have a home in Spain and when we go visiting, I take classes for water colours 
in one of the art centers there.<br>
<br>
Landscape is my favourite subject. One of the reasons could be that landscapes 
speak a lot about the region. And as for colours, I prefer to use soft, 
pleasing-to-eye hues as it adds to the visual beauty of the painting and most 
people like pleasant shades to the dark ones.<br>
<br>
<i>- Anne Kurian</i></font></p>

                    <hr color="#CC3333">
                    </td>
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
?>&nbsp;