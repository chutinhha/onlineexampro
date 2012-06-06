<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCate.ascx.cs" Inherits="ucCate" %>
<script src="js/jquery-1.7.2.js" type="text/javascript"></script>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<table>
    <tr>
        <td>
            <div>
                <input id="Hidden1" type="hidden" />
                <ul id="accordion">
                    <%var aa = PhotoProcessingHelper.Context.Photo_PlanDetails.Select(a => a);
                      int i = 0, j = 0;
                      foreach (var item in aa)
                      { %>
                    <li id="limenu<%=i.ToString() %>">
                        <input id="Radio1<%=i.ToString() %>" onclick="rd(this.id);" name="a" type="radio" />
                        <%=item.Plan_Name %>
                    </li>
                    <ul style="display: none;" id="ulmenu<%=i.ToString() %>">
                        <%var bb = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Where(a => a.FkPlan_id == item.Plan_id);
                          foreach (var item1 in bb)
                          {
                              CheckBox1.Text = item1.Category_name;
                              CheckBox1.ID = "chk_" + item1.SubCategory_id.ToString();
                              //CheckBox1.InputAttributes["name"] = "chk";
                        %>
                        <li id="liitem<%=j.ToString() %>">
                            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="chkCate" />
                            <%--<input id="Checkbox1" type="checkbox" />
                            <%=item1.Category_name %>--%>
                        </li>
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
    function rd(a) {
        if ($("#Hidden1").attr("value") != a) {
            $("#Hidden1").attr("value", a);
            $('#accordion input:checkbox').attr('checked', false);
        }
    }
    $("#accordion input:checkbox").change(function () {
        if ($('#accordion input:radio[checked=checked]').parent().next().attr('id') != $(this).parent().parent().parent().attr('id')) {
            $(this).attr('checked', false);
        }
    });
    $("#accordion > li").click(function () {
        if (false == $(this).next().is(':visible')) {
            $('#accordion > ul').slideUp(300);
        }
        $(this).next().slideToggle(300);
    });
    $('#accordion > ul:eq(0)').show();
</script>
