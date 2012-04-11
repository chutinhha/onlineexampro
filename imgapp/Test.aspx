<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
    <cc1:ToolkitScriptManager ID="dfd" runat="server"></cc1:ToolkitScriptManager>
    <div>
    
        <table>
            <tr>
                <td align="right">
                    <asp:ImageButton ID="imgLeft" runat="server" 
                        ImageUrl="~/Images/arrow33l.gif" onclick="imgLeft_Click" />
                </td>
                <td>
                    <asp:Image ID="imgSource" runat="server" Height="500px" Width="500px" />
                    <asp:Label ID="Label1" runat="server" Text="There is no images to display" 
                        Font-Italic="True" ForeColor="Red"></asp:Label>
                </td>
                <td align="left">
                    <asp:ImageButton ID="imgRight" runat="server" 
                        ImageUrl="~/Images/arrow33r.gif" onclick="imgRight_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    BOX BARCODE</td>
                <td>
                    <asp:TextBox ID="txtBoxBarCode" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    ALTID</td>
                <td>
                    <asp:TextBox ID="txtAltId" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    DESCRIPTION 1</td>
                <td>
                    <asp:TextBox ID="txtDes1" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    DESCRIPTION 2</td>
                <td>
                    <asp:TextBox ID="txtDes2" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    DESCRIPTION 3</td>
                <td>
                    <asp:TextBox ID="txtDes3" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    DESCRIPTION 4</td>
                <td>
                    <asp:TextBox ID="txtDes4" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    FROM DATE</td>
                <td>
                    <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    TO DATE</td>
                <td>
                    <asp:TextBox ID="txtToDate" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    DESTROY DATE</td>
                <td>
                    <asp:TextBox ID="txtDestroyDate" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    IMAGE NAME</td>
                <td>
                    <asp:TextBox ID="txtImageName" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                        onclick="btnSubmit_Click" />
                </td>
                <td>
                    </td>
            </tr>
        </table>
        <asp:TextBox ID="TextBox1" runat="server" Height="173px" Width="413px"></asp:TextBox>
        <cc1:HtmlEditorExtender ID="ds" runat="server" TargetControlID="TextBox1"></cc1:HtmlEditorExtender>
    </div>
    </form>
</body>
</html>
