<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Enter the Categories:
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr height="25px">
            <td>
                Categories:
            </td>
            <td width="200px">
                <asp:DropDownList ID="ddlCategories" runat="server" Width="143px" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlCategories_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td width="500px">
                <asp:Label ID="lbCateName" runat="server" Text="Category" Visible="False"></asp:Label>
                <asp:TextBox ID="txtCateADD" runat="server" Visible="False"></asp:TextBox>
                <asp:Label ID="lbRate" runat="server" Text="Rate" Visible="False"></asp:Label>
                <asp:TextBox ID="txtRate" runat="server" Visible="False"></asp:TextBox>
                <asp:Button ID="btnADD" runat="server" Text="ADD" Visible="False" OnClick="btnADD_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Sub-Categories:
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtSubCategories" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="25px" colspan="3">
                <asp:Label ID="lbResponse" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSubmit"
                    runat="server" Text="Submit" onclick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
