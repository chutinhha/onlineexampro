<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register src="ucSlideShow.ascx" tagname="ucSlideShow" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Stylesheet/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery1.js" type="text/javascript"></script>
    <script src="js/ie6.js" type="text/javascript"></script>
    <script src="js/scripts.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">    
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:ucSlideShow ID="ucSlideShow1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
