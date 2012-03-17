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
                document.getElementById('<%=lblLocation.ClientID %>').innerHTML = location1.address;
                document.getElementById('<%=lblLatitude.ClientID %>').innerHTML = location1.lat;
                document.getElementById('<%=lblLontidude.ClientID %>').innerHTML = location1.lon;
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
                Enter Result Name<span style="color: Red">*</span>
            </td>
            <td>
                <asp:TextBox ID="txtAddress1" onblur="initialize();showLocation();" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Type<span style="color: Red">*</span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlTypes"
                    Display="None" ErrorMessage="Type Shoul be selected before processin add" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:DropDownList ID="ddlTypes" runat="server" ValidationGroup="v1">
                </asp:DropDownList>
                <asp:TextBox ID="txtType" runat="server" ValidationGroup="v2"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Type" ValidationGroup="v2" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" onclick="initialize();showLocation(); return false;" name="find"
                    value="Search" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtType"
                    Display="None" ErrorMessage="Enter values in textbox to add additional types"
                    ValidationGroup="v2"></asp:RequiredFieldValidator>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="v1" />
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
                <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" ValidationGroup="v1" />
            </td>
        </tr>
    </table>
</asp:Content>
