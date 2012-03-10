<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="Assgin Test.aspx.cs" Inherits="admin_Assgin_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="900px" align="center">
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                        Catagory :
                        </td>
                        <td>
                            <asp:ListBox ID="ListBoxCatagory" runat="server"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Number of Question :
                        </td>
                        <td>
                            <asp:TextBox ID="txtNoquestion" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        Time Duration :
                        </td>
                        <td>
                            <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="btnOk" runat="server" Text="Ok" Width="80px" 
                                onclick="btnOk_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
