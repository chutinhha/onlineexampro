<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="SearchingNeighbours.aspx.cs" Inherits="SearchingNeighbours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td>
                <asp:LinkButton ID="lnkBack" runat="server" 
                    PostBackUrl="~/QueryProcessing.aspx">Back</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lnkNext" runat="server" 
                    PostBackUrl="~/SearchingServers.aspx">Next</asp:LinkButton>
            </td>
        </tr>
    </table>

</asp:Content>

