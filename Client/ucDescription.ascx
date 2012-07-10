<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDescription.ascx.cs"
    Inherits="ucDiscription" %>
<table width="700px">
    <tr>
        <td>
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        <asp:Image ID="imgProduct" runat="server" Width="200px" Height="250px" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td valign="top">
                        <table>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lbName" runat="server"></asp:Label>
                                </td>
                                <td>
                                    |
                                </td>
                                <td>
                                    <asp:Label ID="lbStatus" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbPrice" runat="server"></asp:Label>.Rs
                                            </td>
                                            <td>
                                                <asp:Label ID="lbactual" runat="server" Font-Strikeout="True"></asp:Label>.Rs
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td width="70px">
                                                Color:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlColor" Width="150px" runat="server" AutoPostBack="True"
                                                    OnSelectedIndexChanged="ddlColor_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td width="70px">
                                                Size:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlSize" Width="150px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSize_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td width="70px">
                                                Quantity:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlQuantity" Width="150px" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="3">
                                    <asp:ImageButton ID="imgBuyNow" runat="server" Width="127px" Height="37px" ImageUrl="~/images/Buy-Now.png"
                                        OnClick="imgBuyNow_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        Description:
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbDescription" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
