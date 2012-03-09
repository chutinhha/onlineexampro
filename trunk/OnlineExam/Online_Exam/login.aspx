<%@ Page Title="" Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="900px" align="center" style="border: thin dotted #008080">
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <table style="border: thin dotted #000000">
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            UserName :
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="btnlogin" runat="server" Text="Login" 
                                onclick="btnlogin_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
            <br />
            </td>
        </tr>
    </table>
</asp:Content>
