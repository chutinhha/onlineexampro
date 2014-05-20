<?php
include('../../../oerDb.php');

$question = $_POST[txtQuestion];
$edId = $_POST[hdId];
$code = $_POST[txtCode];

if($question != '')
{
	mysql_query("UPDATE question SET code='$code',question='$question' WHERE id='$edId'");
	header("Location: ../../vote.php?contId=qus&succ=updt");
}
?>