<?php
include('../../../oerDb.php');

$question = $_POST[txtQuestion];
$code = $_POST[txtCode];

if($question != '')
{
	mysql_query("INSERT INTO question VALUES('','$code','$question','$_POST[option1]','$_POST[option2]','','0','".date('Y-m-d')."')");
	header("Location: ../../vote.php?contId=qus&succ=succ");
}
?>