<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="jQuery.aspx.cs" Inherits="jQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #tabs
        {
            border: 1px solid #ccc;
            height: 28px;
            background: #eff5f9;
            padding-left: 40px;
            padding-top: 45px;
            -moz-box-shadow: inset 0 -2px 2px #dadada;
            -webkit-box-shadow: inset 0 -2px 2px #dadada;
            box-shadow: inset 0 -2px 2px #dadada;
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
        }
        #tabs li
        {
            float: left;
            list-style: none;
            border-top: 1px solid #ccc;
            border-left: 1px solid #ccc;
            border-right: 1px solid #ccc;
            margin-right: 5px;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            -moz-box-shadow: 0 -2px 2px #dadada;
            -webkit-box-shadow: 0 -2px 2px #dadada;
            box-shadow: 0 -2px 2px #dadada;
        }
        #tabs li a
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            font-weight: bold;
            color: #000000;
            padding: 7px 14px 6px 12px;
            display: block;
            background: #FFFFFF;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            text-decoration: none;
            background: -moz-linear-gradient(top, #ebebeb, white 10%);
            background: -webkit-gradient(linear, 0 0, 0 10%, from(#ebebeb), to(white));
            border-top: 1px solid white;
            text-shadow: -1px -1px 0 #fff;
            outline: none;
        }
        
        
        #tabs li a.inactive
        {
            padding-top: 5px;
            padding-bottom: 5px;
            color: #666666;
            background: -moz-linear-gradient(top, #dedede, white 75%);
            background: -webkit-gradient(linear, 0 0, 0 75%, from(#dedede), to(white));
            border-top: 1px solid white;
        }
        #tabs li a:hover, #tabs li a.inactive:hover
        {
            border-top: 1px solid #dedede;
            color: #000000;
        }
        .container
        {
            clear: both;
            padding: 10px 0px;
            width: 664px;
            background-color: #fff;
            text-align: left;
        }
    </style>
 <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#tabs li a:not(:first)').addClass('inactive');
        $('.container:not(:first)').hide();

        $('#tabs li a').click(function () {
            var t = $(this).attr('href');
            if ($(this).hasClass('inactive')) { //added to not animate when active
                $('#tabs li a').addClass('inactive');
                $(this).removeClass('inactive');
                $('.container').hide();
                $(t).fadeIn('slow');
            }
            return false;
        }) //end click



    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <ul id="tabs">
                    <li><a href="#tab1">Files and Folders</a></li>
                    <li><a href="#tab2">User Profiles</a></li>
                    <li><a href="#tab3">Contacts</a></li>
                    <li><a href="#tab4">Applications</a></li>
                    <li><a href="#tab5">Monthly Cost</a></li>
                </ul>
                <div class="container" id="tab1">
                    ...content goes here1
                </div>
                <div class="container" id="tab2">
                    ...content goes here2
                </div>
                <div class="container" id="tab3">
                    ...content goes here3
                </div>
                <div class="container" id="tab4">
                    ...content goes here4
                </div>
                <div class="container" id="tab5">
                    ...content goes here5
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
