<?
	session_start();
	session_unregister("name");
	session_unregister("pass");
	session_destroy();
 	header("Location: index.php");
 
 ?>