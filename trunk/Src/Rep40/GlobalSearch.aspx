<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="GlobalSearch.aspx.cs" Inherits="GlobalSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table width="100%">
            <tr>
                <td>
                    HostName
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Resolve" />
                </td>
            </tr>
            <tr>
                <td>
                    IP Address
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Resolve" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Get Details" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="background-color: #FFCCFF; border: 1px dotted #800000">
                        <tr>
                            <td>
                                CountryCode :
                            </td>
                            <td>
                                <asp:Label ID="lblCountryCode" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Country :
                            </td>
                            <td>
                                <asp:Label ID="lblcountryname" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                regioncode :
                            </td>
                            <td>
                                <asp:Label ID="lblregioncode" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                State/Province :
                            </td>
                            <td>
                                <asp:Label ID="lblregionname" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                City :
                            </td>
                            <td>
                                <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Zip or postal code :
                            </td>
                            <td>
                                <asp:Label ID="lblzippostalcode" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Latitude :
                            </td>
                            <td>
                                <asp:Label ID="lbllatitude" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Longitude :
                            </td>
                            <td>
                                <asp:Label ID="lbllongitude" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                gmtoffset :
                            </td>
                            <td>
                                <asp:Label ID="lblgmtoffset" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                dstoffset :
                            </td>
                            <td>
                                <asp:Label ID="lbldstoffset" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Timezone :
                            </td>
                            <td>
                                <asp:Label ID="lbltimezonename" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                isdst :
                            </td>
                            <td>
                                <asp:Label ID="lblisdst" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                IP address :
                            </td>
                            <td>
                                <asp:Label ID="lblIP" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
