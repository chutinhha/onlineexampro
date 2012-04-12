<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="QueryProcessing.aspx.cs" Inherits="QueryProcessing" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <table>
        <tr>
            <td>
                Query<span style="color: Red">*</span>
            </td>
            <td>
                <asp:TextBox ID="txtQuery" runat="server" ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuery"
                    Display="None" ErrorMessage="Please Enter A Query" ValidationGroup="v1"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" TargetControlID="RequiredFieldValidator1"
                    runat="server">
                </asp:ValidatorCalloutExtender>
            </td>
           
        </tr>
        <tr>
            <td>
                Type<span style="color: Red">*</span>
            </td>
            <td>
                <asp:DropDownList ID="ddlTypes" runat="server" ValidationGroup="v1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlTypes"
                    Display="None" ErrorMessage="Select a type" ValidationGroup="v1" InitialValue="0"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" TargetControlID="RequiredFieldValidator2"
                    runat="server">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Search" ValidationGroup="v1" 
                    onclick="Button1_Click" />
            </td>

        </tr>
       
    </table>
</asp:Content>
