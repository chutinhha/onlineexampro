<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucProduct.ascx.cs" Inherits="ucProduct" %>
<link href="Stylesheet/ucproductStylesheet.css" rel="stylesheet" type="text/css" />
<cc1:RoundedCornersExtender ID="acr" TargetControlID="Panel1" runat="server" Corners="All"
    Radius="15">
</cc1:RoundedCornersExtender>
<asp:Panel ID="Panel1" runat="server" Width="350px" BackColor="#333333">
    <table cellpadding="2" cellspacing="2" width="350">
        <tr class="productHeadingfont">
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbtnProductname" runat="server" Text='<%# Eval("Product_name") %>'
                    Font-Underline="False" ForeColor="#CCCCCC"></asp:LinkButton><asp:Image ID="Image1"
                        runat="server" ImageUrl="~/images/line1.jpg" Width="310px" Height="1px" />
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="100px">
                            <asp:Image ID="imgProduct" Width="100" Height="100" runat="server" ImageUrl='<%#Eval("Image") %>' />
                        </td>
                        <td width="5px">
                        </td>
                        <td valign="top">
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td valign="top" style="text-align: justify" height="105px">
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lbDescription" runat="server" Text='<%#Eval("Short_Description") %>'
                                            Font-Names="Calibri" Font-Size="13px" ForeColor="#CCCCCC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td class="productHeadingfont" width="50px">
                                                    Price&nbsp;&nbsp; :
                                                </td>
                                                <td class="productDetailfont">
                                                    <asp:Label ID="lbPrice" runat="server" Text='<%#Eval("Price") %>'></asp:Label>&nbsp;Rs.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td class="productHeadingfont" width="50px">
                                                    Status :
                                                </td>
                                                <td class="productDetailfont">
                                                    <asp:Label ID="lbStatus" runat="server" Text='<%#Eval("Pro_Status") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td class="productHeadingfont" width="50px">
                                                    Offer&nbsp;&nbsp; :
                                                </td>
                                                <td class="productDetailfont">
                                                    <asp:Label ID="lbOffer" runat="server" Text='<%#Eval("Pro_Discount") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:LinkButton CssClass="buynow" ID="lkbBuynow" CommandArgument='<%#Eval("Product_id")%>'
                                            runat="server" Text="View" OnClick="lkbBuynow_Click"></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Panel>
