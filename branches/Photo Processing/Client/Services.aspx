<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="Services.aspx.cs" Inherits="Services" %>

<%@ Register Src="ucSideMenu.ascx" TagName="ucSideMenu" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/BackColorStyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="js/jquery.ui.all.css">
    <script src="js/jquery-1.7.2.js"></script>
    <script src="js/jquery.ui.core.js"></script>
    <script src="js/jquery.ui.widget.js"></script>
    <script src="js/jquery.ui.accordion.js"></script>
    <link rel="stylesheet" href="js/demos.css">
    <script type="text/javascript">
        function pageLoad() {
            try {
                if (!Sys.WebForms.PageRequestManager.getInstance().get_isInAsyncPostBack()) {
                    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);
                }
            }
            catch (e) {
            }
        }

        function endRequestHandler(sender, args) {
            $(function () {
                var ind = document.getElementById('<%=hidAccordionIndex.ClientID %>');
                $("#accordion").accordion({ active: parseInt(ind.value) });
            });
            var setChecked = function (oThis) {
                setTimeout(function () {
                    //$('input:checkbox').removeAttr('checked');
                    $('input[type=checkbox]').each(function () {
                        this.checked = false;
                    });
                    $(oThis).attr("checked", "checked");
                }, 10);
            };
            $(function () {
                $("#accordion").accordion({
                    collapsible: false,
                    change: function (event, ui) {
                        var index = jQuery(this).find("h3").index(ui.newHeader[0]);
                        var aaa = document.getElementById('<%=hidAccordionIndex.ClientID %>');
                        aaa.value = index;
                        setChecked($("input", ui.newHeader));
                    }
                });
                $("#accordion h3 input").eq(0).attr("checked", "checked");
            });

        }


        //load
        $(function () {
            $("#accordion").accordion();
        });
        var setChecked = function (oThis) {
            setTimeout(function () {
                //$('input:checkbox').removeAttr('checked');
                $('input[type=checkbox]').each(function () {
                    this.checked = false;
                });
                $(oThis).attr("checked", "checked");
            }, 10);
        };
        $(function () {
            $("#accordion").accordion({
                collapsible: false,
                change: function (event, ui) {
                    var index = jQuery(this).find("h3").index(ui.newHeader[0]);
                    var aaa = document.getElementById('<%=hidAccordionIndex.ClientID %>');
                    aaa.value = index;
                    setChecked($("input", ui.newHeader));
                }
            });
            $("#accordion h3 input").eq(0).attr("checked", "checked");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    Choose Service
    <hr />
    <br />
    <table style="border: 1px solid #FF00FF" cellpadding="5" cellspacing="5" width="100%"
        border="0">
        <tr>
            <td valign="top" width="15%">
                <uc1:ucSideMenu ID="ucSideMenu1" runat="server" />
            </td>
            <td style="border: 1px solid #808080">
                <table>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="5" width="100%">
                                <tr>
                                    <td>
                                        <div id="t1" class="otherbackcolor" style="">
                                            1. UPLOAD PHOTOS
                                        </div>
                                    </td>
                                    <td>
                                        <div id="t2" class="currentbackcolor">
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
                            Services:
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <div id="accordion">
                                <%var aa = PhotoProcessingHelper.Context.Photo_PlanDetails.Select(a => a);
                                  int i = 0, j = 0;
                                  foreach (var item in aa)
                                  { %>
                                <h3>
                                    <% RadioButton1.Text = item.Plan_Name;
                                       RadioButton1.Attributes.Add("onclick", "setChecked(this)");
                                    %>
                                    <asp:RadioButton ID="RadioButton1" GroupName="a" runat="server" />
                                </h3>
                                <div>
                                    <table>
                                        <%var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == item.Plan_id);
                                          foreach (var item1 in bb)
                                          {
                                              CheckBox1.Text = item1.Category_name;
                                              CheckBox1.ID = "chk_" + item1.SubCategory_id.ToString();
                                              CheckBox1.InputAttributes["name"] = "chk";
                                        %>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                            </td>
                                        </tr>
                                        <%
                                              j++;
                                          }
                                          i++;
                                        %>
                                    </table>
                                </div>
                                <%
                                  }%>
                                <input id="hiddenCatId" type="hidden" />
                                <asp:HiddenField ID="hidAccordionIndex" runat="server" Value="0" />
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            Total : <span id="totalAmount">$ 0.00</span>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <input id="Button2" type="button" value="Add to Cart" />
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
    <script>
        $("#Button2").click(function () {
            var selected = [];
            $('#accordion input:checkbox').each(function () {
                var isChecked = $(this).attr('checked');
                if (isChecked == "checked") {
                    var id = $(this).attr('id');
                    var a = id.split('_');
                    selected.push(a[a.length - 1]);
                }
            });
            AssignCart.Test(selected.join(','), success);
        });
        function success(r) {
            alert(r);
        }
    </script>
    <cc1:ToolkitScriptManager ID="sdfsd" EnablePageMethods="true" runat="server">
        <Services>
            <asp:ServiceReference Path="~/AssignCart.asmx" />
        </Services>
    </cc1:ToolkitScriptManager>
</asp:Content>
