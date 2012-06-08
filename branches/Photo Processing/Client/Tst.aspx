<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tst.aspx.cs" Inherits="Tst" %>

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
        <div id="pp" class="overlay" style="display: none">
            <div class="loader">
                <img src="Images/ajax-loader.gif" alt="Loading..." />
            </div>
        </div>
        <input id="Button1" type="button" value="button" />
        <script language="javascript" type="text/javascript">
            $(document).ready(function () {
                $('#Button1').click(function () {
                    $.blockUI({ message: $('#pp') });
                    setTimeout($.unblockUI, 2000);
                });
            });
        </script>
    </div>
    </form>
</body>
</html>
