<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

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
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
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
    <br />
    <div>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="0">Select a Category</asp:ListItem>
            <asp:ListItem Value="16">Abortion</asp:ListItem>
            <asp:ListItem Value="1">Adult/Mature Content</asp:ListItem>
            <asp:ListItem Value="23">Alcohol</asp:ListItem>
            <asp:ListItem Value="93">Alternative Sexuality/Lifestyles</asp:ListItem>
            <asp:ListItem Value="22">Alternative Spirituality/Occult</asp:ListItem>
            <asp:ListItem Value="20">Arts/Entertainment</asp:ListItem>
            <asp:ListItem Value="59">Auctions</asp:ListItem>
            <asp:ListItem Value="63">Blogs/Personal Pages</asp:ListItem>
            <asp:ListItem Value="32">Brokerage/Trading</asp:ListItem>
            <asp:ListItem Value="21">Business/Economy</asp:ListItem>
            <asp:ListItem Value="51">Chat/Instant Messaging</asp:ListItem>
            <asp:ListItem Value="38">Computers/Internet</asp:ListItem>
            <asp:ListItem Value="97">Content Servers</asp:ListItem>
            <asp:ListItem Value="29">Cultural/Charitable Organizations</asp:ListItem>
            <asp:ListItem Value="27">Education</asp:ListItem>
            <asp:ListItem Value="52">Email</asp:ListItem>
            <asp:ListItem Value="7">Extreme</asp:ListItem>
            <asp:ListItem Value="31">Financial Services</asp:ListItem>
            <asp:ListItem Value="87">For Kids</asp:ListItem>
            <asp:ListItem Value="11">Gambling</asp:ListItem>
            <asp:ListItem Value="33">Games</asp:ListItem>
            <asp:ListItem Value="34">Government/Legal</asp:ListItem>
            <asp:ListItem Value="17">Hacking</asp:ListItem>
            <asp:ListItem Value="37">Health</asp:ListItem>
            <asp:ListItem Value="68">Humor/Jokes</asp:ListItem>
            <asp:ListItem Value="9">Illegal/Questionable</asp:ListItem>
            <asp:ListItem Value="25">Illegal Drugs</asp:ListItem>
            <asp:ListItem Value="5">Intimate Apparel/Swimsuit</asp:ListItem>
            <asp:ListItem Value="45">Job Search/Careers</asp:ListItem>
            <asp:ListItem Value="94">LGBT</asp:ListItem>
            <asp:ListItem Value="35">Military</asp:ListItem>
            <asp:ListItem Value="46">News/Media</asp:ListItem>
            <asp:ListItem Value="53">Newsgroups/Forums</asp:ListItem>
            <asp:ListItem Value="96">Non-viewable</asp:ListItem>
            <asp:ListItem Value="6">Nudity</asp:ListItem>
            <asp:ListItem Value="56">Online Storage</asp:ListItem>
            <asp:ListItem Value="50">Open Image/Media Servers</asp:ListItem>
            <asp:ListItem Value="72">Pay to Surf</asp:ListItem>
            <asp:ListItem Value="83">Peer-to-Peer (P2P)</asp:ListItem>
            <asp:ListItem Value="47">Personals/Dating</asp:ListItem>
            <asp:ListItem Value="18">Phishing</asp:ListItem>
            <asp:ListItem Value="98">Placeholders</asp:ListItem>
            <asp:ListItem Value="36">Political/Activist Groups</asp:ListItem>
            <asp:ListItem Value="3">Pornography</asp:ListItem>
            <asp:ListItem Value="86">Proxy Avoidance</asp:ListItem>
            <asp:ListItem Value="60">Real Estate</asp:ListItem>
            <asp:ListItem Value="49">Reference</asp:ListItem>
            <asp:ListItem Value="54">Religion</asp:ListItem>
            <asp:ListItem Value="57">Remote Access Tools</asp:ListItem>
            <asp:ListItem Value="64">Restaurants/Dining/Food</asp:ListItem>
            <asp:ListItem Value="40">Search Engines/Portals</asp:ListItem>
            <asp:ListItem Value="4">Sex Education</asp:ListItem>
            <asp:ListItem Value="58">Shopping</asp:ListItem>
            <asp:ListItem Value="55">Social Networking</asp:ListItem>
            <asp:ListItem Value="61">Society/Daily Living</asp:ListItem>
            <asp:ListItem Value="71">Software Downloads</asp:ListItem>
            <asp:ListItem Value="65">Sports/Recreation</asp:ListItem>
            <asp:ListItem Value="43">Spyware/Malware Sources</asp:ListItem>
            <asp:ListItem Value="44">Spyware Effects/Privacy Concerns</asp:ListItem>
            <asp:ListItem Value="84">Streaming Media/MP3s</asp:ListItem>
            <asp:ListItem Value="92">Suspicious</asp:ListItem>
            <asp:ListItem Value="24">Tobacco</asp:ListItem>
            <asp:ListItem Value="66">Travel</asp:ListItem>
            <asp:ListItem Value="67">Vehicles</asp:ListItem>
            <asp:ListItem Value="14">Violence/Hate/Racism</asp:ListItem>
            <asp:ListItem Value="15">Weapons</asp:ListItem>
            <asp:ListItem Value="88">Web Advertisements</asp:ListItem>
            <asp:ListItem Value="85">Web Applications</asp:ListItem>
            <asp:ListItem Value="89">Web Hosting</asp:ListItem>
            <asp:ListItem Value="90">UNKNOWN</asp:ListItem>
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
