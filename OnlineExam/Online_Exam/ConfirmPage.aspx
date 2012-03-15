<%@ Page Title="" Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="ConfirmPage.aspx.cs" Inherits="ConfirmPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                Enter your name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnContinue" runat="server" onclick="btnContinue_Click" 
                    Text="Continue" />
            </td>
        </tr>
         </table>

        <table id="tblCon" runat="server" class="style1">
        <tr>
            <td>
                Mobile</td>
            <td>
                <asp:Label ID="lblMobile" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Mail</td>
            <td>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="margin-left: 40px">
                <asp:Button ID="btnYes" runat="server" onclick="btnYes_Click" Text="Yes" />
            </td>
            <td>
                <asp:Button ID="btnNo" runat="server" onclick="btnNo_Click" Text="No" />
            </td>
        </tr>
    </table>
</asp:Content>

