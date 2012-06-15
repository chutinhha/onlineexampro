<%@ Page Title="" Language="C#" MasterPageFile="~/clientside.master" AutoEventWireup="true"
    CodeFile="Address.aspx.cs" Inherits="Address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script language="javascript" type="text/javascript">
        function showHelloWorld() {

            if (document.getElementById('<%=CheckBox1.ClientID%>').checked == true) {
                document.getElementById('<%=TextBox5.ClientID%>').value = document.getElementById('<%=TextBox1.ClientID%>').value;
                document.getElementById('<%=TextBox8.ClientID%>').value = document.getElementById('<%=TextBox2.ClientID%>').value;
                document.getElementById('<%=TextBox9.ClientID%>').value = document.getElementById('<%=TextBox3.ClientID%>').value;
                document.getElementById('<%=TextBox10.ClientID%>').value = document.getElementById('<%=TextBox4.ClientID%>').value;
                document.getElementById('<%=TextBox11.ClientID%>').value = document.getElementById('<%=TextBox7.ClientID%>').value;
                document.getElementById('<%=TextBox12.ClientID%>').value = document.getElementById('<%=TextBox6.ClientID%>').value;

                // document.getElementById('<%=TextBox5.ClientID%>').Text = name;
            }
            else {
                document.getElementById('<%=TextBox5.ClientID%>').value = "";
                document.getElementById('<%=TextBox8.ClientID%>').value = "";
                document.getElementById('<%=TextBox9.ClientID%>').value = "";
                document.getElementById('<%=TextBox10.ClientID%>').value = "";
                document.getElementById('<%=TextBox11.ClientID%>').value = "";
                document.getElementById('<%=TextBox12.ClientID%>').value = "";
            }

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="sdfsd" EnablePageMethods="true" runat="server">
    </cc1:ToolkitScriptManager>
    <table cellpadding="0" cellspacing="0" width="750px">
        <tr>
            <td colspan="2">
                Hard Copy Details:
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <table>
                    <tr>
                        <td>
                            Number of copy's
                        </td>
                        <td>
                            <asp:TextBox ID="txtcount" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td width="10px">
            </td>
            <td>
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" width="350px">
                                <tr>
                                    <td>
                                        Shipping Address
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="150px">
                                                    Name
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox1" Width="150px" runat="server"></asp:TextBox>
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
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="150px">
                                                    Address
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox2" Width="150px" runat="server"></asp:TextBox>
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
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="150px">
                                                    Zip Code
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox3" Width="150px" runat="server"></asp:TextBox>
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
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="150px">
                                                    City
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox4" Width="150px" runat="server"></asp:TextBox>
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
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="150px">
                                                    State
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList1" Width="155px" runat="server">
                                                    </asp:DropDownList>
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
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="150px">
                                                    Country
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList3" Width="155px" runat="server">
                                                    </asp:DropDownList>
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
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="150px">
                                                    Email
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7" Width="150px" runat="server"></asp:TextBox>
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
                                <tr>
                                    <td>
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="150px">
                                                    Phone
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox6" Width="150px" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="20px">
                        </td>
                        <td width="1px" style="background-color: #CCCCCC">
                        </td>
                        <td width="20px">
                        </td>
                        <td valign="top">
                            <table cellpadding="0" cellspacing="0" width="350px">
                                <tr>
                                    <td>
                                        Billing Address
                                    </td>
                                    <td align="right">
                                        <asp:CheckBox ID="CheckBox1" runat="server" OnClick="javascript:showHelloWorld()" />(Billing
                                        same as Shipping)
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td width="150px">
                                                                Name
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox5" Width="150px" runat="server"></asp:TextBox>
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
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td width="150px">
                                                                Address
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox8" Width="150px" runat="server"></asp:TextBox>
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
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td width="150px">
                                                                Zip Code
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox9" Width="150px" runat="server"></asp:TextBox>
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
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td width="150px">
                                                                City
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox10" Width="150px" runat="server"></asp:TextBox>
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
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td width="150px">
                                                                State
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList2" Width="155px" runat="server">
                                                                </asp:DropDownList>
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
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td width="150px">
                                                                Country
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList4" Width="155px" runat="server">
                                                                </asp:DropDownList>
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
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td width="150px">
                                                                Email
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox11" Width="150px" runat="server"></asp:TextBox>
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
                                            <tr>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td width="150px">
                                                                Phone
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox12" Width="150px" runat="server"></asp:TextBox>
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
        </tr>
        <tr>
            <td colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Save&Use this address" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
