<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%if (Convert.ToInt32(Session["Type"]) == 2)
          {
        %>
        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Button" />
        <%

          } %>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Image ID="Image1" runat="server" />
        <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Photo">
                    <ItemTemplate>
                        <asp:Image ID="Image1" ImageUrl='<%# "Handler.ashx?id="+Eval("Id") %>' Height="100px"
                            Width="100px" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
