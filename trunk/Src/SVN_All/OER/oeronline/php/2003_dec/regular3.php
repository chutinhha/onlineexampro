<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - December 2003 ::</title>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">











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
            <td width="70%" bgcolor="#FFFFFF" valign="top">
            <font face="Verdana" size="4" color="#FF0000">Billboard</font><p>
            <font face="Verdana" size="1"><b>Oryx Publishing, Qatar, launches 
            Progress 2003</b></font></p>
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" height="276">
              <tr>
                <td width="53%" height="228"><font face="Verdana" size="1">Oryx 
                Publishing and Advertising Company recently launched Progress 
                2003 – a detailed and interesting book tracing the development 
                of Qatar. Celebrating Qatar’s path to progress, it traces the 
                country’s overall development and gives an essence of its rich 
                culture and heritage. <br>
                <br>
                Speaking on this occasion, the publisher and editor-inchief, 
                Yousuf Jassem Al Darwish said, “Progress aims to be a reflection 
                of Qatar, its people and the giant strides the country has taken 
                in various socio-economic sectors including Banking &amp; Finance, 
                Oil &amp; Gas, Telecom, Tourism, Education and Sports”. With 
                excellent production quality and superior editorial content, 
                Progress promises to be both an excellent read and a good 
                reference. </font></td>
                <td width="47%" valign="top" height="228">
                <p align="center">
                <img border="0" src="scan0023.jpg" width="250" height="188" hspace="5"><br>
                <font face="Verdana" size="1">Sandeep Sehgal, UMS’ GM, 
                presenting Progress 2003 to Yousuf J. Al Darwish, Publisher and 
                Editor-in-Chief, Oryx<br>
&nbsp;</font></td>
              </tr>
              <tr>
                <td width="100%" colspan="2" height="48">
                <font face="Verdana" size="1">With the feel of a coffee table 
                book, Progress’ contents contain a comprehensive country report. 
                Several reputed organisations have partnered and supported to make this book a 
                grand success.<br>
                <br>
                It is aimed at residents, visitors 
                and prospective investors, who wish to get as much information 
                on Qatar. Started in 1973, Oryx Publishing and Advertising Co. 
                is also credited with the first English magazine of the country 
                - Qatar Today, which too is all set to create new media 
                standards in Qatar.</font></td>
              </tr>
            </table>
            <p><font face="Verdana" size="1"><br>
&nbsp;</font></p>
            <p>&nbsp;</p>

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