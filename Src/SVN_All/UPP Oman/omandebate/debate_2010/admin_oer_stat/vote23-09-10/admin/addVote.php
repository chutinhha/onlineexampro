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
    <td  valign="top" class="title">Add Statement</td>
  </tr>
  <tr>
    <td  valign="top"><?php 
        echo('<table width="100%" border="0" cellspacing="0" cellpadding="4"><tr><td class="success">');
        if($_REQUEST['succ']=='succ')
            echo('Question Added Successfully');
		echo('</td></tr></table>');
		
		$codQuery = mysql_query("SELECT id FROM question ORDER BY id DESC LIMIT 0,1");
		$codVal = mysql_fetch_array($codQuery);
		$newId = $codVal[id]+1;
		if($newId<10)
			$newCode = 'Q00'.$newId;
		else if($newId<100)
			$newCode = 'Q0'.$newId;
		else
			$newCode = 'Q'.$newId;
        ?>
    </td>
  </tr>
  <tr>
    <td  valign="top" ><form name="form1" method="post" action="vote/admin/addVote_db.php" onsubmit="return validate()">
        <table width="500" align="center" cellpadding="5" cellspacing="1">
          <tr>
            <td align="right">Code<span class="style1">*</span> :</td>
            <td align="left"><input type="text" name="txtCode" id="txtCode" maxlength="4" value="<?=$newCode?>" readonly="readonly">            </td>
          </tr>
          <tr>
            <td width="40%" align="right" valign="top">Statement<span class="style1">*</span> : </td>
            <td align="left"><textarea name="txtQuestion" id="txtQuestion" cols="30" rows="3"></textarea>            </td>
          </tr>
          
          <tr>
            <td align="right">&nbsp;</td>
            <td><input type="submit" name="btnSubmit" id="btnSubmit" value="Submit"></td>
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
