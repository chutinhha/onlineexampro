<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucDescription.ascx.cs"
    Inherits="ucDiscription" %>
<link href="Stylesheet/ucDescription.css" rel="stylesheet" type="text/css" />
<link href="Stylesheet/LoginModelPopStyleSheet.css" rel="stylesheet" type="text/css" />
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
<style type="text/css">
    #tabs
    {
        border: 1px solid #ccc;
        height: 28px;
        background: #666666;
        padding-left: 40px;
        padding-top: 5px;
        -moz-box-shadow: inset 0 -2px 2px #dadada;
        -webkit-box-shadow: inset 0 -2px 2px #dadada;
        box-shadow: inset 0 -2px 2px #dadada;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
    }
    #tabs li
    {
        float: left;
        list-style: none;
        border-top: 1px solid #ccc;
        border-left: 1px solid #ccc;
        border-right: 1px solid #ccc;
        margin-right: 5px;
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
        -moz-box-shadow: 0 -2px 2px #dadada;
        -webkit-box-shadow: 0 -2px 2px #dadada;
        box-shadow: 0 -2px 2px #dadada;
    }
    #tabs li a
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 13px;
        font-weight: bold;
        color: #000000;
        padding: 7px 14px 6px 12px;
        display: block;
        background: #FFFFFF;
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
        text-decoration: none;
        background: -moz-linear-gradient(top, #ebebeb, white 10%);
        background: -webkit-gradient(linear, 0 0, 0 10%, from(#ebebeb), to(white));
        border-top: 1px solid white;
        text-shadow: -1px -1px 0 #fff;
        outline: none;
    }
    
    
    #tabs li a.inactive
    {
        padding-top: 5px;
        padding-bottom: 5px;
        color: #666666;
        background: -moz-linear-gradient(top, #dedede, white 75%);
        background: -webkit-gradient(linear, 0 0, 0 75%, from(#dedede), to(white));
        border-top: 1px solid white;
    }
    #tabs li a:hover, #tabs li a.inactive:hover
    {
        border-top: 1px solid #dedede;
        color: #000000;
    }
    .container
    {
        clear: both;
        padding: 10px 0px;
        width: 470px;
        background-color: #fff;
        text-align: left;
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        $('#tabs li a:not(:first)').addClass('inactive');
        $('.container:not(:first)').hide();

        $('#tabs li a').click(function () {
            var t = $(this).attr('href');
            if ($(this).hasClass('inactive')) { //added to not animate when active
                $('#tabs li a').addClass('inactive');
                $(this).removeClass('inactive');
                $('.container').hide();
                $(t).fadeIn('slow');
            }
            return false;
        }) //end click



    });
</script>
<table cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top">
            <table style="border: medium inset #808080" width="700px">
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <td class="zoom" id="ex1" style="border: thick outset #808080">
                                                <%-- <asp:Image ID="imgProduct" runat="server" Width="200px" Height="250px" />--%>
                                                <img id="imgProduct" runat="server" width="220" height="270" alt="Daisy on the Ohoopee" />
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td valign="top">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <ul id="tabs">
                                                                <li><a href="#tab1">Detail</a></li>
                                                                <li><a href="#tab2">Description</a></li>
                                                                <%--<li><a href="#tab3">Contacts</a></li>
                                                                <li><a href="#tab4">Applications</a></li>
                                                                <li><a href="#tab5">Monthly Cost</a></li>--%>
                                                            </ul>
                                                            <div class="container" id="tab1">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td>
                                                                            <table>
                                                                                <tr>
                                                                                    <td width="300px" class="product_Name">
                                                                                        Infiniti Trend Wear for
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
                                                                                                <td style="font-family: calibri; font-size: 16px">
                                                                                                    <asp:DropDownList ID="ddlColor" Width="70px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlColor_SelectedIndexChanged">
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
                                                                                                <td style="font-family: calibri; font-size: 16px">
                                                                                                    <asp:DropDownList ID="ddlSize" Width="70px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSize_SelectedIndexChanged">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right">
                                                                            <table>
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:ImageButton ID="imgBuyNow" runat="server" Width="127px" Height="37px" ImageUrl="~/images/Buy-Now.png"
                                                                                            OnClick="imgBuyNow_Click" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                            <div class="container" id="tab2">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td class="product_Name">
                                                                            Description:
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="font-family: calibri; text-align: justify; font-size: 15px;">
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbDescription" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                            <div class="container" id="tab3">
                                                                ...content goes here3
                                                            </div>
                                                            <div class="container" id="tab4">
                                                                ...content goes here4
                                                            </div>
                                                            <div class="container" id="tab5">
                                                                ...content goes here5
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td valign="top" align="center" width="300px">
            <table>
                <tr>
                    <td>
                        <asp:Image ID="imgSecure" runat="server" ImageUrl="~/images/Safety.png" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Image ID="imgPaypal" Width="200px" Height="200px" runat="server" ImageUrl="~/images/paypal.png" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<cc1:ModalPopupExtender BackgroundCssClass="modalBackground" ID="sd" runat="server"
    PopupControlID="DataList1" TargetControlID="HiddenField1">
</cc1:ModalPopupExtender>
<asp:DataList ID="DataList1" DataKeyField="Stock_id" runat="server" CssClass="modalPopup"
    OnItemCommand="DataList1_ItemCommand" RepeatColumns="5">
    <ItemTemplate>
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="Image1" Height="100px" Width="100px" runat="server" ImageUrl='<%# Eval("Stock_Image") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    Size :
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<asp:HiddenField ID="HiddenField1" runat="server" />
