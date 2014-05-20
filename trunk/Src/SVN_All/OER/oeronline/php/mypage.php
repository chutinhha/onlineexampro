<?session_start();?>

<?php
	if(!$HTTP_SESSION_VARS['id']=="")
	{
	}
	else
	{
				header("Location: /inc/error.htm"); 
	}
?>