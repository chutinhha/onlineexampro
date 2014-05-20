<?	session_start();?>
<?	session_register("id");
	session_register("mes");
        ?>


<html>
<head>

<?if(!$HTTP_SESSION_VARS["mes"]=="")
{
	echo "<meta http-equiv=refresh content=5; url=index.php>";
	
}
?>	

<title>OEROnline</title>
</head>
<body topmargin=0 leftmargin=0>







<p>




<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">
<? include("inc/top.htm"); ?></td>
  </tr>
  <tr>
    <td width="100%">
<? include("inc/menu.htm");
?></td>
  </tr>
  <tr>
    <td width="100%">
<?
                    include("inc/home_inc1.htm");
?></td>
  </tr><? if(!$HTTP_SESSION_VARS["id"]==""){?>
  <tr>
    <td width="52%" bgcolor="#FFFCE8">
    
    <table border="0" width="95%" bgcolor="#FFFCE8" cellspacing="0" cellpadding="0">
          <tr>
            <td width="34%" bgcolor="#FFFCE8">&nbsp;</td>
            <td width="52%" bgcolor="#FFFCE8"><b>
<font face="Verdana" size="2" color="#000000"><?echo "&nbsp;&nbsp;&nbsp;Welcome</font><font face=Verdana size=2 color=red><i>&nbsp;&nbsp".$HTTP_SESSION_VARS["id"]."&nbsp;!<i></font>";?></b></i></i></td>
            <td width="18%" bgcolor="#FFFCE8">
              <p align="center"><font face="Verdana" size="1"></font></td>
          </tr>
        </table></td>
  </tr><?}
  
  if(!$HTTP_SESSION_VARS["mes"]=="")
  {
  		echo "<table width=95% border=0 bgcolor=#FFFCE8><tr align=center><td><font face=Verdana size=2 color=#000000>".$HTTP_SESSION_VARS["mes"]."</font></td></tr></table>";
   		$HTTP_SESSION_VARS["mes"]="";
  }
  
  
  ?>
  
  <tr>
    <td width="100%" valign="top">
      <table border="0" width="100%" cellspacing="0" cellpadding="0" >
        <tr>
          <td width="37%" valign="middle">
            <p align="center">
            <img border="0" src="/php/2003_january/pdo-5.jpg"></td>
          <td width="40%" valign="middle">
            <div align="center">
              <center>
              <table border="0" width="90%" cellspacing="0" cellpadding="0" >
                <tr>
                  <td width="100%" height="28"><font face="Verdana" size="2">::
                    Cover Story</font></td>
                </tr>
                <tr>
                  <td width="100%" height="25"><font face="Verdana" size="4" color="#FF0000">
                  Can he 
                  deliver?</font></td>
                </tr>
                <tr>
                  <td width="100%" height="93"><font face="Verdana" size="1">With maturing oil fields 
                    and declining output levels posing a continuing challenge, 
                    2003 is expected to be a year of test for PDO. The companys 
                    newly appointed managing director, John Malcolm, gives Nayl 
                    DSouza a low-down on his plans for reversing the trend&nbsp;<br>
                    <a href="php/2003_january/cover.php">Click here</a></font></td>
                </tr>
                <tr>
                  <td width="100%" height="33">
                    <p align="right"><font face="Verdana" size="1">Click here
                    for other headlines <a href="php/2002_december/cover.php"><img border="0" src="images/home_arrow.jpg" align="absmiddle" width="22" height="22"></a></font></td>
                </tr>
              </table>
              </center>
            </div>
          </td>
          <td width="25%" valign="top">
            <div align="center">
              <center>
            <table border="0" width="100%" cellspacing="0" cellpadding="0" >
              <tr>
                <td width="100%" height="8">
                <? if(!$HTTP_SESSION_VARS["id"]==""){include("php/mypage.php");}else{include("inc/login.htm");} ;?>                
                           

                </td>
              </tr>
              </center>
              <tr>
                <td width="100%" valign="top">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0" >
                    <tr>
                      <td width="66%">
                        <p align="center">
                        <img border="1" src="/php/2003_january/cover.jpg" border="1"><font size="1">&nbsp;</font></p>
                      </td>
                      
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">

                       <table border="0" width="766" cellspacing="0" cellpadding="0" height="211">
                        <tr>
                          <td width="305" style="border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; " height="24">
                            <p align="center"><b><font face="Verdana" size="1" color="#737373">:: Latest News</font></b></td>
                          <td style="border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; " height="24" bgcolor="#FFFFCC" width="304">
      <p align="center"><b><font face="Verdana" size="1" color="#737373">::
      Profile</font></b></td>
                          <td width="157" style="border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; " bgcolor="#E0F0FF" height="24">
      <p align="center"><b><font face="Verdana" color="#737373" size="1">:: Regulars</font></b></td>
                        </tr>
                        <tr>
                          <td width="303" valign="top">
                            <div align="center">
                              <center>
                              <table border="0" width="274" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="100%" height="19">
                                    <p align="center"><? include("inc/stoppress.htm"); ?></b></td>
                                </tr>
                                <tr>
                                  <td width="100%"><p align="center">
                 <?php
