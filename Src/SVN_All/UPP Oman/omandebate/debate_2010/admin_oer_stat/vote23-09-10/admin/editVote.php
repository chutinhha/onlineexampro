<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: Verdana;
	font-size:8pt;
	color:#000;
}
table th {
	color:#FFFFFF;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:8pt;
	font-weight:bold;
}
table td {
	font-size:8pt;
	word-break:break-all;
}
.title {
	font-size:8pt;
	font-weight: bold;
	padding: 10px 0px 10px 10px;
	text-align: left;
}
.style1 {color: #FF0000}
</style>
<table border="0" width="1001" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td  valign="top" class="title">Edit Statement</td>
  </tr>
  <tr>
    <td  valign="top"><?php 
        echo('<table width="100%" border="0" cellspacing="0" cellpadding="4"><tr><td class="success">');
        if($_REQUEST['succ']=='succ')
            echo('Question Updated Successfully');
		echo('</td></tr></table>');
        ?>
    </td>
  </tr>
  <tr>
    <td  valign="top" ><?php
	$editId = $_REQUEST[editId];
	$voteQuery = mysql_query("SELECT * FROM question WHERE id = '$editId'");
	$voteVal = mysql_fetch_array($voteQuery);
	
	$ques = $voteVal[question];
	$cod = $voteVal[code];
	
	?>
      <form name="form1" method="post" action="vote/admin/editVote_db.php" onsubmit="return validate()">
        <input name="hdId" type="hidden" value="<?=$voteVal[id]?>" />
        <table width="500" align="center" cellpadding="5" cellspacing="1">
          <tr>
            <td align="right">Code<span class="style1">*</span> :</td>
            <td align="left"><input type="text" name="txtCode" id="txtCode" maxlength="4" value="<?=$cod?>" readonly="readonly">            </td>
          </tr>
          <tr>
            <td width="40%" align="right" valign="top">Statement<span class="style1">*</span> : </td>
            <td align="left"><textarea name="txtQuestion" id="txtQuestion" cols="30" rows="3"><?=$ques?>
</textarea>            </td>
          </tr>
          
          <tr>
            <td align="right">&nbsp;</td>
            <td><input type="submit" name="btnSubmit" id="btnSubmit" value="Update"></td>
          </tr>
        </table>
      </form></td>
  </tr>
  <tr>
    <td  align="center" valign="bottom"></td>
  </tr>
</table>
<script type="text/javascript">
function validate()
{
	var frm = document.form1;
	if(frm.txtQuestion.value == '')
	{
		alert("Please Enter Statement");
		frm.txtQuestion.focus();
		return false;
	}
	if(frm.txtCode.value == '')
	{
		alert("Please Enter Statement Code");
		frm.txtCode.focus();
		return false;
	}
}
</script>
