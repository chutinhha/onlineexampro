<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDescription.ascx.cs"
    Inherits="ucDiscription" %>
<link href="Stylesheet/ucDescription.css" rel="stylesheet" type="text/css" />
<style>
    /* styles unrelated to zoom */*
    {
        border: 0;
        margin: 0;
        padding: 0;
    }
    p
    {
        position: absolute;
        top: 3px;
        right: 28px;
        color: #555;
        font: bold 13px/1 sans-serif;
    }
    /* optional icon style */.zoomIcon
    {
        width: 20px;
        height: 20px;
        position: absolute;
        top: 0;
        right: 0;
        background: url('icon.png');
    }
    /* these styles are for the demo, and are not required for the plugin */.zoom
    {
        display: inline-block;
        position: relative;
    }
    .zoom img
    {
        display: block;
    }
    .zoom img::selection
    {
        background-color: transparent;
    }
    #ex2 img:hover
    {
        cursor: url(grab.cur), default;
    }
    #ex2 img:active
    {
        cursor: url(grabbed.cur), default;
    }
</style>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js'></script>
<script src="jquery.zoom.js"></script>
<script>
    $(document).ready(function () {
        $('#ex1').zoom();
        $('#ex2').zoom({ grab: true });
    });
</script>
<table cellpadding="0" cellspacing="0">
    <tr>
        <td>
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
                                <td class='zoom' id='ex1'>
                                    <%-- <asp:Image ID="imgProduct" runat="server" Width="200px" Height="250px" />--%>
                                    <img id="imgProduct" runat="server" width='190' height='238' alt='Daisy on the Ohoopee' />
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td valign="top">
                                    <table>
                                        <tr>
                                            <td width="300px" class="product_Name">
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
                                                        <td class="product_price">
                                                            <asp:Label ID="lbPrice" runat="server"></asp:Label>.Rs
                                                        </td>
                                                        <td class="product_price">
                                                            (<asp:Label ID="lbactual" runat="server" Font-Strikeout="True"></asp:Label>.Rs)
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
                                                        <td width="70px" class="product_price">
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
                                                        <td width="70px" class="product_price">
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
                                        <%--  <tr>
                                <td colspan="3">
                                    <table>
                                        <tr>
                                            <td width="70px">
                                                Quantity:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlQuantity"  runat="server" size="2" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>--%>
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
                                <td class="product_Name">
                                    Description:
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: calibri">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbDescription" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
