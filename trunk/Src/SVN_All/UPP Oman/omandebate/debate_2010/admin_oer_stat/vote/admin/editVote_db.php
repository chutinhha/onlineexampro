<?php
include('../../../oerDb.php');

$question = $_POST[txtQuestion];
$edId = $_POST[hdId];
$code = $_POST[txtCode];

if($question != '')
{
	mysql_query("UPDATE question SET code='$code',question='$question',ans1='$_POST[option1]',ans2='$_POST[option2]' WHERE id='$edId'");
	header("Location: ../../vote.php?contId=qus&succ=updt");
}
?>