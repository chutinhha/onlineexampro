<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="js/jquery.ui.all.css">
    <script src="js/jquery-1.7.2.js"></script>
    <script src="js/jquery.ui.core.js"></script>
    <script src="js/jquery.ui.widget.js"></script>
    <script src="js/jquery.ui.accordion.js"></script>
    <link rel="stylesheet" href="js/demos.css">
    <script>
        $(function () {
            $("#accordion").accordion();
        });
    </script>
    <script type="text/javascript">
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
                    setChecked($("input", ui.newHeader));
                }
            });
            //$("#accordion h3 input").css("margin-left", "50px");
            $("#accordion h3 input").eq(0).attr("checked", "checked");
        });
    </script>
    <script type="text/javascript">
        function test() {
            alert("testset");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="font-family: Calibri; color: #000000; font-weight: bold; font-size: 24px">
                Services:
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
                        <td>
                        </td>
                        <td>
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
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
                                                <input id="hiddenCatId" type="hidden" />
                                            </h3>
                                            <div>
                                                <table>
                                                    <%var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == item.Plan_id);
                                                      foreach (var item1 in bb)
                                                      {
                                                          CheckBox1.Text = item1.Category_name;
                                                          CheckBox1.ID = "chk" + j.ToString();
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
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr align="right">
            <td>
                Total : <span id="totalAmount"></span>
            </td>
        </tr>
        <tr align="right">
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add to Cart" />
            </td>
        </tr>
    </table>
</asp:Content>
