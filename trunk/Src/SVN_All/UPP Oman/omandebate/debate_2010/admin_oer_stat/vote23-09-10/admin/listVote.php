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

.listHead{
	background-color: #FFF;
}
.listBody {
	background-color: #FFF;
}


.listHead th, .listHead td{
	background-color: #87888c;
}
.listBody td {
	background-color: #ECF4FC;
}
</style>
<?
if(isset($_POST[btnAll]))
{
	$votQuery = mysql_query("SELECT * FROM votedet");
	$cde = '';	
}
else if($_POST[selCode] != '')
{
	$cde = $_POST[selCode];
	$votQuery = mysql_query("SELECT * FROM votedet WHERE question='$cde'");
}
else
	$votQuery = mysql_query("SELECT * FROM votedet");
?>
<table border="0" width="1001" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td  valign="top" class="title" align="left">List Opinion</td>
  </tr>
  <tr>
    <td><form action="" method="post" name="frmSrch">
        <table border="0" align="center" cellpadding="5" cellspacing="0">
          <tr>
            <td>Statement : </td>
            <td><?php
				$serQuery = mysql_query("SELECT id,code FROM question WHERE deleted=0");
				?>
              <select name="selCode">
                <option value="">-- Select Code --</option>
                <?php
				while($codes = mysql_fetch_array($serQuery))
				{
					if($cde == $codes[id])
						echo('<option value="'.$codes[id].'" selected>'.$codes[code].'</option>');
					else
						echo('<option value="'.$codes[id].'">'.$codes[code].'</option>');
				}
				?>
              </select>
            </td>
            <td><label>
              <input type="submit" name="btnSearch" id="btnSearch" value="Search" />
              &nbsp;
              <input type="submit" name="btnAll" id="btnAll" value="Search All" />
              </label></td>
          </tr>
        </table>
        <br />
      </form></td>
  </tr>
  <tr>
    <td  align="left" bgcolor="#FFFFFF"><?php

		if(mysql_num_rows($votQuery)>0)
		{?>
      <table width="865" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td width="87%">&nbsp;</td>
          <td width="13%"><a href="excel.php?selCode=<?=$cde?>">Extract to Excel<br />
            <br />
          </a></td>
        </tr>
      </table>
      <table width="867" border="0" align="center" cellpadding="5" cellspacing="1">
        <tr align="center" valign="bottom">
          <th width="3%" valign="middle" bgcolor="#87888c">#</th>
          <th width="5%" valign="middle" bgcolor="#87888c"> Code</th>
          <th width="20%" valign="middle" bgcolor="#87888c">Statement</th>
          <th width="7%" valign="middle" bgcolor="#87888c">Opinion</th>
          <th width="12%" valign="middle" bgcolor="#87888c">Name</th>
          <th width="16%" valign="middle" bgcolor="#87888c">Email</th>
          <th width="8%" valign="middle" bgcolor="#87888c">Gsm</th>
          <th width="9%" valign="middle" bgcolor="#87888c">Company</th>
          <th width="11%" valign="middle" bgcolor="#87888c">Designation</th>
          <th width="9%" valign="middle" bgcolor="#87888c">Date</th>
        </tr>
        <?php
		  $cnt =1;
		  while($votVal = mysql_fetch_array($votQuery))
		  {
		  	$qusQuery = mysql_query("SELECT code,question,deleted FROM question WHERE id='$votVal[question]'");
			$qusVal = mysql_fetch_array($qusQuery);
			if($qusVal[deleted] == 0)
			{
			  ?>
			<tr>
			  <td valign="middle" bgcolor="#ECF4FC"><?=$cnt++?></td>
			  <td align="center" valign="middle" bgcolor="#ECF4FC"><?=$qusVal[code]?></td>
			  <td valign="middle" bgcolor="#ECF4FC"><?=$qusVal[question]?></td>
			  <td align="center" valign="middle" bgcolor="#ECF4FC"><?=$votVal[result]?></td>
			  <td valign="middle" bgcolor="#ECF4FC"><?=$votVal[name]?></td>
			  <td valign="middle" bgcolor="#ECF4FC"><?=$votVal[email]?></td>
			  <td valign="middle" bgcolor="#ECF4FC"><?=$votVal[gsm]?></td>
			  <td valign="middle" bgcolor="#ECF4FC"><?=$votVal[company]?></td>
			  <td valign="middle" bgcolor="#ECF4FC"><?=$votVal[desig]?></td>
			  <td align="center" valign="middle" bgcolor="#ECF4FC"><?=$votVal[date]?></td>
		</tr>
        <?
		} }?>
      </table>
      <br />
      <br />
      <? }
	  else
	  	echo '<div style="text-align: center; font-weight: bold;">No Votes...</div>';
	  ?>
    </td>
  </tr>
</table>
