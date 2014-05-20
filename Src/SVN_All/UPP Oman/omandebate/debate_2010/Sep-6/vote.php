<style>
.voteResBg {
	width:80px
	height: 8px;
	margin: 0px auto;
	background-image: url(images/vote_res_bg.gif);
	background-repeat: repeat-x;
}
.voteRes {
	height: 8px;
	background-image: url(images/vote_agr.gif);
	background-repeat: repeat-x;
	float:left;
}
.voteResDis{
	height: 8px;
	background-image: url(images/vote_disAgr.gif);
	background-repeat: repeat-x;
	float:left;
}
form
{
	margin-bottom: 0px;
}
</style>
<?php 
include('oerDb.php');
if($vote[id])
{
$totQuery = mysql_query("SELECT COUNT(id) total FROM votedet WHERE question = $vote[id]");
$totalRes = mysql_fetch_array($totQuery);
$totalVote = $totalRes[total];

$resQuery = mysql_query("SELECT COUNT(result) totAgr FROM votedet WHERE question = $vote[id] AND result = 1");
$resRes = mysql_fetch_array($resQuery);

if($totalVote == 0)
{
	$resAgr = 0;
	$resDisAgr = 0;
}
else
{
	$resAgr = round(($resRes[totAgr]/$totalRes[total])*100,2);
	$resDisAgr = round((($totalVote - $resRes[totAgr])/$totalRes[total])*100,2);
}
}
else
{
	$resAgr = 0;
	$resDisAgr = 0;
}
?>
<form action="" method="post" name="frmVote">
  <table width="90%" border="0" cellspacing="0" cellpadding="5" align="center" style="font-family:Verdana; font-size: 8pt; color:#252525;">
    <tr>
      <td><input name="rdAns" type="radio" value="1" onClick="newWindow('userDetails.php?agr=1&amp;qId=<?=$vote[id]?>','','350','220','resizable,scrollbars,status,toolbar')" <?=$noPoll?>>
        Be risk-averse</td>
    </tr>
    <tr>
      <td background="images/vote_bg.gif" height="2px" style="padding: 0px;"></td>
    </tr>
    <tr>
      <td><input name="rdAns" type="radio" value="0" onClick="newWindow('userDetails.php?agr=0&amp;qId=<?=$vote[id]?>','','350','220','resizable,scrollbars,status,toolbar')" <?=$noPoll?>>
        Embrace change</td>
    </tr>
    <tr>
      <td background="images/vote_bg.gif" height="2px" style="padding: 0px;"></td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="3" align="center" style="font-family:Verdana; font-size: 8pt; color:#252525;">
          <tr>
            <td width="35%">Be risk-averse</td>
            <td width="57%" align="left">
		  <div class="voteResBg">
                	<div class="voteRes" style="width: <?=$resAgr?>%;"></div>
            </div>            </td>
            <td align="left" ><?=$resAgr?>%</td>
          </tr>
          <tr>
            <td>Embrace change</td>
            <td align="left">
       	  <div class="voteResBg">
                	<div class="voteResDis" style="width: <?=$resDisAgr?>%;"></div>
            </div>            </td>
            <td align="left"><?=$resDisAgr?>%</td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
<script type="text/javascript" language="JavaScript">
var win = null;
function newWindow(mypage,myname,w,h,features) {
  var winl = (screen.width-w)/2;
  var wint = (screen.height-h)/2;
  if (winl < 0) winl = 0;
  if (wint < 0) wint = 0;
  var settings = 'height=' + h + ',';
  settings += 'width=' + w + ',';
  settings += 'top=' + wint + ',';
  settings += 'left=' + winl + ',';
  settings += features;
  win = window.open(mypage,myname,settings);
  win.window.focus();
}
</script>
