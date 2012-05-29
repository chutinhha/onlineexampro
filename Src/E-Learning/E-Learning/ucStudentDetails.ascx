<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentDetails.ascx.cs"
    Inherits="E_Learning.ucStudentDetails" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<table>
    <tr>
        <td>
            Enter the roll number to get the details
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnGetDetails" runat="server" OnClick="Button1_Click" Text="Get Details" />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
        </td>
        <td>
            &nbsp;
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td valign="top">
            <table class="style1">
                <tr>
                    <td align="left">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forum Activities</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Test Results</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click1">Assignment Reports</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </td>
        <td colspan="2">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:GridView ID="GridView2" runat="server" OnRowDataBound="GridView2_RowDataBound"
                        ShowFooter="True">
                    </asp:GridView>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:GridView ID="GridView3" runat="server">
                    </asp:GridView>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
</table>
