<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
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
                                        <div id="t3" class="otherbackcolor">
                                            3. ORDER SUMMARY
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t4" class="currentbackcolor">
                                            4. CONFIRM ORDER
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t5" class="otherbackcolor">
                                            5. CHOOSE PAYMENT METHOD
                                        </div>
                                    </td>
                                </tr>
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
                            <%--<asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" OnItemCommand="ListView1_ItemCommand">
                                <ItemTemplate>
                                    <table cellpadding="10" width="770px" cellspacing="10" style="background-color: #00FFCC"
                                        border="0">
                                        <tr>
                                            <td class="pic">
                                                <asp:Image ID="Image1" ImageUrl='<%# Eval("ImageUrl") %>' runat="server" AlternateText="image"
                                                    Width="130" Height="97" />
                                            </td>
                                            <td class="indent">
                                                <%# Eval("Plane_Name") %>
                                                <br />
                                                <asp:LinkButton ID="lnkRemove" runat="server" CommandName="Remove" CommandArgument='<%# Eval("Id") %>'>Remove</asp:LinkButton>
                                            </td>
                                            <td align="left" style="padding-right: 10px;">
                                                 <%# Eval("Price") %>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:ListView>--%>
                            <script>
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
                                            a += "</table>"
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
                            </script>
                            <div id="pp" class="overlay" style="display: none">
                                <div class="loader">
                                    <img src="Images/ajax-loader.gif" alt="Loading..." />
                                </div>
                            </div>
                            <div id="contents">
                            </div>
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
                                    $('#Button4').click(function () {
                                        alert("Loading..");
                                        $.blockUI({ message: $('#pp') });
                                        setTimeout($.unblockUI, 2000);
                                    });
                                });
                                function success1(r) {
                                    if (r) {
                                        $("#err").hide();
                                    } else {
                                        $("#err").show();
                                    }
                                }

                            </script>
                            Your Coupon Code:
                            <input id="Text1" type="text" />
                            <input id="Button3" type="button" value="Submit" /><input id="Button4" type="button"
                                value="test" />
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
                                        <asp:Button ID="Button1" runat="server" Text="Upload Another" 
                                            PostBackUrl="~/UploadPhoto.aspx" onclick="Button1_Click" />
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
