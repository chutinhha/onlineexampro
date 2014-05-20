<script language="JavaScript">
<!--
function refreshParent() {
window.opener.location.href = window.opener.location.href;

if (window.opener.progressWindow)

{
window.opener.progressWindow.close()
}
window.close();
}
//-->
</script>
<?php
include('oerDb.php');
if($_POST['btnSubmit'] == 'Submit')
{
$gs = '';
$res=mysql_query("SELECT gsm FROM votedet WHERE gsm='".$_POST[txtGSM]."' AND question='".$_POST[hdnQId]."'");
if(mysql_num_rows($res)>0)
{
	$gs = s;
 		//header("Location: userDetails.php?gs=s&hdnQId=$_POST[hdnQId]&hdnAns=$_POST[hdnAns]&txtName=$_POST[txtName]&txtEmail=$_POST[txtEmail]&txtComp=$_POST[txtComp]&txtDesig=$_POST[txtDesig]&txtComments=$_POST[txtComments]");
}
else{
	mysql_query("INSERT INTO votedet VALUES('',
											'$_POST[hdnQId]',
											'$_POST[hdnAns]',
											'".addslashes($_POST[txtName])."',
											'".addslashes($_POST[txtEmail])."',
											'".$_POST[txtGSM]."',
											'".addslashes($_POST[txtComp])."',
											'".addslashes($_POST[txtDesig])."',
											'".addslashes($_POST[txtComments])."',
											'".date('Y-m-d')."')") or die("Error ". mysql_error());
	echo('<script language="javascript">
				alert("Thank You for Your Opinion");
				refreshParent();
			</script>');
}}

?>
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>


<form id="frmUserDet" name="frmUserDet" method="post" action="" onSubmit="return call()">
<?php
if($_REQUEST['agr'] == 1)
	$agree = 1;
else
	$agree = 0;

if($_REQUEST[qId] != '')
	$qId = $_REQUEST[qId];
?>
<input type="hidden" name="hdnAns" value="<?php echo $agree ?>">
<input type="hidden" name="hdnQId" value="<?php echo $qId ?>">
  <table width="100%" border="0" cellspacing="0" cellpadding="5" style="font-family:Verdana; font-size: 8pt; color:#252525;">
  <tr>
      <td colspan="2" align="center"><?php if($gs == 's') echo '<span style="color:red">Sorry. Your Vote has already been registered.</sapn>'; ?> </td>
    </tr> 
    <tr>
      <td>Name<span class="style1">*</span></td>
      <td><input type="text" name="txtName" id="txtName" value="<?php echo $_REQUEST['txtName']; ?>" /></td>
    </tr> 
    <tr>
      <td>Email<span class="style1">*</span></td>
      <td><input type="text" name="txtEmail" id="txtEmail" value="<?php echo $_REQUEST['txtEmail']; ?>"/></td>
    </tr>
    <tr>
      <td>GSM<span class="style1">*</span></td>
      <td><input name="txtGSM" type="text" id="txtGSM" maxlength="13" value="<?php echo $_REQUEST['txtGSM']; ?>"/></td>
    </tr>
    <tr>
      <td>Company</td>
      <td><input type="text" name="txtComp" id="txtComp" value="<?php echo $_REQUEST['txtComp']; ?>"/></td>
    </tr>
    <tr>
      <td>Designation</td>
      <td><input type="text" name="txtDesig" id="txtDesig" value="<?php echo $_REQUEST['txtDesig']; ?>"/></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td><textarea name="txtComments" cols="16" rows="3"><?php echo $_REQUEST['txtComments']; ?></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>
          <input type="submit" name="btnSubmit" id="btnSubmit" value="Submit" />&nbsp;
          <input type="reset" name="btnReset" id="btnReset" value="Reset" />      </td>
    </tr>
  </table>
</form>

<script language="javascript">
function call()
{
	function is_email(email) 
	{ 
		if(!email.match(/^[A-Za-z0-9\._\-+]+@[A-Za-z0-9_\-+]+(\.[A-Za-z0-9_\-+]+)+$/)) 	return false; 		return true; 
	}
	$name=document.frmUserDet.txtName.value.length
	if($name<1)
	{
		alert("Please fill Name");
		document.frmUserDet.txtName.focus();
		return false;
	}
	if(!isNaN(document.frmUserDet.txtName.value))
	{
		alert("Please Give Correct Name");
		document.frmUserDet.txtName.focus();
		return false;
	}
	email=document.frmUserDet.txtEmail.value;
	if (email=='' || email==null) 
	{ 
		alert ("Please specify Email Id"); 
		document.frmUserDet.txtEmail.focus(); 
		return false; 
	}	 
	var k=is_email(email)
	if(k==false) 
	{ 
		alert("Please specify correct Email."); 
		document.frmUserDet.txtEmail.select(); 
		document.frmUserDet.txtEmail.focus(); 
		return false; 
	} 
	gsm=document.frmUserDet.txtGSM.value;
	if (gsm=='' || gsm==null) 
	{ 
		alert ("Please Give GSM"); 
		document.frmUserDet.txtGSM.focus(); 
		return false; 
	}	
	if(isNaN(gsm))
	{
		alert("Please Give Correct GSM");
		document.frmUserDet.txtGSM.focus();
		return false;
	}
}
</script>