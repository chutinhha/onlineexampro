<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Video</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr>
        <td>
         <table width="60%" cellpadding="4" cellspacing="1" border="0" align="center">
         
         <tr>
          <td>Video File:</td>
          <td><asp:FileUpload ID="FileUpload1" runat="server" /><asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Only wmv, avi or mpeg files are allowed!" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.wmv|.avi|.mpeg|.MPEG)$" ControlToValidate="FileUpload1" Display="dynamic">
                </asp:RegularExpressionValidator></td>          
         </tr>
         <tr>
          <td align="center" colspan="2">
          <asp:Button ID="btnsub" runat="server" Text="Upload" OnClick="btnsub_Click"/>
          </td>
          
         </tr>
         <tr>
          <td align="center" colspan="2"><asp:Label ID="lblmsg" runat="server" ForeColor="green"></asp:Label>&nbsp;&nbsp;<asp:HyperLink id="hyp" runat="server" Text="Click Here to watch" Visible="false"></asp:HyperLink></td>
         </tr>
         </table>
        </td>
        </tr>
        </table>
    </form>
</body>
</html>
