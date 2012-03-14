<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="E_Learning.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
A.menulink {
display: block;
width: 198px;
text-align: left;
text-decoration: none;
font-family:arial;
font-size:12px;
color: #000000;
BORDER: none;
border: solid 1px #FFFFFF;
}

A.menulink:hover {
border: solid 1px #6100C1;
background-color:#F0E1FF;
}

</style>

<script>

    /*
    CSS Menu highlight- By Marc Boussard (marc.boussard@syntegra.fr)
    Modified by DD for NS4 compatibility
    Visit http://www.dynamicdrive.com for this script
    */

    var ns4class = ''
</script>
</head>
<body>

   
    <form id="form1" runat="server">
    <div>
    <table border="0" width=198>
  <tr>
    <td width="100%" bgcolor="#E6E6E6"><b>Main Menu (CSS)<b></td>
  <tr>
    <td width="100%"><a href="http://www.javascriptkit.com" class="menulink" class=&{ns4class};>JavaScript Kit</a></td>
  </tr>
  <tr>
    <td width="100%"><a href="http://freewarejava.com" class="menulink" class=&{ns4class};>Freewarejava.com</a></td>
  </tr>
  <tr>
    <td width="100%"><a href="http://www.codingforums.com" class="menulink" class==&{ns4class};>CodingForums.com</a></td>
  </tr>
  <tr>
    <td width="100%"><a href="http://news.bbc.co.uk" class="menulink" class=&{ns4class};>BBC News</a></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
