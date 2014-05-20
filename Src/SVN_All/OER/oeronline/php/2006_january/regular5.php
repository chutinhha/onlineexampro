<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - January - 2006 ::</title>
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
Editorial<br>
&nbsp;</font></p>
<table border="2" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="100%" bgcolor="#F0F0F0">
    <p align="center" style="margin: 10"><u><b><font face="Verdana" size="5">
    Set sailing</font></b></u></p>
    <p align="justify" style="margin: 10"><font face="Verdana" size="1"><br>
    </font><font face="Verdana" size="3"><b>T</b></font><font face="Verdana" size="1">he 
    roadmap for the next five years is out and the goal is clear: 3 per cent GDP 
    growth at current prices – or 5 per cent at fixed prices - during the 
    Seventh Five Year Plan period (2006-2010). The objectives are: maintaining 
    current levels of per capita income, enhancing competitiveness of the 
    national economy, improving productivity and increasing investments through 
    mega petrochemical and tourism projects, and raising investments in the oil 
    and gas sector to 24 per cent as against 16 per cent in the previous plan. 
    Laudable, no doubt! Achievable? Certainly. <br>
    <br>
    To keep up with the ambitious growth path, the draft plan estimates the 
    gross revenue during the Seventh Plan to be RO18,636 million, almost 
    two-thirds (RO12,884 million) coming from oil revenue. The corresponding 
    gross expenditure during the same period is pegged at RO20,896 million, 
    resulting in a RO2,260 million deficit during 2006-2010. Nothing to worry 
    about, given the General Reserves built up over the years. <br>
    <br>
    The question as to whether the goals are on the lower side is inevitable. On 
    the surface of it, 3 per cent GDP growth at current prices may not seem 
    enough. Yet, if one were to look around the Gulf region to assess the 
    competitive nature of economies, Oman’s goals are realistic. The Economist’s 
    Intelligence Unit (EIU) says that Oman’s GDP per capita for 2004 on the 
    basis of purchasing power parity formula is US$8,087, closest to Saudi 
    Arabia, which is pegged at US$9,493. Though the other four GCC members’ 
    figures are in the five-digit category, the size of their respective 
    economies are negligible in comparison to Saudi Arabia. <br>
    <br>
    Growth strategies, the government claims, will ensure that the general 
    public is not faced with inflationary impact through a right dosage of 
    fiscal and monetary policies. Going by the past record, there is nothing to 
    doubt this assertion in the coming years as well. The Central Bank of Oman 
    has earned laurels from global watchdogs for its regulatory tactics in 
    keeping the economy under check. The CBO is unlikely to vacillate from its 
    past position. Price stability is a key factor to contend with and that has 
    been taken care of. <br>
    <br>
    Plans are meaningless unless they address the issue of employment. With a 
    sizeable population of Oman graduating into adulthood, any laxity in 
    generating new job opportunities will lead to social disturbances. Jobless 
    growth is something Oman simply cannot afford. That perhaps explains the 
    greater emphasis on comprehensive development policy, dovetailing 
    public-private sector collaborative effort as envisaged in the Vision 2020 
    document in 1995. The Sultanate’s current approach of pushing ahead with its 
    manufacturing thrust with zeal is one piece in a complex puzzle. <br>
    <br>
    The government’s cautious approach on the financial framework is noteworthy. 
    At the end of the day, expenditure has to be met out of revenue generated 
    and the emphasis on rationalizing expenditure signals the prudent path Oman 
    government plans to traverse. Another interesting point is the decision to 
    set aside the proceeds of privatization proceeds into a separate fund for 
    financing productive structures of the economic diversification. </font></td>
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