<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="Description.aspx.cs" Inherits="Discription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="live/alice-1343310609.js" type="text/javascript"></script>
    <script type="text/javascript" src="/live/webtrekk_v3_2.js"></script>
    <script type="text/javascript" src="live/conversion.js">
    </script>
    <script language="javascript">
        jQuery(document).ready(function () {
            jQuery(".pd_know_link, .sp_free-shipping_stickr").click(function () {
                $('#prdZoomExpandedPopUp').insertAfter($('#page'));
                $("#prdZoomExpandedPopUp > .container").css("width", "200px");
                $("#prdZoomExpandedPopUp > .container").css("height", "300px");
                $("#prdZoomExpandedPopUp > .container").css("margin-top", "128px");
                $("#prdZoomExpandedPopUp > .container").css("margin-left", "500px");
                $('#prdZoomExpandedPopUp').fadeIn();
            });
            $('#prdZoomExpandedPopUp').click(function () {
                $('#prdZoomExpandedPopUp').fadeOut();
            });
            $(document).keydown(function (e) {
                if (e.keyCode == 27) {
                    $('#prdZoomExpandedPopUp').fadeOut();
                }
            });


        });
    </script>
    <link href="live/StyleCSS.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="left">
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="10px">
                        </td>
                        <td id="prdMedia" class="prd-media">
                            <div id="prdZoomExpanded" class="ui-dialog ui-dialogPrdZoom l-page" style="display: none;">
                                <div class="container">
                                    <a href="#" id="dialogClose" class="icon i-dialogClose ui-dialogClose ui-inlineBlock">
                                    </a>
                                    <div id="prdZoomExpandedClose" class="prdZoomExpanded-icon">
                                    </div>
                                    <img id="prdZoomExpandedImage" class="" src="#" width="500" height="500" />
                                </div>
                            </div>
                            <div id="productZoom" style="background-image: url('<%=ViewState["Large"] %>');"
                                data-zoom-image='<%=ViewState["Large"] %>'>
                            </div>
                            <div class="prd-imageBoxLayout ui-border">
                                <a class="prd-imageBox" id="prdZoomBox"><span rel="foaf:depiction">
                                    <img class="prd-image" id="prdImage" width="277" height="350" data-js-function="setPlaceholderOnError"
                                        title="Multi Polo T Shirts" alt="Multi Polo T Shirts" src='<%=ViewState["small"] %>' />
                                </span>
                                    <div id="magnifier">
                                    </div>
                                </a>
                            </div>
                        </td>
                        <td style="padding-left: 30px; padding-top: 30px;" valign="top">
                            <table width="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="2" 
                                        style="padding-left: 100px; font-family: fantasy; font-weight: bold; font-size: 20px;" >
                                        <asp:Label ID="lbDesignName" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="30px" style="font-family: Calibri">
                                        Rs.
                                        <asp:Label ID="lbDiscountPrice" runat="server"></asp:Label>
                                    </td>
                                    <td  style="font-family: Calibri">
                                        Rs.
                                        <asp:Label ID="lbActulPrice" Style="text-decoration: line-through" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td  style="font-family: Calibri">
                                        Color:
                                    </td>
                                    <td  style="font-family: Calibri">
                                        <asp:DropDownList ID="ddlcolor" runat="server" Width="150px" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlcolor_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td  style="font-family: Calibri">
                                        Size:
                                    </td>
                                    <td  style="font-family: Calibri">
                                        <asp:DropDownList ID="ddlSize" runat="server" Width="150px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"  style="font-family: Calibri">
                                        <asp:LinkButton ID="lnkSizeChart" runat="server" Text="Size Chart"></asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td  style="font-family: Calibri">
                                        <asp:Button runat="server" ID="btnAddTOCard" Text="ADD TO CART" 
                                            onclick="btnAddTOCard_Click" />
                                    </td>
                                    <td  style="font-family: Calibri">
                                        <asp:Button runat="server" ID="btnWishList" Text="ADD TO WISHLIST" 
                                            onclick="btnWishList_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-family: Calibri; padding-top: 5px;" >
                                        <asp:Label ID="lbDescription" runat="server"></asp:Label>
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
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
