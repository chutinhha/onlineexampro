﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="ConfirmOrder.aspx.cs" Inherits="ConfirmOrder" %>

<%@ Register Src="ucSideMenu.ascx" TagName="ucSideMenu" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/BackColorStyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="js/jquery.blockUI.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="sdfsd" EnablePageMethods="true" runat="server">
        <Services>
            <asp:ServiceReference Path="~/AssignCart.asmx" />
        </Services>
    </cc1:ToolkitScriptManager>
    Confirm Order:
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
                                        <div id="t3" class="otherbackcolor">
                                            3. ORDER SUMMARY
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t4" class="otherbackcolor">
                                            4. CONFIRM ORDER
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t5" class="currentbackcolor">
                                            5. CHOOSE PAYMENT METHOD
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; color: #000000; font-weight: bold; font-size: 24px">
                            Confirm Order:
                        </td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2">
                            <asp:GridView ID="GridView1" DataKeyNames="Id" runat="server" AutoGenerateColumns="False"
                                Width="770px" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333"
                                GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <div class="pic" style="width: 250px">
                                                <asp:Image ID="Image1" ImageUrl='<%# Eval("ImageUrl") %>' runat="server" AlternateText="image"
                                                    Width="130" Height="97" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Services">
                                        <ItemTemplate>
                                            <div style="width: 200px" class="indent">
                                                <%# Eval("Plane_Name") %>
                                                <br />
                                                <asp:LinkButton ID="lnkRemove" runat="server" CommandName="Remove" CommandArgument='<%# Eval("Id") %>'>Remove</asp:LinkButton>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <%-- <asp:TemplateField ItemStyle-Width="150px" ItemStyle-VerticalAlign="Top">
                                        <ItemTemplate>
                                            <div>
                                                <asp:CheckBox ID="chkPhysicalCopy" runat="server" Text="physical Copy" OnCheckedChanged="chkPhysicalCopy_CheckedChanged"
                                                    AutoPostBack="True" />
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle VerticalAlign="Top" Width="150px"></ItemStyle>
                                    </asp:TemplateField>--%>
                                    <asp:TemplateField HeaderText="Price" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"
                                        ItemStyle-Width="150px">
                                        <ItemTemplate>
                                            <div>
                                                <asp:Label ID="lbRate" runat="server" Text=' <%# Eval("fkPlan_id")%>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                            <%-- <script>
                                document.body.onload = Bind();
                                function Bind() {
                                    $.ajax({
                                        type: "POST",
                                        url: "AssignCart.asmx/GetData",
                                        data: "{}",
                                        contentType: "application/json",
                                        dataType: "json",
                                        success: function (data) {
                                            var a = "<table cellpadding='10' width='770px' cellspacing='10' style='background-color: #00FFCC' border='0'><tr style='color: #000000; font-weight: bold; font-size: 20px'><th>Image</th><th>Services</th><th>Remove</th></tr>";
                                            var t = 0;
                                            for (var i = 0; i < data.d.length; i++) {
                                                t += data.d[i].Price;
                                                a += "<tr><td class='pic'><img id='imgPhoto' src='" + data.d[i].ImageUrl + "' alt='Photos' height='97' width='130'  /></td><td class='indent'>" + data.d[i].Plane_Name + "<br /><a href='#' id='" + data.d[i].Id + "' onclick='cal(this.id)'>Remove</a></td><td>" + data.d[i].Price + "</td></tr>";
                                            }
                                            a += "<tr><td colspan='2' align='right'>Total Amount :</td><td align='left'>" + t + "</td></tr>";
                                            a += "";
                                            a += "</table>";
                                            $("#contents").remove('.loader');
                                            $("#contents").removeClass('overlay');
                                            $("#contents").empty();
                                            $("#gt").append("Grand Total : $" + t);
                                            $("#contents").append(a);
                                        }
                                    });
                                }
                                function cal(a) {
                                    AssignCart.Remove(a, success);
                                }
                                function success(r) {
                                    if (r) {
                                        alert(r);
                                        $("#gt").empty();
                                        $("#contents").empty();
                                        Rebind();
                                    } else {
                                        alert("Server Error...!!!");
                                    }
                                }
                            </script>--%>
                            <%-- <div id="pp" class="overlay" style="display: none">
                                <div class="loader">
                                    <img src="Images/ajax-loader.gif" alt="Loading..." />
                                </div>
                            </div>
                            <div id="contents" class="overlay">
                                <div class="loader">
                                    <img src="Images/ajax-loader.gif" alt="Loading..." />
                                </div>
                            </div>--%>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <table>
                                <tr>
                                    <td align="right">
                                        Total:
                                    </td>
                                    <td width="100px">
                                        <asp:Label ID="lbTotal" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <script>
                                $(document).ready(function () {
                                    $("#Button3").click(function () {
                                        var a = $("#Text1").val();
                                        AssignCart.CheckCoopnCode(a, success1);
                                    });
                                });
                                function success1(r) {
                                    if (r != null) {
                                        $("#err").hide();
                                    } else {
                                        $("#err").show();
                                    }
                                }

                            </script>
                            Your Coupon Code:
                            <input id="Text1" type="text" />
                            <input id="Button3" type="button" value="Submit" />
                            <input id="Hidden1" value="<%# SessionValue[0] %>" type="hidden" />
                            <br />
                            <span id="err" style="color: #FF0000; display: none">Please enter valid coupon code.
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td align="left">
                                        <asp:CheckBox ID="CheckBox2" Text="Please include my images in the monthly iGallery competition"
                                            Checked="true" runat="server" />
                                    </td>
                                    <td align="right">
                                        <strong id="gt"></strong>
                                    </td>
                                </tr>
                            </table>
                            <%-- <input id="Checkbox1" type="checkbox" />--%>
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
                                        <asp:Button ID="Button2" runat="server" Text="Confirm" PostBackUrl="~/Payment.aspx" />
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
