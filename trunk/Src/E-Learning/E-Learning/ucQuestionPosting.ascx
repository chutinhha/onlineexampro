﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucQuestionPosting.ascx.cs"
    Inherits="E_Learning.ucQuestionPosting" %>
<table cellpadding="0" cellspacing="0" width="900px" align="center" style="border: thin dotted #000000">
    <tr>
        <td style="font-family: Calibri; font-size: 18px; font-weight: bold; color: #009999"
            align="center">
            Post Questions:
        </td>
    </tr>
    <tr>
        <td align="center">
            <table width="500px" align="center" style="border: thin groove #008080">
                <tr>
                    <td height="30px" align="left" width="100px">
                        Category &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    </td>
                    <td align="left">
                        <asp:DropDownList Width="140px" ID="ddlCatagory" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlCatagory_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdd" runat="server" Width="128px" Visible="False"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="ADD" Visible="False" OnClick="btnAdd_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Question &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    </td>
                    <td align="left" colspan="3">
                        <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Insert Options :
                    </td>
                    <td align="left" colspan="3">
                        <asp:TextBox ID="txtOption" runat="server"></asp:TextBox>
                        <asp:Button ID="btnAnswerAdd" runat="server" OnClick="btnAnswerAdd_Click" Text="Add" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="4">
                        <asp:GridView ID="grdAnswers" runat="server" BackColor="White" BorderColor="#999999"
                            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                            AutoGenerateDeleteButton="True" OnRowDeleting="grdAnswers_RowDeleting">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Answer &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                    </td>
                    <td colspan="3" align="left">
                        <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center" height="25px" style="font-family: calibri; color: #006600">
                        <asp:Label ID="lbregister" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        <asp:Button ID="btnsubmit" runat="server" Text="Post Question" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
   
</table>
