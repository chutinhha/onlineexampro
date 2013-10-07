<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/_mobile.css" rel="stylesheet" type="text/css" />
    <link href="css/karma-teal-grey.css" rel="stylesheet" type="text/css" />
    <link href="css/secondary-teal-grey.css" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
    <link href="Styles/karma-pink.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1-slider.js" type="text/javascript"></script>
    <script src="Scripts/testimonial-slider.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="Scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
    <script src="Scripts/karma.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.slideshow').cycle({
                fx: 'scrollLeft', // choose your transition type, ex: fade, scrollUp, shuffle, etc...
                speed: 2000,
                timeout: 2000,
                next: '#next',
                prev: '#prev'
            });
        });
</script>
    <script language="JavaScript" type="text/javascript">
<!--
        //v1.7
        // Flash Player Version Detection
        // Detect Client Browser type
        // Copyright 2005-2008 Adobe Systems Incorporated.  All rights reserved.
        var isIE = (navigator.appVersion.indexOf("MSIE") != -1) ? true : false;
        var isWin = (navigator.appVersion.toLowerCase().indexOf("win") != -1) ? true : false;
        var isOpera = (navigator.userAgent.indexOf("Opera") != -1) ? true : false;
        function ControlVersion() {
            var version;
            var axo;
            var e;
            // NOTE : new ActiveXObject(strFoo) throws an exception if strFoo isn't in the registry
            try {
                // version will be set for 7.X or greater players
                axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");
                version = axo.GetVariable("$version");
            } catch (e) {
            }
            if (!version) {
                try {
                    // version will be set for 6.X players only
                    axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");

                    // installed player is some revision of 6.0
                    // GetVariable("$version") crashes for versions 6.0.22 through 6.0.29,
                    // so we have to be careful. 

                    // default to the first public version
                    version = "WIN 6,0,21,0";
                    // throws if AllowScripAccess does not exist (introduced in 6.0r47)		
                    axo.AllowScriptAccess = "always";
                    // safe to call for 6.0r47 or greater
                    version = axo.GetVariable("$version");
                } catch (e) {
                }
            }
            if (!version) {
                try {
                    // version will be set for 4.X or 5.X player
                    axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");
                    version = axo.GetVariable("$version");
                } catch (e) {
                }
            }
            if (!version) {
                try {
                    // version will be set for 3.X player
                    axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");
                    version = "WIN 3,0,18,0";
                } catch (e) {
                }
            }
            if (!version) {
                try {
                    // version will be set for 2.X player
                    axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
                    version = "WIN 2,0,0,11";
                } catch (e) {
                    version = -1;
                }
            }

            return version;
        }
        // JavaScript helper required to detect Flash Player PlugIn version information
        function GetSwfVer() {
            // NS/Opera version >= 3 check for Flash plugin in plugin array
            var flashVer = -1;

            if (navigator.plugins != null && navigator.plugins.length > 0) {
                if (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]) {
                    var swVer2 = navigator.plugins["Shockwave Flash 2.0"] ? " 2.0" : "";
                    var flashDescription = navigator.plugins["Shockwave Flash" + swVer2].description;
                    var descArray = flashDescription.split(" ");
                    var tempArrayMajor = descArray[2].split(".");
                    var versionMajor = tempArrayMajor[0];
                    var versionMinor = tempArrayMajor[1];
                    var versionRevision = descArray[3];
                    if (versionRevision == "") {
                        versionRevision = descArray[4];
                    }
                    if (versionRevision[0] == "d") {
                        versionRevision = versionRevision.substring(1);
                    } else if (versionRevision[0] == "r") {
                        versionRevision = versionRevision.substring(1);
                        if (versionRevision.indexOf("d") > 0) {
                            versionRevision = versionRevision.substring(0, versionRevision.indexOf("d"));
                        }
                    }
                    var flashVer = versionMajor + "." + versionMinor + "." + versionRevision;
                }
            }
            // MSN/WebTV 2.6 supports Flash 4
            else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.6") != -1) flashVer = 4;
            // WebTV 2.5 supports Flash 3
            else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.5") != -1) flashVer = 3;
            // older WebTV supports Flash 2
            else if (navigator.userAgent.toLowerCase().indexOf("webtv") != -1) flashVer = 2;
            else if (isIE && isWin && !isOpera) {
                flashVer = ControlVersion();
            }
            return flashVer;
        }
        // When called with reqMajorVer, reqMinorVer, reqRevision returns true if that version or greater is available
        function DetectFlashVer(reqMajorVer, reqMinorVer, reqRevision) {
            versionStr = GetSwfVer();
            if (versionStr == -1) {
                return false;
            } else if (versionStr != 0) {
                if (isIE && isWin && !isOpera) {
                    // Given "WIN 2,0,0,11"
                    tempArray = versionStr.split(" "); 	// ["WIN", "2,0,0,11"]
                    tempString = tempArray[1]; 		// "2,0,0,11"
                    versionArray = tempString.split(","); // ['2', '0', '0', '11']
                } else {
                    versionArray = versionStr.split(".");
                }
                var versionMajor = versionArray[0];
                var versionMinor = versionArray[1];
                var versionRevision = versionArray[2];
                // is the major.revision >= requested major.revision AND the minor version >= requested minor
                if (versionMajor > parseFloat(reqMajorVer)) {
                    return true;
                } else if (versionMajor == parseFloat(reqMajorVer)) {
                    if (versionMinor > parseFloat(reqMinorVer))
                        return true;
                    else if (versionMinor == parseFloat(reqMinorVer)) {
                        if (versionRevision >= parseFloat(reqRevision))
                            return true;
                    }
                }
                return false;
            }
        }
        function AC_AddExtension(src, ext) {
            if (src.indexOf('?') != -1)
                return src.replace(/\?/, ext + '?');
            else
                return src + ext;
        }
        function AC_Generateobj(objAttrs, params, embedAttrs) {
            var str = '';
            if (isIE && isWin && !isOpera) {
                str += '<object ';
                for (var i in objAttrs) {
                    str += i + '="' + objAttrs[i] + '" ';
                }
                str += '>';
                for (var i in params) {
                    str += '<param name="' + i + '" value="' + params[i] + '" /> ';
                }
                str += '</object>';
            }
            else {
                str += '<embed ';
                for (var i in embedAttrs) {
                    str += i + '="' + embedAttrs[i] + '" ';
                }
                str += '> </embed>';
            }
            document.write(str);
        }
        function AC_FL_RunContent() {
            var ret =
    AC_GetArgs
    (arguments, ".swf", "movie", "clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
     , "application/x-shockwave-flash"
    );
            AC_Generateobj(ret.objAttrs, ret.params, ret.embedAttrs);
        }
        function AC_SW_RunContent() {
            var ret =
    AC_GetArgs
    (arguments, ".dcr", "src", "clsid:166B1BCA-3F9C-11CF-8075-444553540000"
     , null
    );
            AC_Generateobj(ret.objAttrs, ret.params, ret.embedAttrs);
        }
        function AC_GetArgs(args, ext, srcParamName, classid, mimeType) {
            var ret = new Object();
            ret.embedAttrs = new Object();
            ret.params = new Object();
            ret.objAttrs = new Object();
            for (var i = 0; i < args.length; i = i + 2) {
                var currArg = args[i].toLowerCase();
                switch (currArg) {
                    case "classid":
                        break;
                    case "pluginspage":
                        ret.embedAttrs[args[i]] = args[i + 1];
                        break;
                    case "src":
                    case "movie":
                        args[i + 1] = AC_AddExtension(args[i + 1], ext);
                        ret.embedAttrs["src"] = args[i + 1];
                        ret.params[srcParamName] = args[i + 1];
                        break;
                    case "onafterupdate":
                    case "onbeforeupdate":
                    case "onblur":
                    case "oncellchange":
                    case "onclick":
                    case "ondblclick":
                    case "ondrag":
                    case "ondragend":
                    case "ondragenter":
                    case "ondragleave":
                    case "ondragover":
                    case "ondrop":
                    case "onfinish":
                    case "onfocus":
                    case "onhelp":
                    case "onmousedown":
                    case "onmouseup":
                    case "onmouseover":
                    case "onmousemove":
                    case "onmouseout":
                    case "onkeypress":
                    case "onkeydown":
                    case "onkeyup":
                    case "onload":
                    case "onlosecapture":
                    case "onpropertychange":
                    case "onreadystatechange":
                    case "onrowsdelete":
                    case "onrowenter":
                    case "onrowexit":
                    case "onrowsinserted":
                    case "onstart":
                    case "onscroll":
                    case "onbeforeeditfocus":
                    case "onactivate":
                    case "onbeforedeactivate":
                    case "ondeactivate":
                    case "type":
                    case "codebase":
                    case "id":
                        ret.objAttrs[args[i]] = args[i + 1];
                        break;
                    case "width":
                    case "height":
                    case "align":
                    case "vspace":
                    case "hspace":
                    case "class":
                    case "title":
                    case "accesskey":
                    case "name":
                    case "tabindex":
                        ret.embedAttrs[args[i]] = ret.objAttrs[args[i]] = args[i + 1];
                        break;
                    default:
                        ret.embedAttrs[args[i]] = ret.params[args[i]] = args[i + 1];
                }
            }
            ret.objAttrs["classid"] = classid;
            if (mimeType) ret.embedAttrs["type"] = mimeType;
            return ret;
        }
