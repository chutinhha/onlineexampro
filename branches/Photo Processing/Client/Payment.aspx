<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs"
    Inherits="Payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Processing... </title>
</head>
<body onload="document.form.submit();">
    <center>
        <h3>
            Please wait, your order is being processed...</h3>
    </center>
    <form method="post" name="form" action="https://www.sandbox.paypal.com/cgi-bin/webscr">
    <input type="hidden" name="rm" value="2" />
    <input type="hidden" name="cmd" value="_cart" />
    <input type="hidden" name="first_name" value="" />
    <input type="hidden" name="last_name" value="" />
    <input type="hidden" name="photoid" value="2047,2054,2085" />
    <input type="hidden" name="currency" value="INR" />
    <input type="hidden" name="business" value="karventhan@live.com" />
    <input type="hidden" name="return" value="http://localhost:1544/Client/PaymentSuccess.aspx" />
    <input type="hidden" name="cancel_return" value="http://localhost:1544/Client/Failure.aspx" />
    <input type="hidden" name="notify_url" value="http://localhost:1544/Client/LatestOrder.aspx" />
    <input type="hidden" name="upload" value="1" />
    <input type="hidden" name="address_override" value="0" />
    <%var t = PhotoProcessingHelper.Context.Photo_OrderSummaryDetails.Where(a => a.Photo_CustomerRegistrationDetail.Email == Convert.ToString(Session["email"]));
      int i = 1;
      foreach (var item in t)
      {
    %>
    <input type="hidden" name="item_name_<%=i.ToString() %>" value="<%=item.Photo_PlanDetail.Plan_Name %>" />
    <input type="hidden" name="quantity_<%=i.ToString() %>" value="" />
    <input type="hidden" name="amount_<%=i.ToString() %>" value="<%=item.Photo_PlanDetail.Rate.ToString() %>" />
    <%
          i++;
      } %>
    <input type="hidden" name="handling_cart" value="" />
    <input type="hidden" name="discount_rate_cart" value="" />
    <input type="hidden" name="discount_amount_cart" value="0" />
    <input type="hidden" name="currency_code" value="INR" />
    <input type="hidden" name="custom" value="2047,2054,2085" />
    </form>
</body>
</html>
