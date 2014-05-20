<?session_start();?>
<?php
	if($_POST['time']=="first")
	{
		session_register("name");
		session_register("desi");
		session_register("comp");
		session_register("tel");
		session_register("gsm");
		session_register("pwd");
		session_register("id");
		session_register("email");									
									
		$HTTP_SESSION_VARS["name"]=$_POST['f_name'];
		$HTTP_SESSION_VARS["desi"]=$_POST['f_desi'];
		$HTTP_SESSION_VARS["comp"]=$_POST['f_comp'];
		$HTTP_SESSION_VARS["tel"]=$_POST['f_tel'];
		$HTTP_SESSION_VARS["gsm"]=$_POST['f_gsm'];
		$HTTP_SESSION_VARS["pwd"]=$_POST['f_pwd'];
		$HTTP_SESSION_VARS["email"]=$_POST['f_email'];
		$HTTP_SESSION_VARS["id"]=$_POST['f_id'];
	}
	else
	{
	
		$HTTP_SESSION_VARS["id"]=$_POST['f_id'];

	}	
		
	//$db=mysql_connect("localhost","root");
	//mysql_select_db("oer",$db);
	
	$db=mysql_connect("localhost","oer","rtfGREsd");
	mysql_select_db("oeronline_com",$db);

	
	$sql="select * from OER where id=lower('".$HTTP_SESSION_VARS["id"]."')";
	$result=mysql_query($sql,$db);
	$myrow=mysql_fetch_array($result,1);
	if($myrow["id"]==$HTTP_SESSION_VARS["id"])
	{?>	<!--html code starts-->
	
		<center><br>
		Username <i><font color="#800000"><? echo $HTTP_SESSION_VARS["id"]; ?></font></i> already in use, please type in  another user name
		<form action=register.php method=post >
			<input type=text name=f_id size="20">
			<input type=hidden name=time value=second>
			<input type=submit value=register>
		</form>
		
		<!--html code ended-->


	<?}
	
	else
	{
	

		$sql="select * from OER where  email=lower('".$HTTP_SESSION_VARS["email"]."')";
		
		$result=mysql_query($sql,$db);
		$myrow=mysql_fetch_array($result,1);
		if($myrow["email"]==trim($HTTP_SESSION_VARS["email"]))
		{?>
			
			
			<!--html code starts-->

			<center><hr size="0" color="#0000FF"><font color=red>You Are Already Registered</font><hr size="0" color="#0000FF">
		
			<!--html code's end -->
		
		
		<?}
		
		else
		{

			$sql="insert into OER (name,desi,comp,tel,gsm,email,id,pwd)values('".$HTTP_SESSION_VARS["name"]."','".$HTTP_SESSION_VARS["desi"]."','".$HTTP_SESSION_VARS["comp"]."','".$HTTP_SESSION_VARS["tel"]."','".$HTTP_SESSION_VARS["gsm"]."',lower('".$HTTP_SESSION_VARS["email"]."'),lower('".$HTTP_SESSION_VARS["id"]."'),'".$HTTP_SESSION_VARS["pwd"]."')";
			mysql_query($sql,$db);?> 

			<!--html code starts-->

       	<div align="center">
          	<table border="0" cellpadding="3" cellspacing="0" width="70%">
           <tr>
           <td width="100%" colspan="2" align=center>You Are Successfully&nbsp; Registerd.</td>
            </tr>
            <tr>
              <td width="50%" align="right">Name</td>
              <td width="50%"><? echo $HTTP_SESSION_VARS["name"]; ?></td>
            </tr>
            <tr>
              <td width="50%" align="right">Designation</td>
              <td width="50%"><? echo $HTTP_SESSION_VARS["desi"]; ?></td>
            </tr>
            <tr>
              <td width="50%" align="right">Company&nbsp;</td>
              <td width="50%"><? echo $HTTP_SESSION_VARS["comp"]; ?></td>
            </tr>
            <tr>
              <td width="50%" align="right">Telephone</td>
              <td width="50%"><? echo $HTTP_SESSION_VARS["tel"]; ?></td>
            </tr>
            <tr>
              <td width="50%" align="right">GSM</td>
              <td width="50%"><? echo $HTTP_SESSION_VARS["gsm"]; ?></td>
            </tr>
            <tr>
              <td width="50%" align="right">Email</td>
              <td width="50%"><? echo $HTTP_SESSION_VARS["email"]; ?></td>
            </tr>
            <tr>
              <td width="50%" align="right">User ID</td>
              <td width="50%"><? echo $HTTP_SESSION_VARS["id"]; ?></td>
            </tr>
            <tr>
              <td width="50%" align="right">Password&nbsp;</td>
              <td width="50%"><? echo $HTTP_SESSION_VARS["pwd"]; ?></td>
            </tr>
            <tr>
              <td width="100%" colspan="2">
                <p align="center"><font face="Verdana" size="1"><u><a href="/index.php">Go To My Page !</a></u></p></td>
            </tr>
          </table>
        </div>
<!--html code ended-->

<?}}?>