<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center" style="background-image: url('images/main-bg.png'); background-repeat: repeat-x;
                margin-left: 30px; font-family: calibri; color: #FFFFFF;">
                <table width="100%">
                    <tr>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton1" CssClass="linkbutton" runat="server" Text="Men"
                                OnClick="LinkButton1_Click"></asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton2" CssClass="linkbutton" runat="server" Text="Women"
                                OnClick="LinkButton2_Click"></asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton3" CssClass="linkbutton" runat="server" Text="Sale"></asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton4" CssClass="linkbutton" runat="server" Text="About Us"
                                PostBackUrl="~/AboutUs.aspx"></asp:LinkButton>
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton5" CssClass="linkbutton" runat="server" Text="Site Map"></asp:LinkButton>
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton6" CssClass="linkbutton" runat="server" Text="Contact"></asp:LinkButton>
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
        <tr>
            <td>
                <table>
                    <tr>
                        <td valign="top" align="left" style="padding: 0px 0px 0px 10px; font-family: calibri;
                            font-size: 14px; text-transform: uppercase; font-weight: bold;" width="150px">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False"
                                OnRowCommand="GridView1_RowCommand" GridLines="None">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton CommandArgument='<%# Eval("SubCatagory_id") %>' ID="lnkSubCatagory_Name"
                                                runat="server" Text='<%# Bind("SubCatagory_Name") %>' ForeColor="#222222"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td valign="top">
                            &nbsp;
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand"
                                DataKeyField="fkDesign_id">
                                <ItemTemplate>
                                    <table>
                                        <tr>
                                            <td align="center">
                                                <table>
                                                    <tr>
                                                        <td align="center">
                                                            <div>
                                                                <asp:LinkButton ID="LinkButton7" CommandArgument='<%# Eval("Product_id") %>' runat="server"></asp:LinkButton>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:ImageButton ID="ImageButton1" ImageUrl='<%# Eval("Product_img_url_Small") %>'
                                                                CommandArgument='<%# Eval("Product_id") %>' runat="server" Height="200" Width="200" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="font-family: calibri; font-size: 16px">
                                                            <asp:LinkButton ID="LinkButton6" Text='<%# Eval("Design_Name") %>' CommandArgument='<%# Eval("fkDesign_id") %>'
                                                                runat="server"></asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="font-family: calibri;">
                                                            Rs.<span style="text-decoration: line-through">
                                                                <%# Eval("Product_Actual_Price")%></span> Rs.<%# Eval("Product_Discount_Price")%>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:DataList ID="DataList2" runat="server" DataKeyField="Product_id" RepeatColumns="5"
                                                    OnItemCommand="DataList2_ItemCommand">
                                                    <ItemTemplate>
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <asp:ImageButton ID="imgBtnColor" Width="15px" Height="10px" runat="server" CommandName="colorpatten"
                                                                        CommandArgument='<%#Eval("Product_id") %>' ImageUrl='<%# Eval("Color_image_url") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