// -->
</script>
    <script type="text/javascript">
<!--
        $(document).ready(function () {

            $('#menu li').hover(
		function () {
		    //show its submenu
		    $('ul', this).slideDown();
		    $('ul li ul', this).slideUp(0);

		},
		function () {
		    //hide its submenu
		    $('ul', this).slideUp();
		}
	);

        });
-->
</script>
    <script type="text/javascript" src="js/contactable/jquery.validate.pack.js"></script>
    <script type="text/javascript" src="js/contactable/jquery.contactable.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#contact').contactable({
                subject: 'A Feeback Message'
            });
        });
</script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <link rel="stylesheet" href="piecemakerCSS.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <div id="header">
            <div class="top-block">
                <div class="top-holder">
                    <div class="toolbar-left">
                        <ul class="sub-menu sf-js-enabled">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Sitemap</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                    <div class="toolbar-right">
                        <ul>
                            <li><a href="http://www.sampath.net">www.sampath.net</a></li>
                            <li><a href="http://www.twitter.com/sampath">@sampath</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header-holder">
                <div class="rays">
                    <div class="header-area">
                        <!-- ***************** - LOGO - ***************** -->
                        <a href="#" class="logo">
                            <img src="Images/lord_vinayagar-normal.jpg" height="57" width="154" />
                        </a>
                        <!-- ***************** - END LOGO - ***************** -->
                        <!-- ***************** - Main Navigation - ***************** -->
                        <ul id="menu-main-nav">
                            <li class="parent"><a href="../content-3d-effects.html"><span><strong>Home</strong><span
                                class="navi-description">about decors</span></span></a>
                                <div class="drop" style="display: block; height: 0px; overflow: hidden; opacity: 0;">
                                </div>
                            </li>
                            <li class="parent"><a href="../index-jquery-2.html"><span><strong>Stage Decors</strong><span
                                class="navi-description">various decorations</span></span></a>
                                <div class="drop" style="display: block; height: 0px; overflow: hidden; opacity: 0;">
                                </div>
                            </li>
                            <li class="current_page_item parent"><a href="color-autumn.html"><span><strong>Audio
                                & Lights</strong><span class="navi-description">audio &amp; light effects</span></span></a>
                                <div class="drop" style="display: block; height: 0px; overflow: hidden; opacity: 0;">
                                </div>
                            </li>
                            <li class="parent"><a href="../template-gallery-3d.html"><span><strong>About Us</strong><span
                                class="navi-description">about company</span></span></a>
                                <div class="drop" style="display: block; height: 0px; overflow: hidden; opacity: 0;">
                                </div>
                            </li>
                            <li class="parent"><a href="../template-blog.html"><span><strong>Contact Us</strong><span
                                class="navi-description">contact company</span></span></a>
                                <div class="drop" style="display: block; height: 0px; overflow: hidden; opacity: 0;">
                                </div>
                            </li>
                        </ul>
                        <!-- ***************** - END Main Navigation - ***************** -->
                    </div>
                    <!-- header-area -->
                </div>
                <!-- end rays -->
            </div>
        </div>
        <div id="main">
            <div class="main-area home-main-area">
                <div class="main-holder home-holder">
                    <div class="content_full_width">
                        <div id="piecemaker">
                            <script language="JavaScript" type="text/javascript">
                                AC_FL_RunContent(
		'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0',
		'width', '950px',
		'height', '350px',
		'src', 'piecemaker',
		'quality', 'high',
		'pluginspage', 'http://www.adobe.com/go/getflashplayer_de',
		'align', 'bottom',
		'play', 'true',
		'loop', 'true',
		'scale', 'noscale',
		'wmode', 'transparent',
		'devicefont', 'false',
		'id', 'piecemaker',
		'bgcolor', '',
		'name', 'piecemaker',
		'menu', 'true',
		'allowFullScreen', 'false',
		'allowScriptAccess', 'sameDomain',
		'movie', 'piecemaker',
		'salign', ''
		); //end AC code
            </script>
                            <noscript>
                                <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0"
                                    name="piecemaker2" width="950" height="350" align="bottom" id="piecemaker2" wmode="transparent" style="z-index: 1">
                                    <param name="allowScriptAccess" value="sameDomain" />
                                    <param name="allowFullScreen" value="false" />
                                    <param name="movie" value="Drag to a file to choose it." />
                                    <param name="quality" value="high" />
                                    <param name="wmode" value="transparent">
                                    <param name="BGCOLOR" value="opaque" />
                                </object>
                            </noscript>
                        </div>
                        <%--<img src="images/banner-shadeo.png" alt="" class="shadow2" />--%>
                        <div class="home-jquery-content">
                            <div class="callout-wrap">
                                <span>Karma doesn't lock you down to a specific homepage layout. All homepage layouts
                                    are completely customizable. The various built-in code snippets make it amazingly
                                    easy to create gorgeous layouts.</span>
                            </div>
                            <!-- end callout-wrap -->
                            <br class="clear">
                            <div class="one_fourth">
                                <div class="modern_img_frame modern_four_col_large">
                                    <div class="modern_preload_four_col_large">
                                        <div class="attachment-fadeIn" style="display: block;">
                                            <a href="content-code-snippets.html">
                                                <img src="http://s3.truethemes.net/theme-xml-content/html-karma/premium-website-template-2.png"
                                                    alt="CSS Template" width="190" height="111"></a></div>
                                    </div>
                                </div>
                                <!-- end modern_img_frame -->
                                <h6>
                                    100+ Built-in Code Snippets</h6>
                                <p>
                                    Karma features over 70 built-in code snippets. Mutli-column layouts, interface tabs,
                                    animated accordions and stylish image frames are just some of the powerful built-in
                                    options.</p>
                                <p>
                                    <a href="content-code-snippets.html"><strong>Check em' out →</strong></a></p>
                            </div>
                            <!-- end first one_fourth_column -->
                            <div class="one_fourth">
                                <div class="modern_img_frame modern_four_col_large">
                                    <div class="modern_preload_four_col_large">
                                        <div class="attachment-fadeIn" style="display: block;">
                                            <a href="content-3d-effects.html">
                                                <img src="http://s3.truethemes.net/theme-xml-content/html-karma/premium-website-template-3.png"
                                                    alt="Website Template" width="190" height="111"></a></div>
                                    </div>
                                </div>
                                <!-- end modern_img_frame -->
                                <h6>
                                    Amazing 3D Effects</h6>
                                <p>
                                    Karma is the only theme on the market to feature the all new CU3ER v1. With an endless
                                    array of 3D effects it's never been so easy to add stunning 3D sliders to your website.</p>
                                <p>
                                    <a href="content-3d-effects.html"><strong>Learn More →</strong></a></p>
                            </div>
                            <!-- end second one_fourth_column -->
                            <div class="one_fourth">
                                <div class="modern_img_frame modern_four_col_large">
                                    <div class="modern_preload_four_col_large">
                                        <div class="attachment-fadeIn" style="display: block;">
                                            <a href="content-20-color-variations.html">
                                                <img src="http://s3.truethemes.net/theme-xml-content/html-karma/premium-website-template-4.png"
                                                    alt="HTML Template" width="190" height="111"></a></div>
                                    </div>
                                </div>
                                <!-- end modern_img_frame -->
                                <h6>
                                    20 Color Variations</h6>
                                <p>
                                    Karma was designed and built by professional web designers. It comes packed with
                                    20 gorgeous color variations. You can also easily mix and match color schemes for
                                    a completely custom look.</p>
                                <p>
                                    <a href="content-20-color-variations.html"><strong>Learn More →</strong></a></p>
                            </div>
                            <!-- end third one_fourth_column -->
                            <div class="one_fourth_last">
                                <div class="modern_img_frame modern_four_col_large">
                                    <div class="modern_preload_four_col_large">
                                        <div class="attachment-fadeIn" style="display: block;">
                                            <a href="content-20-page-layouts.html">
                                                <img src="http://s3.truethemes.net/theme-xml-content/html-karma/premium-website-template-5.png"
                                                    alt="Premium HTML Template" width="190" height="111"></a></div>
                                    </div>
                                </div>
                                <!-- end modern_img_frame -->
                                <h6>
                                    20 Layout Templates</h6>
                                <p>
                                    Karma has something for everyone with with 20 different page templates. With so
                                    many unqiue page layouts you can create multiple unique websites, saving yourself
                                    lots of time and money.</p>
                                <p>
                                    <a href="content-20-page-layouts.html"><strong>Learn More →</strong></a></p>
                            </div>
                            <!-- end fourth one_fourth_column -->
                            <br class="clear">
                          
                            <!-- END testimonials -->
                        </div>
                        <!-- end home-jquery-content -->
                        <!-- ***************** - END Homepage Content Area - ***************** -->
                    </div>
                    <!-- end content -->
                </div>
                <!-- end main-holder -->
            </div>
            <!-- main-area -->
            <!-- ***************** - Top Footer - ***************** -->
            <div id="footer">
                <div class="footer-area">
                    <div class="footer-wrapper">
                        <div class="footer-holder">
                            <!-- /***************** - Footer Content Starts Here - ***************** -->
                            <div class="one_fourth">
                                <h3>
                                    Latest from the Blog</h3>
                                <div class="footer_post">
                                    <h4>
                                        <a href="template-blog-full-post.html">Blog Post 1</a></h4>
                                    <p>
                                        <a href="template-blog-full-post.html">Duis mollis, est non commodo luctus, nisi erat
                                            porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet...</a></p>
                                </div>
                                <!-- end footer_post -->
                                <div class="footer_post">
                                    <h4>
                                        <a href="template-blog-full-post.html">Blog Post 2</a></h4>
                                    <p>
                                        <a href="template-blog-full-post.html">Duis mollis, est non commodo luctus, nisi erat
                                            porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet...</a></p>
                                </div>
                                <!-- end footer_post -->
                            </div>
                            <!-- end first one_fourth_column -->
                            <div class="one_fourth">
                                <h3>
                                    Useful Links</h3>
                                <ul class="blogroll">
                                    <li><a href="content-code-snippets.html">
                                        <img src="http://s3.truethemes.net/theme-xml-content/wp-karma/footer-useful-link.png"
                                            alt="" title="">Click Here</a> to check out the over 100 built in code snippets.</li>
                                </ul>
                            </div>
                            <!-- end second one_fourth_column -->
                            <div class="one_fourth">
                                <h3>
                                    Follow Us</h3>
                                <ul class="social_icons">
                                    <li><a href="#" class="rss">rss</a></li>
                                    <li><a href="http://www.twitter.com/truethemes" class="twitter">Twitter</a></li>
                                    <li><a href="http://www.facebook.com/truethemes" class="facebook">Facebook</a></li>
                                    <li><a href="#" class="flickr">Flickr</a></li>
                                    <li><a href="#" class="youtube">YouTube</a></li>
                                    <li><a href="#" class="linkedin">LinkedIn</a></li>
                                    <li><a href="#" class="foursquare">FourSquare</a></li>
                                    <li><a href="#" class="delicious">Delicious</a></li>
                                    <li><a href="#" class="digg">Digg</a></li>
                                    <li><a href="#" class="google">Google +</a></li>
                                    <!-- <li><a href="#" class="email">Email</a></li> -->
                                </ul>
                            </div>
                            <!-- end third one_fourth_column -->
                            <div class="one_fourth_last">
                                <h3>
                                    Join our Crew</h3>
                                <div id="mc_signup">
                                    <form method="post" action="http://truethemes.us2.list-manage1.com/subscribe/post?u=e2deed44e98de9950b14e7fb3&amp;id=47d7d9240b"
                                    id="mc_signup_form">
                                    <p>
                                        <input type="hidden" id="mc_submit_type" name="mc_submit_type" value="html">
                                        <input type="hidden" name="mcsf_action" value="mc_submit_signup_form">
                                        <input type="hidden" id="_mc_submit_signup_form_nonce" name="_mc_submit_signup_form_nonce"
                                            value="93e0dda974">
                                        <label for="mce-EMAIL" class="mc_var_label">
                                            Email Address:</label>
                                        <br>
                                        <input type="text" size="18" value="" name="EMAIL" id="mce-EMAIL" class="mc_input"></p>
                                    <p>
                                        <br>
                                        <input type="submit" name="mc_signup_submit" id="mc_signup_submit" value="Subscribe"
                                            class="button"></p>
                                    </form>
                                </div>
                                <!-- end mc_signup -->
                            </div>
                            <!-- end fourth one_fourth_column -->
                            <!-- ***************** - END Footer Content - ***************** -->
                        </div>
                        <!-- footer-holder -->
                    </div>
                    <!-- end footer-wrapper -->
                </div>
                <!-- end footer-area -->
            </div>
            <!-- end footer -->
            <!-- /***************** - END Top Footer Area - ***************** -->
            <!-- /***************** - Bottom Footer - ***************** -->
            <div id="footer_bottom">
                <div class="info">
                    <div id="foot_left">
                        <p>
                            Copyright © 2011 Your Company Name. All rights reserved.</p>
                    </div>
                    <!-- end foot_left -->
                    <div id="foot_right">
                        <div class="top-footer">
                            <a href="#" class="link-top">top</a></div>
                        <ul>
                            <li><a href="index-jquery-1.html">Home</a></li>
                            <li><a href="template-sitemap.html">Sitemap</a></li>
                            <li><a href="template-contact-iphone.html">Contact</a></li>
                            <li><a href="template-blog.html">Blog</a></li>
                            <li><a href="http://themeforest.net/item/karma-clean-and-modern-website-template/234990">
                                Purchase</a></li>
                        </ul>
                    </div>
                    <!-- end foot_right -->
                </div>
                <!-- end info -->
            </div>
            <!-- end footer_bottom -->
            <!-- /***************** - END Bottom Footer - ***************** -->
        </div>
    </div>
    </form>
</body>
</html>
