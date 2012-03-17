<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="GetBestResults.aspx.cs" Inherits="GetBestResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAA7j_Q-rshuWkc8HyFI4V2HxQYPm-xtd00hTQOC0OXpAMO40FHAxT29dNBGfxqMPq5zwdeiDSHEPL89A"
        type="text/javascript"></script>
    <script type="text/javascript">
        var geocoder, location1, location2;
        function initialize() {
            geocoder = new GClientGeocoder();
        }
        function showLocation() {
            var ad1 = document.getElementById('<%=txtFromPlace.ClientID%>');
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
                document.getElementById('<%=Label1.ClientID %>').innerHTML = location1.address;
                document.getElementById('<%=HiddenField1.ClientID %>').value = location1.address;
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
                From Place
            </td>
            <td>
                <asp:TextBox ID="txtFromPlace" onblur="initialize();showLocation();" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                To Place
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
               
            </td>
            <td>
                
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="GetDistance" />
                
            </td>
        </tr>
     
    </table>
</asp:Content>
