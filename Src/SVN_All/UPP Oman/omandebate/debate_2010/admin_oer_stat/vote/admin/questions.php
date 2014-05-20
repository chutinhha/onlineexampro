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

.listHead th, .listHead td
{
	background-color: #87888c;
}

.listBody td
{
	background-color: #ECF4FC;
}

#published td
{
	background-color: #cccccc;
}
.success
{
	color: #660000;
	margin: 0px auto;
	text-align: center;
}
</style>

<?php
if($_REQUEST['delId'] != '')
{
	//mysql_query("DELETE FROM question WHERE id='$_REQUEST[delId]'");
	mysql_query("UPDATE question SET deleted=1 WHERE id='$_REQUEST[delId]'");
	$flg = 1;
}

if($_REQUEST[unpub] == 'yes')
{
	mysql_query("UPDATE question SET pub=0 WHERE pub=1")or die;
}
if($_POST[rdPub] && $_POST[hdnpublish] == 'yes')
{
	mysql_query("UPDATE question SET pub=0 WHERE pub=1")or die;
	mysql_query("UPDATE question SET pub=1 WHERE id='$_POST[rdPub]'")or die;
	header("Location:?contId=qus");
}

?>
<table border="0" width="1001" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td  valign="top" class="title">Statement</td>
  </tr>
  <tr>
    <td  valign="top" class="title">
    <?php 
        echo('<table width="100%" border="0" cellspacing="0" cellpadding="4"><tr><td class="success">');
        if($_REQUEST['succ']=='updt')
            echo('Statement Updated Successfully');
		if($_REQUEST['succ']=='succ')
            echo('Statement Added Successfully');
		if($flg == 1)
            echo('Statement Deleted Successfully');
		echo('</td></tr></table>');
        ?>
    </td>
  </tr>  
  <tr>
    <td  align="left" bgcolor="#FFFFFF">
    <?php
		$qusQuery = mysql_query("SELECT * FROM question WHERE deleted=0");
		if(mysql_num_rows($qusQuery)>0)
		{?>
		<form action="" method="post" name="frmVote">
        <input name="hdnpublish" type="hidden" value="yes" />
        <table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#FFFFFF">
          <tr>
            <td valign="middle">&nbsp;</td>
            <td valign="middle">&nbsp;</td>
            <td valign="middle">&nbsp;</td>
            <td valign="middle">&nbsp;</td>
            <td align="center" valign="middle"><a href="?contId=qus&unpub=yes" class="xls">Unpublish<br />
              <br />
            </a></td>
            <td align="center" valign="middle"><a href="javascript:document.frmVote.submit();" class="xls">Publish<br />
              <br />
            </a></td>
          </tr>
          <tr align="center" valign="bottom"> 
            <th width="5%" valign="middle" bgcolor="#87888c">#</th>
            <th width="5%" valign="middle" bgcolor="#87888c">&nbsp;</th>
            <th width="8%" valign="middle" bgcolor="#87888c">Code</th>
            <th width="37%" valign="middle" bgcolor="#87888c">Statement</th>
            <th width="9%" valign="middle" bgcolor="#87888c">&nbsp;</th>
            <th width="8%" valign="middle" bgcolor="#87888c">&nbsp;</th>
          </tr>
          <?php
		  $cnt =1;
		  while($ques = mysql_fetch_array($qusQuery))
		  {
		  if($ques[pub] == '1')
		  {
		  	$newId = 'id="published"';
			$publ = 'checked';
		  }
		  else
		  {
		  	$newId = '';
			$publ = '';
		  }
		  ?>
          <tr class="listBody" <?php echo $newId; ?>>
            <td valign="middle" bordercolor="#ECF4FC"><?php echo $cnt++; ?></td>
            <td valign="middle" bordercolor="#ECF4FC"><input name="rdPub" type="radio" value="<?php echo $ques[id]; ?>" <?php echo $publ; ?> /></td>
            <td valign="middle" bordercolor="#ECF4FC"><?php echo $ques[code]; ?></td>
            <td valign="middle" bordercolor="#ECF4FC"><?php echo $ques[question];?></td>
            <td align="center" valign="middle" bordercolor="#ECF4FC"><a href="vote.php?contId=vot_ed&editId=<?php echo $ques[id]; ?>">Edit</a></td>
            <td align="center" valign="middle" bordercolor="#ECF4FC"><a href="?contId=qus&delId=<?php echo $ques[id];?>" onClick="return confirm('Are you sure you want to Delete?')">Delete</a></td>
          </tr>
          
          <?php }?>
        </table>
      </form>
      <?php }?>
    </td>
  </tr>
</table>
