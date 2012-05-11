<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucProfileDetail.ascx.cs"
    Inherits="ucProfileDetail" %>
<table cellpadding="0" cellspacing="0" width="600px">
    <tr>
        <td>
            <table cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <%=ViewState["Name"]%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Date of Birth:
                    </td>
                    <td>
                        <%=ViewState["DOB"]%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Mobile:
                    </td>
                    <td>
                        <%=ViewState["Mobile"]%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td>
                        <%= ViewState["Email"]%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Last Login:
                    </td>
                    <td>
                        <%=ViewState["Last login"]%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Country:
                    </td>
                    <td>
                        <%=ViewState["Country"]%>
                    </td>
                </tr>
            </table>
        </td>
        <td align="center">
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Width="150px" Height="150" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="right">
            <asp:ImageButton ID="ibtnUpdate" runat="server" ImageUrl="~/Images/updateButton.png"
                OnClick="ibtnUpdate_Click" />
        </td>
    </tr>
</table>
