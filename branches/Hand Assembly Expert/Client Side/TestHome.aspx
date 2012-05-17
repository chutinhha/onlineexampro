<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestHome.aspx.cs" Inherits="TestHome" %>

<%@ Register Src="ucImgaeSlider.ascx" TagName="ucImgaeSlider" TagPrefix="uc1" %>
<%@ Register Src="ucVideoSlide.ascx" TagName="ucVideoSlide" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1000px;
        }
        .style2
        {
            width: 697px;
            height: 333px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td align="center">
                <img alt="Logo" class="style2" src="Image/Logo.png" />
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            <uc1:ucImgaeSlider ID="ucImgaeSlider1" runat="server" />
                        </td>
                        <td>
                            <%--<uc2:ucVideoSlide ID="ucVideoSlide1" runat="server" />--%>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
