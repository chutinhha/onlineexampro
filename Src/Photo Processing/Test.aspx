<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
        <ProgressTemplate>
            <asp:Panel ID="Panel1" CssClass="overlay" runat="server">
                <asp:Panel ID="Panel2" CssClass="loader" runat="server">
                    <img src="Images/ajax-loader1.gif" />
                </asp:Panel>
            </asp:Panel>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <cc1:AsyncFileUpload ID="AsyncFileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </ContentTemplate>
        <%--<Triggers>
        <asp:PostBackTrigger ControlID="Button1" />
        </Triggers>--%>
    </asp:UpdatePanel>
</asp:Content>