include_once "/home/oer/oeronline-www/poll/pollphp/textfile/booth.php";
echo $php_poll->poll_process(4);
?>                                  </td>
                                </tr>
                                <tr>
                                  <td width="100%">
                                    <p align="center"><? include("inc/weather.htm"); ?></td>
                                </tr>
                              </center>
                                <tr>
                                  <td width="100%" height="13"><font face="Verdana" size="1">&nbsp;</font></td>
                                </tr>
                              </table>
                            </div>
                          </td>
                          <td height="187" valign="top">
                            <table border="0" width="100%" cellspacing="0" cellpadding="0" height="200">
                              <tr>
                                <td width="100%" bgcolor="#FFFFCC" height="158">
                                  <table border="0" width="100%" cellspacing="0" cellpadding="0" height="169">
                                    <tr>
                                      <td width="22%" height="169">
                                      <img border="0" src="/php/2003_january/pty-1.jpg"></td>
                                      <td width="78%" height="169">
                                      <font face="Verdana" size="1" color="#FF0000">
                  Leader at heart</font><p><font face="Verdana" size="1">
                  For many years, Murtadha Ahmed Sultan, director at the WJ 
                  Towell Group, has promoted teamwork and productivity 
                  successfully among his colleagues. Nayl D'Souza meets him to 
                  gain an insight into the man's accomplished career<br>
                                        <br>
                                        <a href="php/2003_january/profile.php">Click here</a></font></td>
                                    </tr>
                                  </table>
                                </td>
                              </tr>
                              <tr>
                                <td width="100%" height="21"><a href="http://oeronline.com/php/oerbizquiz/oer_bizquiz.php"><img border="0" src="images/oer_bizquiz.jpg" width="304" height="57"></a></td>
                              </tr>
                              <tr>
                                <td width="100%" height="21"><b><font face="Verdana" size="1" color="#FF0000"><br>
                                  </font></b></td>
                              </tr>
                            </table>
                          </td>
                          <td width="155" height="187" valign="top">
                            <table border="0" width="100%" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="100%" bgcolor="#E0F0FF">
      <div align="center">
        <center>
        <table border="0" width="90%" cellspacing="0" cellpadding="0" height="185">
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="20"><b><a href="http://oeronline.com/php/2002_december/profile.php"><font face="Verdana" size="1" color="#0064A0">Profile</font></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="20"><b><a href="http://oeronline.com/php/2002_december/regular1.php"><font face="Verdana" size="1" color="#0064A0">Finance &amp; Economy</font></a></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="20"><b><a href="http://oeronline.com/php/2002_december/regular2.php"><font face="Verdana" size="1" color="#0064A0">Business 2.0</font></a></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="20"><b><a href="http://oeronline.com/php/2002_december/regular3.php"><font face="Verdana" size="1" color="#0064A0">Oil &amp; Gas</font></a></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="20"><b><a href="http://oeronline.com/php/2002_december/regular4.php"><font face="Verdana" size="1" color="#0064A0">Advertising &amp; Marketing</font></a></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="21"><b><a href="http://oeronline.com/php/2002_december/regular5.php"><font face="Verdana" size="1" color="#0064A0">MSM</font></a></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="21"><b><a href="http://oeronline.com/php/2002_december/regular6.php"><font face="Verdana" size="1" color="#0064A0">Automotive News</font></a></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="21"><b><a href="http://oeronline.com/php/2002_december/regular7.php"><font face="Verdana" size="1" color="#0064A0">Book Review</font></a></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-bottom: 1px dotted #0064A0; " height="21"><b><a href="http://oeronline.com/php/2002_december/regular8.php"><font face="Verdana" size="1" color="#0064A0">At the helm</font></a></b></td>
          </tr>
        </table>
        </center>
      </div>
                                </td>
                              </tr>
                              <tr>
                <td width="100%" height="2">
                </td>
                              </tr>
                              <tr>
                                <td width="100%">
                  <? include("inc/subscribe_newsletter.htm");
?>                                </td>
                              </tr>
                              
                              <tr>
                <td width="100%" height="68" bgcolor="#669966">
                  <p align="center">&nbsp;</td>
                              </tr>
                              <tr>
                <td width="100%" height="2">
                </td>
                              </tr>
                              
                            </table>
                          </td>
                        </tr>
                       </table>

                       </td>
  </tr>
  <tr>
    <td width="100%">

                    
 <div align="center">
  <center>

            <table border="0" width="579" cellspacing="0" cellpadding="0">
              <tr>
                <td width="138" align="center" style="border-top: 1px solid #C0C0C0; "><img border="0" src="images/home_arrow1.jpg" width="8" height="9">
                  <font face="Verdana" size="1"><a href="http://oeronline.com/php/articles/post.php">Post your Articles</a></font></td>
                <td width="120" align="center" style="border-top: 1px solid #C0C0C0; "><img border="0" src="images/home_arrow1.jpg" width="8" height="9">
                  <font face="Verdana" size="1"><a href="http://oeronline.com/php/articles/view.php">View Articles</a></font></td>
                <td width="120" align="center" style="border-top: 1px solid #C0C0C0; "><img border="0" src="images/home_arrow1.jpg" width="8" height="9">
                  <font face="Verdana" size="1"><a href="http://oeronline.com/php/letter_to_editor/letter_to_editor.php">Letter to Editor</a></font></td>
                <td width="189" align="center" style="border-top: 1px solid #C0C0C0; "><img border="0" src="images/home_arrow1.jpg" width="8" height="9">
                  <font face="Verdana" size="1"><a href="http://oeronline.com/php/marketwatch/stoppress.php">Latest News</a></font></td>
              </tr>
            </table>

  </center>
 </div>
                  </td>
  </tr>
  <tr>
    <td width="100%">

                    
 <?
                    include("inc/bottom.htm");
?>                  </td>
  </tr>
  <tr>
    <td width="100%">
      

                    </td>
  </tr>
  <tr>
    <td width="100%">
    
    </td>
  </tr>
  <tr>
    <td width="100%"></td>
  </tr>
  <tr>
    <td width="100%"></td>
  </tr>
</table>



</body>

<?if(!$HTTP_SESSION_VARS["mes"]=="")
{
	echo "";
	
}
?>