<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - September - 2005 ::</title>
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
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">:: 
            Editorial</font></p>
            <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="table1">
              <tr>
                <td bgcolor="#F7F7F7">
                <p style="margin: 5px" align="justify">
                <font face="Verdana" style="font-size: 14pt; font-weight: 700">
                The Yuan impact ?<br>
                <br>
                </font><font face="Verdana" style="font-size: 8pt">It was 
                coming. The first revaluation of the Chinese currency in almost 
                a decade, might have stirred a hornet’s nest with regard to the 
                timing of the move. But it is common logic that for an economy 
                growing at over 9 per cent, such ‘artificial control’ of the 
                currency could not have gone unhindered for too long. Beijing’s 
                move from a dollar peg to a basket of currencies was widely 
                expected. <br>
                <br>
                To begin with, the Asian giant has gone for a deceptively small 
                currency revaluation -- at&nbsp; 2.1 per cent. But then, it 
                might be the tip of the iceberg. This small move of the Asian 
                giant may have, already, triggered a profound change -- a 
                radical shift -- in the global economy, hinting also at the 
                shape of things to come in the future. <br>
                <br>
                For the GCC countries, the Yuan impact – being decisively 
                dollar-negative in nature -- will be more profound, as their 
                currencies are all pegged to the dollar. As they are all open&nbsp; 
                economies, any impact on the dollar is bound to create ripples. 
                In the Sultanate for example, prices of some products and 
                consumer goods have leapfrogged by nearly 50 per cent. The 
                government too has admitted to the price rise. At a Press 
                briefing in Muscat recently, HE Eng. Ahmed Bin Hassan Al Dheeb, 
                Undersecretary of the Ministry of<br>
                Commerce and Industry, attributed the current inflationary 
                trends in the Sultanate mainly to the global situation – rising 
                oil prices, strengthening of the Euro, withdrawal of subsidies 
                by various governments on agricultural products under WTO 
                guidelines and the demand-supply factor. He also underscored the 
                point that this spurt in prices had nothing to do with 
                indigenous factors. <br>
                <br>
                However, there is silver lining in the dollar freefall for the 
                GCC bloc as well. For, the GCC countries become that much more 
                competitive for tourism, a sector that is virtually a goldmine. 
                Moreover, higher oil prices do not damage the euro zone as much 
                as they would with a higher dollar. And then, a lower dollar is 
                also coming handy for the real estate sector in the GCC to bloom 
                and boom, thanks to the low interest rates and lower prices in 
                foreign currency terms. The construction sector in the 
                Sultanate, for example, is already riding a boom. Enmeshed in a 
                money-flushed economy, this boom is all set to stay here for a 
                long time to come.<br>
                <br>
                Besides, the dollar-freefall gives the GCC countries a chance 
                to, may be re-orient their long-term economic strategies and 
                plans as well. The UAE Central Bank, for example, has made clear 
                that it is mulling over placing 5 per cent of its reserves into 
                euros. Whether the other GCC countries follow suit or not 
                remains to be seen. The future strength of the dollar is likely 
                to hold the key.</font></td>
              </tr>
            </table>

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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>&nbsp;