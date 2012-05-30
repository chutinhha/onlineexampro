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
                            <%--<cc1:Accordion ID="accService" runat="server" BorderColor="Black" BackColor="#996600"
                                HeaderCssClass="header" ContentCssClass="content" Width="300px" EnableTheming="true"
                                HeaderSelectedCssClass="OnSelectHeader" BorderStyle="Groove" BorderWidth="5px"
                                FramesPerSecond="10" OnItemDataBound="accService_ItemDataBound">

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
                            </cc1:Accordion>--%>
                            <cc1:Accordion ID="accService" runat="server" BorderColor="Black" BackColor="#996600"
                                HeaderCssClass="header" ContentCssClass="content" Width="300px" EnableTheming="true"
                                HeaderSelectedCssClass="OnSelectHeader" BorderStyle="Groove" BorderWidth="5px"
                                FramesPerSecond="10">
                            </cc1:Accordion>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <%--<ul class="serviceOptionsGroup" style="width: 414px">
        <li>
            <div class="serviceOptionsToggle bigTxt">
                <input type="radio" name="cat[]" id="1" value="1" onclick="return getprice('1','0.99',this.id)" />
                Bronze Service&nbsp;
            </div>
            <ul style="display: none;" class="serviceOptions serviceOptions01 paraTxt">
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="2" />
                    Red Eye Removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="3" />
                    Image Crop and Re-Size &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="4" />
                    Color Correction &nbsp; </li>
            </ul>
        </li>
        <li>
            <div class="serviceOptionsToggle bigTxt">
                <input type="radio" name="cat[]" id="2" value="5" onclick="return getprice('5','4.99',this.id)" />
                Silver Service&nbsp;
            </div>
            <ul style="display: none;" class="serviceOptions serviceOptions01 paraTxt">
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="16" />
                    Red Eye Removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="17" />
                    Image Crop and Re-Size &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="18" />
                    Color Correction &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="19" />
                    Teeth Whitening &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="20" />
                    Freckle Removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="21" />
                    Blemish Removal including scars/bruises/tattoos/acne &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="22" />
                    Skin smoothing &nbsp; </li>
            </ul>
        </li>
        <li>
            <div class="serviceOptionsToggle bigTxt">
                <input type="radio" name="cat[]" id="3" value="6" onclick="return getprice('6','7.99',this.id)" />
                Gold Service&nbsp;
            </div>
            <ul style="display: none;" class="serviceOptions serviceOptions01 paraTxt">
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="23" />
                    Red Eye Removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="24" />
                    Image Crop and Re-Size &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="25" />
                    Color Correction &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="26" />
                    Teeth Whitening &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="27" />
                    Remove Freckles &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="28" />
                    Blemish Removal including scars/bruises/tattoos/acne &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="29" />
                    Skin smoothing &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="30" />
                    'Bad hair day' Corrections &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="31" />
                    Glasses / Braces Removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="32" />
                    Photo effect - black and white / sepia / coloursplash &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="33" />
                    Add a personal note to the Technician &nbsp; </li>
            </ul>
        </li>
        <li>
            <div class="serviceOptionsToggle bigTxt">
                <input type="radio" name="cat[]" id="4" value="7" onclick="return getprice('7','9.99',this.id)" />
                Platinum Service&nbsp;
            </div>
            <ul style="display: none;" class="serviceOptions serviceOptions01 paraTxt">
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="34" />
                    Red Eye Removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="35" />
                    Image Crop and Re-Size &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="36" />
                    Color Correction &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="37" />
                    Teeth Whitening &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="38" />
                    Remove Freckles &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="39" />
                    Blemish Removal including scars/bruises/tattoos/acne &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="40" />
                    Skin smoothing &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="41" />
                    'Bad hair day' Corrections &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="42" />
                    Glasses / Braces Removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="43" />
                    Photo effect - black and white / sepia / coloursplash &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="44" />
                    Eye or Hair Color Changes &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="45" />
                    Receding Hair line or Bald Spot enhancement &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="46" />
                    Receding Hair line or Bald Spot enhancement &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="47" />
                    Makeup Application &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="48" />
                    Weight reduction and Body contouring &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="49" />
                    Background changes and object removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="50" />
                    Date stamp removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="51" />
                    Add a personal note to the Technician &nbsp; </li>
            </ul>
        </li>
        <li>
            <div class="serviceOptionsToggle bigTxt">
                <input type="radio" name="cat[]" id="5" value="8" onclick="return getprice('8','2.49',this.id)" />
                Basic Product Service&nbsp;
            </div>
            <ul style="display: none;" class="serviceOptions serviceOptions01 paraTxt">
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="52" />
                    Sharpen the image &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="53" />
                    Background to White or plain colour &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="54" />
                    Image Crop and Re-Size &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="57" />
                    Color Correction &nbsp; </li>
            </ul>
        </li>
        <li>
            <div class="serviceOptionsToggle bigTxt">
                <input type="radio" name="cat[]" id="6" value="9" onclick="return getprice('9','3.49',this.id)" />
                Advanced Product Service&nbsp;
            </div>
            <ul style="display: none;" class="serviceOptions serviceOptions01 paraTxt">
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="55" />
                    Sharpen the image &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="56" />
                    Color Correction &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="58" />
                    Background changes and object removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="59" />
                    Image Crop and Re-Size &nbsp; </li>
            </ul>
        </li>
        <li>
            <div class="serviceOptionsToggle bigTxt">
                <input type="radio" name="cat[]" id="7" value="10" onclick="return getprice('10','4.99',this.id)" />
                Creative Collage Service&nbsp;
            </div>
            <ul style="display: none;" class="serviceOptions serviceOptions01 paraTxt">
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="60" />
                    Image Crop and Re-Size &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="61" />
                    Background changes and object removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="62" />
                    Color Correction &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="63" />
                    Add Reference Photo &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="64" />
                    Add 2 or more images (up to 5) to combine &nbsp; </li>
            </ul>
        </li>
        <li>
            <div class="serviceOptionsToggle bigTxt">
                <input type="radio" name="cat[]" id="8" value="11" onclick="return getprice('11','19.99',this.id)" />
                Photo Restoration Service&nbsp;
            </div>
            <ul style="display: none;" class="serviceOptions serviceOptions01 paraTxt">
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="65" />
                    Image Crop and Re-Size &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="66" />
                    Background changes and object removal &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="67" />
                    Repair all tears / rips / corners / bends / cracks &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="68" />
                    Enhance discoloration and yellowing effects &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="69" />
                    Clean all spots / dirt &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="70" />
                    Repair fading / light exposure issues &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="71" />
                    Remove Stains / watermarks / Ink-Marks &nbsp; </li>
                <li>
                    <input type="checkbox" name="cat_subcats[]" id="cat_subcats1" value="72" />
                    Add a personal note to the Technician &nbsp; </li>
            </ul>
        </li>
    </ul>--%>
</asp:Content>
