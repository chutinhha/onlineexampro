<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin.master" CodeFile="AdminMain.aspx.cs"
    Inherits="AdminMain" %>

<asp:Content ID="conten1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td>
                    Host Name
                </td>
                <td>
                    <asp:TextBox ID="txtHost" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    IP Address
                </td>
                <td>
                    <asp:TextBox ID="txtIP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Category
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">Positive</asp:ListItem>
                        <asp:ListItem Value="1">Negative</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
