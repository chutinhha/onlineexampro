<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="OrderHistory.aspx.cs" Inherits="OrderHistory" %>

<%@ Register Src="ucSideMenu.ascx" TagName="ucSideMenu" TagPrefix="uc1" %>
<%--<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/BackColorStyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        var divSelected = null;
        function SelectOrUnSelect(x) {
            if (divSelected != null) divSelected.className = 'otherbackcolor';
            divSelected = document.getElementById(x);
            document.getElementById(x).className = 'currentbackcolor';
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="sdfsd" runat="server">
    </cc1:ToolkitScriptManager>
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="2">
                My Order History
                <hr />
                <br />
            </td>
        </tr>
        <tr>
            <td valign="top" width="15%">
                <uc1:ucSideMenu ID="ucSideMenu1" runat="server" />
            </td>
            <td valign="top" width="85%">
                <table>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td>
                                        <div id="t1" class="otherbackcolor">
                                            1. UPLOAD PHOTOS
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t2" class="otherbackcolor">
                                            2. CHOOSE LEVEL OF SERVICE
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t3" class="currentbackcolor">
                                            3. ORDER SUMMARY
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t4" class="otherbackcolor">
                                            4. CONFIRM ORDER
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t5" class="otherbackcolor">
                                            5. CHOOSE PAYMENT METHOD
                                        </div>
                                    </td>
                                </tr>
                                <%--<tr>
                        <td colspan="5">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t1');">Upload</a>
                        </td>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t2');">Services</a>
                        </td>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t3');">Summery</a>
                        </td>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t4');">Confirm</a>
                        </td>
                        <td>
                            <a href="#" onclick="SelectOrUnSelect('t5');">Payment</a>
                        </td>
                    </tr>--%>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; color: #000000; font-weight: bold; font-size: 24px">
                            My Order History:
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: dotted; border-bottom-width: 1px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" 
                                OnItemDataBound="ListView1_ItemDataBound"
                                onitemcommand="ListView1_ItemCommand">
                                <ItemTemplate>
                                    <table cellpadding="0" cellspacing="0" style="background-color: #00FFCC" border="0"
                                        width="980px">
                                        <tr>
                                            <td class="pic">
                                                <asp:Image ID="Image1" ImageUrl='<%# Eval("ImageUrl") %>' runat="server" AlternateText="image"
                                                    Width="130" Height="97" />
                                            </td>
                                            <td class="indent">
                                                <h3 class="title">
                                                    <%# Eval("Plane_Name") %></h3>
                                                <asp:GridView ID="GridView1" DataKeyNames="SubCategory_id" runat="server" ShowHeader="False"
                                                    AutoGenerateColumns="False" CellPadding="0" BorderWidth="0" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField ShowHeader="False" ItemStyle-CssClass="bullet">
                                                            <ItemTemplate>
                                                                <%# Eval("Category_name")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                            <td align="left" style="padding-right: 10px;width:70px">
                                                <asp:LinkButton ID="lnkRemove" runat="server" CommandName="Remove" CommandArgument='<%# Eval("Id") %>'>Remove</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:ListView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
    </table>
</asp:Content>
