<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="MyCart.aspx.cs" Inherits="MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton Text="Back to continue" ID="LinkButton2" runat="server" PostBackUrl="~/Home.aspx"></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" AutoGenerateColumns="false"
                    GridLines="None" Width="800px">
                    <AlternatingRowStyle BackColor="#666666" />
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                Remove
                            </HeaderTemplate>
                            <ItemTemplate>
                                <table align="center" width="70px">
                                    <tr>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" Text="Remove" CommandArgument='<%# Eval("Id") %>'
                                                runat="server" OnClick="LinkButton1_Click" ForeColor="White" Font-Underline="False"></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                                <table align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="lbImage" Width="100px" Height="100px" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="lbProductName" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <table align="center">
                                    <tr>
                                        <td>
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>' OnTextChanged="txtQuantity_TextChanged"
                                                            AutoPostBack="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lbavailable" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <FooterTemplate>
                                <table align="center">
                                    <tr>
                                        <td>
                                            Total Amount :
                                        </td>
                                    </tr>
                                </table>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbTotal" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <FooterTemplate>
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbGrantTotal" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="Silver" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="Gray" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
