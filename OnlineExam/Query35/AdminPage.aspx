<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAA7j_Q-rshuWkc8HyFI4V2HxQYPm-xtd00hTQOC0OXpAMO40FHAxT29dNBGfxqMPq5zwdeiDSHEPL89A"
        type="text/javascript"></script>
    <script type="text/javascript">
        var geocoder, location1, location2;
        function initialize() {
            geocoder = new GClientGeocoder();
        }
        function showLocation() {
            var ad1 = document.getElementById('<%=txtAddress1.ClientID%>');
            geocoder.getLocations(ad1.value, function (response) {
                if (!response || response.Status.code != 200) {
                    alert("Sorry, we were unable to find the address");
                }
                else {
                    location1 = { lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address };
                    AssignValues();
                }
            });
        }
        function AssignValues() {
            try {

                document.getElementById('<%=lblLocation.ClientID%>').innerHTML = location1.address;
                document.getElementById('<%=lblLatitude.ClientID%>').innerHTML = location1.lat;
                document.getElementById('<%=lblLontidude.ClientID%>').innerHTML = location1.lon;
            }
            catch (error) {
                alert(error);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                Enter Result Name
            </td>
            <td>
                <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Type
            </td>
            <td>
                <asp:DropDownList ID="ddlTypes" runat="server">
                </asp:DropDownList>
                <asp:TextBox ID="txtType" runat="server"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Type" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" onclick="initialize();showLocation(); return false;" name="find"
                    value="Search" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table id="ResultDisplay" class="style1">
                    <tr>
                        <td>
                            Location:
                        </td>
                        <td>
                            <asp:Label ID="lblLocation" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Latitude:
                        </td>
                        <td>
                            <asp:Label ID="lblLatitude" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Lontidude:
                        </td>
                        <td>
                            <asp:Label ID="lblLontidude" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
