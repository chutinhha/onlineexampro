<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tst.aspx.cs" Inherits="Tst" %>

<%@ Register Src="ucLogin.ascx" TagName="ucLogin" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="js/jquery.blockUI.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="pp" style="display: none;">
            <div>
                <img src="Images/ajax-loader.gif" alt="Loading..." />
            </div>
        </div>
        <input id="Button1" type="button" value="button" />
        <input id="Button2" type="button" value="button" />
        <script language="javascript" type="text/javascript">
            $(document).ready(function () {
                $('#Button1').click(function () {
                    $.blockUI({ message: $('#pp') });
                    setTimeout($.unblockUI, 2000);
                });
                $('#Button2').click(function () {
                    $.blockUI({ message: $('#Div1') });
                    setTimeout($.unblockUI, 2000);
                });
            });
        </script>
    </div>
    <div id="Div1" style="display: none">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
