<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
                document.getElementById('<%=HiddenField1.ClientID %>').value = location1.address;
                document.getElementById('<%=HiddenField2.ClientID %>').value = location1.lat;
                document.getElementById('<%=HiddenField3.ClientID %>').value = location1.lon;
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
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
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
            </td>
            <td>
                <asp:DropDownList ID="ddlTypes" runat="server" ValidationGroup="v1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlTypes"
                    ErrorMessage="Type Shoul be selected before processin add" ValidationGroup="v1"
                    InitialValue="0" Display="None"></asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" TargetControlID="RequiredFieldValidator1"
                    runat="server">
                </cc1:ValidatorCalloutExtender>
                <asp:TextBox ID="txtType" runat="server" ValidationGroup="v2"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Type" ValidationGroup="v2" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtType"
                    ErrorMessage="Enter values in textbox to add additional types" ValidationGroup="v2"
                    Display="None"></asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" TargetControlID="RequiredFieldValidator2"
                    runat="server">
                </cc1:ValidatorCalloutExtender>
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
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Latitude:
                        </td>
                        <td>
                            <asp:Label ID="lblLatitude" runat="server"></asp:Label>
                            <asp:HiddenField ID="HiddenField2" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Lontidude:
                        </td>
                        <td>
                            <asp:Label ID="lblLontidude" runat="server"></asp:Label>
                            <asp:HiddenField ID="HiddenField3" runat="server" />
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
