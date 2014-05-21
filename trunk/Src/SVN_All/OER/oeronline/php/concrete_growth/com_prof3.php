<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - April - 2005 ::</title><script language="JavaScript">

<!--



function NewWindow(url) {                       

                var hWnd = window.open(url,"Window","width=600,height=430,resizable=yes,scrollbars=yes,left=100,top=25");

                if (hWnd.focus != null) hWnd.focus();

        }



// -->

</script>
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
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">:: Company Profile </font>
            </p>
            <p align="center" dir="ltr"><b>
            <font face="Verdana" style="font-size: 14pt">ASSARAIN CONCRETE 
            PRODUCTS<br>
            </font>
            <font face="Verdana" style="font-size: 8pt">&#9679; Innovation &#9679; 
            Commitment<br>
            &#9679; Technical Excellence &#9679; Customer-Centric</font></b></p>
            <p align="justify" dir="ltr"><font face="Verdana" size="1">Assarain 
            Concrete Products, a unit of the Assarain Group of Companies is 
            popularly known as ACP in industry circles and is one of the largest 
            producers of concrete products in Oman. Established in 1984, ACP has 
            participated in various prestigious projects in the country and 
            today the company’s operations are spread across the country.<br>
            <br>
            The company’s core philosophy is centered around creating a 
            beautiful Oman by partnering with the construction industry. In 
            early 2002 Assarain Group made a substantial investment in 
            production by adding a new, large capacity fully automated German 
            plant for production of interlocking tiles and other building 
            products, making ACP one of the largest production facilities in 
            Oman. <br>
            <br>
            <img border="0" src="prof3.jpg" align="right" hspace="4" vspace="2" width="300" height="224">ACP’s 
            vast product profile includes the most versatile combinations of 
            designs and colours in interlocking tiles and pavers, aesthetic 
            pavement tiles/roof slabs, luxury segment tiles such as pattern 
            tiles, kerbstones of all types and high quality building blocks. In 
            addition the company’s quality standards have enabled it to meet the 
            prescribed quality specifications. ACP is also credited with being 
            the forerunner in ushering in the latest products to the market. To 
            name a few, ACP has recently brought in Dry mix plasters, HAGS play 
            equipment, Concrete Planters, Street furniture, Tensar Blocks and 
            many other new products. This unwavering pioneering spirit has been 
            rewarded in the leadership status that it enjoys in the country’s 
            building materials segment with the highest market<br>
            share. ACP’s state-of-the-art production plant, rich knowledge base 
            and its innovative product portfolio have also given it an 
            additional edge over its competitors. As a company focussed on its 
            fundamentals, ACP strives to reach greater heights in future</font></p>
                    <hr color="#CC3333">
                    <p>&nbsp;</p>
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