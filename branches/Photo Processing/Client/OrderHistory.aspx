<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="OrderHistory.aspx.cs" Inherits="OrderHistory" %>

<%@ Register Src="ucSideMenu.ascx" TagName="ucSideMenu" TagPrefix="uc1" %>
<%--<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/BackColorStyleSheet.css" rel="stylesheet" type="text/css" />
    <%--<script type="text/javascript">
        var divSelected = null;
        function SelectOrUnSelect(x) {
            if (divSelected != null) divSelected.className = 'otherbackcolor';
            divSelected = document.getElementById(x);
            document.getElementById(x).className = 'currentbackcolor';
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="sdfsd" EnablePageMethods="true" runat="server">
    </cc1:ToolkitScriptManager>
    My Order History
    <hr />
    <br />
    <table cellpadding="0" cellspacing="0" width="100%">
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
                        <td align="left">
                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" OnItemDataBound="ListView1_ItemDataBound"
                                OnItemCommand="ListView1_ItemCommand">
                                <LayoutTemplate>
                                    <table cellpadding="10" width="770px" cellspacing="10" style="background-color: #E9E9E9"
                                        border="0">
                                        <tr style="color: #000000; font-weight: bold; font-size: 20px">
                                            <th class="pic">
                                                Image
                                            </th>
                                            <th>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </th>
                                            <th class="indent">
                                                Services
                                            </th>
                                            <th>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </th>
                                            <th align="left" style="padding-right: 5px;">
                                                Remove
                                            </th>
                                        </tr>
                                    </table>
                                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                </LayoutTemplate>
                                <ItemTemplate>
                                    <table cellpadding="10" width="770px" style="background-color: #E9E9E9" border="0">
                                        <tr>
                                            <td class="pic" width="250px">
                                                <asp:Image ID="Image1" ImageUrl='<%# Eval("ImageUrl") %>' runat="server" AlternateText="image"
                                                    Width="130" Height="97" />
                                            </td>
                                            <td class="indent" width="350px" valign="top">
                                                <div class="title">
                                                    <%# Eval("Plane_Name") %></div>
                                                <asp:GridView ID="GridView1" runat="server" ShowHeader="False" AutoGenerateColumns="False"
                                                    CellPadding="0" BorderWidth="0" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField ShowHeader="False" ItemStyle-CssClass="bullet">
                                                            <ItemTemplate>
                                                                <%# Eval("sub_title")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                            <td align="left" style="padding-right: 10px;" width="150px" valign="top">
                                                <asp:LinkButton ID="lnkRemove" runat="server" CommandName="Remove" CommandArgument='<%# Eval("Id") %>'>Remove</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:ListView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="770">
                                <tr>
                                    <td align="left">
                                        <asp:Button ID="Button1" runat="server" Text="Upload Another" PostBackUrl="~/UploadPhoto.aspx" />
                                    </td>
                                    <td>
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="Button2" runat="server" Text="Confirm" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <br />
    <br />
</asp:Content>
