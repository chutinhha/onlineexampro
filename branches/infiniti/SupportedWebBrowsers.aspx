<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="SupportedWebBrowsers.aspx.cs" Inherits="SupportedWebBrowsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Stylesheet/contentStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%" class="pageback">
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="PageHead">
                Supported Web Browsers
            </td>
        </tr>
        <tr>
            <td class="pagecontent">
                Infiniticlothing.com supports the following Web browsers: Mozilla Firefox 3.0+,
                Microsoft Internet Explorer 7.0+, Google Chrome 14.0+, and Apple Safari 4.0+. Additionally,
                some of the site content requires Adobe Flash Player 9.0 or later.
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
