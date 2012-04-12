<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
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
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Button" />
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
        </table>
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
    </div>
    <cc1:GMap ID="GMap1" runat="server" 
        Key="AIzaSyC9WCXddEQjikGQo7IfbItcTgfiIhPm50E" /> 
    </form>
</body>
</html>
