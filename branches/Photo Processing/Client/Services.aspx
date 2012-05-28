<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/AccordionStyleSheet.css" rel="stylesheet" type="text/css" />
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
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <cc1:Accordion ID="accService" runat="server" BorderColor="Black" BackColor="#996600"
                                HeaderCssClass="header" ContentCssClass="content" Width="300px" EnableTheming="true"
                                HeaderSelectedCssClass="OnSelectHeader" BorderStyle="Groove" BorderWidth="5px"
                                FramesPerSecond="10" onitemdatabound="accService_ItemDataBound">
                                <HeaderTemplate>
                                    <table cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton1" runat="server" Text='<%# Eval("Plan_Name")%>' />
                                            </td>
                                        </tr>
                                    </table>
                                </HeaderTemplate>
                                <ContentTemplate>
                                    <% var aa = PhotoProcessingHelper.Context.Photo_SubCatagoryDetails.Select(a => a);
                                       foreach (var item in aa)
                                       {%>
                                    <table>
                                        <tr>
                                            <td>
                                                <%=item.Category_name %>
                                            </td>
                                        </tr>
                                    </table>
                                    <%  } %>
                                </ContentTemplate>
                            </cc1:Accordion>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
