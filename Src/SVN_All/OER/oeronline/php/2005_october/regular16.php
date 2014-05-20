<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - October - 2005 ::</title>
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
                A welcome move<br>
                <br>
                </font><font face="Verdana" style="font-size: 8pt">The UAE 
                government, in a recent decision, has effected some changes in 
                the rules of the labour policies with regard to changing 
                sponsorship. According to the new rules, an employee who wants 
                to change sponsorship and jobs can do so now but the permission 
                of the employer will still be required. When the news first 
                broke out about the UAE “lifting the six-month ban”, there was 
                some confusion and speculation. The slight confusion, however, 
                cleared as the rules, set out by the Minister of Labour and 
                Social Affairs, Dr Ali Bin Abdullah Al Ka'abi, under directives 
                from the UAE Cabinet, ended the confusion that arose after the 
                decision of the Ministry of Interior on August 21 this year to 
                cancel its traditional ban. <br>
                <br>
                In fact, the six-month “ban” will now be implemented by another 
                government body, the labour department, and not the interior 
                ministry. The decision is aimed at creating the necessary 
                intervention by an impartial party, the ministry of labour, in 
                the worker-employer relations. <br>
                <br>
                The decision of the UAE government has evoked both bouquets and 
                brickbats. Critics say they would like the rules on moving from 
                one employer to another relaxed. Expatriate employees, as a 
                matter of fact, feel it would be fairer if they were free to 
                leave one job and start another without getting a ban, and that 
                the current laws were still loaded heavily in favour of 
                employers. <br>
                <br>
                The sponsors, on the other hand, are apprehensive about a 
                completely open system since such a system could harm companies 
                that needed to hold on to employees for particular projects. In 
                fact, some quarters have proposed setting up a special panel to 
                study the causes behind work permit cancellations on 
                case-to-case basis to ensure fair treatment to workers. However, 
                if the ban is done away with altogether, it may give the 
                corporate world a chance to get the best of talents. And for the 
                employees, it would give them a chance to eke out more 
                meaningful existence with regard to job satisfaction. <br>
                <br>
                However, the issue should be seen in a larger context. The GCC 
                group is emerging as one of the most influential economic blocs 
                in the world. And the UAE government has taken a step forward 
                towards labour reforms. The move is in keeping with the larger 
                objective of ILO (International Labour Organisation)-consistent 
                labour laws. <br>
                <br>
                But, clearly, more needs to be done. There have been numerous 
                instances of labour rights violations in the GCC region. Many a 
                report have focused on the harsh living and working conditions 
                that labourers have to endure to earn a pittance of a living. 
                Non-payment of salaries for up to 6 months has also been 
                reported every now and then.<br>
                <br>
                It is, therefore, the right time for the GCC countries to take a 
                big leap forward as far as labour reforms are concerned. And the 
                step taken by the UAE government is a welcome sign.<br>
&nbsp;</font></td>
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