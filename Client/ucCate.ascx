<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCate.ascx.cs" Inherits="ucCate" %>
<script src="js/jquery-1.7.2.js" type="text/javascript"></script>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<table>
    <tr>
        <td>
            <div>
                <ul id="accordion">
                    <%var aa = PhotoProcessingHelper.Context.Photo_PlanDetails.Select(a => a);
                      int i = 0, j = 0;
                      foreach (var item in aa)
                      { %>
                    <li>
                        <% RadioButton1.Text = item.Plan_Name;
                           RadioButton1.Attributes.Add("onclick", "setChecked(this)");
                        %>
                        <asp:RadioButton ID="RadioButton1" GroupName="a" runat="server" />
                    </li>
                    <ul style="display: none;">
                        <%var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == item.Plan_id);
                          foreach (var item1 in bb)
                          {
                              CheckBox1.Text = item1.Category_name;
                              CheckBox1.ID = "chk_" + item1.SubCategory_id.ToString();
                              //CheckBox1.InputAttributes["name"] = "chk";
                        %>
                        <li><a href="#">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </a></li>
                        <%
                              j++;
                          }
                          i++;
              
                        %>
                    </ul>
                    <%
                      }%></ul>
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
<cc1:ToolkitScriptManager ID="sdfsd" EnablePageMethods="true" runat="server">
    <Services>
        <asp:ServiceReference Path="~/AssignCart.asmx" />
    </Services>
</cc1:ToolkitScriptManager>
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
<script>
    $("#accordion > li").click(function () {

        if (false == $(this).next().is(':visible')) {
            $('#accordion > ul').slideUp(300);
        }
        $(this).next().slideToggle(300);
    });

    $('#accordion > ul:eq(0)').show();

</script>
