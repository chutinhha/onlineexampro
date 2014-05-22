<?
	session_start();
	session_unregister("id");
	session_destroy();
	header("Location:login.php");
?>