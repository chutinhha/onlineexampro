<?session_start();?>
<?php
	if($_POST['time']=="first")
	{
		session_register("name");
		session_register("desi");
		session_register("comp");
		session_register("pwd");
		session_register("id");
		session_register("email");									
									
		$HTTP_SESSION_VARS["name"]=$_POST['f_name'];
		$HTTP_SESSION_VARS["desi"]=$_POST['f_desi'];
		$HTTP_SESSION_VARS["comp"]=$_POST['f_comp'];
		$HTTP_SESSION_VARS["tel"]=
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
	{?>
	
	<!--html code starts-->
	
	
	<table border="0" width="100%" cellspacing="0" cellpadding="0" height="210">
  <tr>
    <td width="100%" height="21">
<? include("../inc/top1.php"); ?></td>
  </tr>
 <tr>

    <td width="100%" height="15">

<? include("../inc/menu_gen.htm");

?></td>

  </tr>

  <tr>
    <td width="100%" height="15" valign="middle">
      <font face="Verdana" size="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="71">
      <table border="0" width="100%" cellspacing="0" cellpadding="0" height="128">
        <tr>
          <td width="77%" height="128" valign="top">
            <div align="center">
              <table border="0" width="90%" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="100%">
        <p align="left">
	
		<center><br>
        <font face="Verdana" size="2">
		Username</font> <i><font color="#800000"><? echo $HTTP_SESSION_VARS["id"]; ?></font></i> 
        <font face="Verdana" size="2"> already in use, please type in  another user name</font>
		<form action=register.php method=post >
			<input type=text name=f_id size="20">
			<input type=hidden name=time value=second>
			<input type=submit value=register>
		</form>
		
              <center>
                    <hr color="#CC3333">
        </center>
        </center>
                  </td>
                </tr>
                <tr>
                  <td width="100%"></td>
                </tr>
                <tr>
                  <td width="100%"><? include("../inc/menu1.htm");
?></td>
                </tr>
              <center>
                <tr>
                  <td width="100%"><font size="1">&nbsp;</font></td>
                </tr>
              </table>
              </center>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="61">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">

                       </td>
  </tr>
  <tr>
    <td width="100%">

                    
 <? include("../inc/bottom.htm");
?>                  </td>
  </tr>
</table>

    </td>
  </tr>
</table>
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
			
			
			<table border="0" width="100%" cellspacing="0" cellpadding="0" height="112">
  <tr>
    <td width="100%" height="21">
<? include("../inc/top1.php"); ?></td>
  </tr>
 
<tr>

    <td width="100%" height="15">

<? include("../inc/menu_gen.htm");

?></td>

  </tr>
  <tr>
    <td width="100%" height="15" valign="middle">
      <font face="Verdana" size="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="1">
      <table border="0" width="100%" cellspacing="0" cellpadding="0" height="119">
        <tr>
          <td width="77%" height="119" valign="top">
            <div align="center">
              <table border="0" width="90%" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="100%">

			<center><font color=red>You Are Already Registered</font><br>
<a href=/index.php>Login</a>
		
                      <center>
                    <hr color="#CC3333">
        </center>
                  </center>
                  </td>
                </tr>
                <tr>
                  <td width="100%"></td>
                </tr>
                <tr>
                  <td width="100%"><? include("../inc/menu1.htm");
?></td>
                </tr>
              <center>
                <tr>
                  <td width="100%"><font size="1">&nbsp;</font></td>
                </tr>
              </table>
              </center>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="61">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">

                       </td>
  </tr>
  <tr>
    <td width="100%">

                    
 <? include("../inc/bottom.htm");
?>                  </td>
  </tr>
</table>

    </td>
  </tr>
</table>
<!--html code's end -->
		
		
		<?}
		
		else
		{

			$sql="insert into OER (name,desi,comp,email,id,pwd)values('".$HTTP_SESSION_VARS["name"]."','".$HTTP_SESSION_VARS["desi"]."','".$HTTP_SESSION_VARS["comp"]."','".$HTTP_SESSION_VARS["email"]."','".$HTTP_SESSION_VARS["id"]."','".$HTTP_SESSION_VARS["pwd"]."')";
			
			mysql_query($sql,$db);
			//echo $sql;
			?> 

			<!--html code starts-->
			
			<table border="0" width="100%" cellspacing="0" cellpadding="0" height="230">
  <tr>
    <td width="100%" height="21">
<? include("../inc/top1.php"); ?></td>
  </tr>
 <tr>

    <td width="100%" height="15">

<? include("../inc/menu_gen.htm");

?></td>

  </tr>
  <tr>
    <td width="100%" height="15" valign="middle">
      <font face="Verdana" size="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="91">
      <table border="0" width="100%" cellspacing="0" cellpadding="0" height="1">
        <tr>
          <td width="77%" height="1" valign="top">
            <div align="center">
              <table border="0" width="90%" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="100%" valign="top">

       	<div align="center">
          	<table border="0" cellpadding="3" cellspacing="0" width="50%">
           <tr>
           <td width="100%" colspan="2"><b><font face="Verdana" size="1">You Are Successfully&nbsp;
            Registered.</font></b></td>
            </tr>
            <tr>
              <td width="25%" align="left"><font face="Verdana" size="2" color="#000000">Name</font></td>
              <td width="75%"><font face="Verdana" size="2" color="#FF0000"><? echo $HTTP_SESSION_VARS["name"]; ?></font></td>
            </tr>
            <tr>
              <td width="25%" align="left"><font face="Verdana" size="2">Designation</font></td>
              <td width="75%"><font face="Verdana" size="2" color="#FF0000"><? echo $HTTP_SESSION_VARS["desi"]; ?></font></td>
            </tr>
            <tr>
              <td width="25%" align="left"><font face="Verdana" size="2">Company&nbsp;</font></td>
              <td width="75%"><font face="Verdana" size="2" color="#FF0000"><? echo $HTTP_SESSION_VARS["comp"]; ?></font></td>
            </tr>
            <tr>
              <td width="25%" align="left"><font face="Verdana" size="2">Email</font></td>
              <td width="75%"><font face="Verdana" size="2" color="#FF0000"><? echo $HTTP_SESSION_VARS["email"]; ?></font></td>
            </tr>
            <tr>
              <td width="25%" align="left"><font face="Verdana" size="2">User ID</font></td>
              <td width="75%"><font face="Verdana" size="2" color="#FF0000"><? echo $HTTP_SESSION_VARS["id"]; ?></font></td>
            </tr>
            <tr>
              <td width="25%" align="left"><font face="Verdana" size="2">Password&nbsp;</font></td>
              <td width="75%"><font face="Verdana" size="2" color="#FF0000"><? echo $HTTP_SESSION_VARS["pwd"]; ?></font></td>
            </tr>
            <tr>
              <td width="100%" colspan="2">
                <p align="center"><br>

                <font face="Verdana" size="1"><u><a href="/index.php">Go TO My Page</a></u></font>
              </td>
            </tr>
          </table>
        </div>
                      <center>
                    <hr color="#CC3333">
        </center>
                  </td>
                </tr>
                <tr>
                  <td width="100%"></td>
                </tr>
                <tr>
                  <td width="100%"><? include("../inc/menu1.htm");
?></td>
                </tr>
              <center>
                <tr>
                  <td width="100%"><font size="1">&nbsp;</font></td>
                </tr>
              </table>
              </center>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" height="61">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">

                       </td>
  </tr>
  <tr>
    <td width="100%">

                    
 <? include("../inc/bottom.htm");
?>                  </td>
  </tr>
</table>

    </td>
  </tr>
</table>

<!--html code ended-->

<?}}?>