<?php
include('../oerDb.php');
$temp .='<table  border="1" cellspacing="1" cellpadding="3" >
  <tr>
    <td width="10%" height="30" ><strong>Code</strong></td>
    <td width="24%" height="25" ><strong>Question</strong></td>
	<td width="24%" height="25" ><strong>Answer</strong></td>
	<td width="24%" height="25" ><strong>Name</strong></td>
	<td width="24%" height="25" ><strong>Email</strong></td>
    <td width="23%" height="25" ><strong>GSM</strong></td>
	 <td width="23%" height="25" ><strong>Company</strong></td>
    <td width="14%" height="25" ><strong>Designation</strong></td>
	<td width="25%" height="25" ><strong>Comments</strong></td>
    <td width="14%" height="25" ><strong>Date</strong></td>
  </tr>';
  
	if($_REQUEST[selCode] != '')
	{
		$cde = $_REQUEST[selCode];
		$votQuery = mysql_query("SELECT * FROM votedet WHERE question='$cde' ORDER BY question");
	}
	else
		$votQuery = mysql_query("SELECT * FROM votedet ORDER BY question");
	
	
	while($resultRow = mysql_fetch_array($votQuery))
	{
		$qusQuery = mysql_query("SELECT code,question FROM question WHERE id='$resultRow[question]'");
		$quesVal = mysql_fetch_array($qusQuery);
		$temp .='
		<tr>
			<td>'.$quesVal['code'].'</td>
			<td>'.$quesVal['question'].'</td>
			<td>'.$resultRow['result'].'</td>
			<td>'.$resultRow['name'].'</td>
			<td>'.$resultRow['email'].'</td>
			<td>'.$resultRow['gsm'].'</td>
			<td>'.$resultRow['company'].'</td>
			<td>'.$resultRow['desig'].'</td>
			<td>'.$resultRow['comments'].'</td>
			<td>'.$resultRow['date'].'</td>
		  </tr>';
	}
$temp .='</table>';
	$html = $temp;
	$filename = "VotingDetails" . date('d-m-Y') . ".xls";
	header("Content-type: application/vnd.ms-excel");
	header("Content-Disposition: attachment; filename=$filename");
	echo $html;
    
    ?>