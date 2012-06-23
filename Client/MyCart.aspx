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
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField>
                        <HeaderTemplate>Remove</HeaderTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" Text="Remove" CommandArgument='<%# Eval("Id") %>'
                                    runat="server" OnClick="LinkButton1_Click" ForeColor="White" Font-Underline="False"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                                <table>
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
                                <asp:Label ID="lbPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>' OnTextChanged="txtQuantity_TextChanged"
                                    AutoPostBack="true"></asp:TextBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                Total Amount :
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="lbTotal" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Label ID="lbGrantTotal" runat="server"></asp:Label>
                            </FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
