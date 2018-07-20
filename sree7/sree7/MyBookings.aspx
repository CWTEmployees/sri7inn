<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyBookings.aspx.cs" Inherits="sree7.MyBookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122465525-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-122465525-1');
    </script>
    <meta charset="UTF-8" />
    <link runat="server" rel="sortcuticon" href="public/img/favicon.ico" type="image/x-icon"  />
    <link runat="server" rel="icon" href="public/img/favicon.ico" type="image/icon" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>My Bookings</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="p:domain_verify" content="9d8c3352c5da787314c8c18e6195b0f6" />
    <meta http-equiv="Content-Language" content="en" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="dns-prefetch" href="//static.fabhotels.com" />
    <link rel="dns-prefetch" href="//pimg.fabhotels.com" />
    <link rel="dns-prefetch" href="//maps.googleapis.com" />
    <link rel="dns-prefetch" href="//www.googleadservices.com" />
    <link rel="dns-prefetch" href="//www.googletagmanager.com" />
    <link rel="dns-prefetch" href="//static.criteo.com" />
    <link rel="dns-prefetch" href="//sslwidget.criteo.com" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" />
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
    <!--fonts-->
    <link href="//fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Federo" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="fonts/flaticon.css" />
    <script src="Scripts/jquery-1.6.4.js"></script>
    <script src="Scripts/toastr.min.js"></script>
    <script src="Scripts/toastr.js"></script>
    <link href="css/Toster.css" rel="stylesheet" />
    <link href="css/common.css" rel="stylesheet" />
    <link rel="dns-prefetch" href="//gum.criteo.com" />
    <link rel="dns-prefetch" href="//dis.as.criteo.com" />
    <link rel="dns-prefetch" href="//connect.facebook.net" />
    <link rel="dns-prefetch" href="//static.ads-twitter.com" />
    <link rel="dns-prefetch" href="//www.google-analytics.com" />
    <link rel="dns-prefetch" href="//s3.amazonaws.com" />
    <link rel="dns-prefetch" href="//csi.gstatic.com" />
    <link rel="dns-prefetch" href="//wzrkt.com" />
    <link rel="dns-prefetch" href="//d2r1yp2w7bby2u.cloudfront.net" />
    <link rel="dns-prefetch" href="//static.clevertap.com" />
    <link href="https://plus.google.com/+FabHotelsGurgaon/about" rel="publisher" />
    <link href="https://plus.google.com/+Fabhotels" rel="publisher" />
    <meta name="msvalidate.01" content="3F13EC879B9EF5A22B386AC2FB4995AC" />
    <link rel="stylesheet" href="https://static.fabhotels.com/css/prodstatic_v17.css.gz" type="text/css" />
    <link href="css/common.css" rel="stylesheet" />
    <meta name="viewport" content="width=1024" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="p:domain_verify" content="9d8c3352c5da787314c8c18e6195b0f6" />
    <meta name="google-site-verification" content="Re0NXuT5Xg13oJcHIuifuKF9B_QW7EqFaNgnFyfo1Uc" />
    <meta name="google-site-verification" content="4c-8IjPsZKyMJlIQT9Lt2pP5LdLx80rEYOhN4h9M3Pg" />
    <meta name="google-site-verification" content="GpGoqdlXPwCVkPp1ER4PRai05Mt6ngCBybEopQrL4iI" />
    <meta name="msvalidate.01" content="3F13EC879B9EF5A22B386AC2FB4995AC" />
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script async="" src="//static.ads-twitter.com/uwt.js"></script>
    <script type="text/javascript" async="" src="//www.googleadservices.com/pagead/conversion_async.js"></script>
    <script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-WSWPDG"></script>
    <script async="" src="//www.google-analytics.com/analytics.js"></script>
    <script id="facebook-jssdk" src="https://connect.facebook.net/en_US/sdk.js"></script>
    <link rel="manifest" href="/manifest.json" />
    <script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/955705424/?random=1527759475072&amp;cv=9&amp;fst=1527759475072&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=820&amp;u_w=1024&amp;u_ah=781&amp;u_aw=1024&amp;u_cd=24&amp;u_his=13&amp;u_tz=330&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;data=hrental_id%3D%3Bhrental_pagetype%3Dprofile%3Bhrental_totalvalue%3D&amp;gtm=G5o&amp;sendb=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.fabhotels.com%2Fuser%2Fprofile&amp;ref=https%3A%2F%2Fwww.fabhotels.com%2Fuser%2Fbookings&amp;tiba=User%20Profile&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
</head>
<body>
    <style type="text/css">
        .dropbutton {
            background-color: #0f2453;
            color: white;
            padding: 1px;
            font-size: 15px;
            border: hidden;
        }

        .dropdownhov {
            position: relative;
            display: inline-block;
            margin-top: 8px;
        }

        .dropdownhov-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            margin-left: -40px !important;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 999;
        }

            .dropdownhov-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdownhov-content a:hover {
                    background-color: #ddd;
                }

        .dropdownhov:hover .dropdownhov-content {
            display: block;
        }

        .dropdownhov:hover .dropbutton {
            background-color: #0f2453;
        }
    </style>


    <form id="form1" runat="server">
        <div class="containernew">
            <header class="" style="padding: 24px 0 115px 0; background: linear-gradient(to bottom, #0f2453, #0f2453)">
                <div class="w3_navigation">
                    <div class="container">
                        <nav class="navbar navbar-default">
                            <div class="navbar-header navbar-left">
                                <a href="Home.aspx">
                                    <img src="public/img/final_logo3.png" width="150" height="50" />
                                    <%--<h1><a class="navbar-brand" href="Home.aspx">Sri7 <span>Inn</span><p class="logo_w3l_agile_caption">Your Dreamy Resort</p></a></h1>--%> 
                                </a>
                            </div>
                            <div class="dropdownhov navbar-right">
                                <button class="dropbutton">
                                    <asp:Label ID="lblUser" runat="server"></asp:Label>
                                </button>
                                <div class="dropdownhov-content">
                                    <a href="MyBookings.aspx">My Bookings</a>
                                    <a href="UserProfile.aspx">Profile</a>
                                    <a href="Home.aspx">Logout</a>
                                </div>
                            </div>
                        </nav>

                    </div>
                </div>
            </header>

            <div class="content static-container booking-page">
                <div class="container clearfix" style="max-width: 1076px">
                    <aside class="sidebar">
                        <nav class="tabs">
                            <ul class="clearfix sidebar_tabs">
                                <li><a href="MyBookings.aspx" class="active-tab sidebar_inner_tab bookings_tab">Bookings </a></li>
                                <li><a href="UserProfile.aspx" class="sidebar_inner_tab">Profile </a></li>
                            </ul>
                        </nav>
                    </aside>
                    <div class="booking-container bookings_parent_container">
                        <div class="booking-tab">
                            <ul class="clearfix tabs_container" data-url="/user/bookingTab">
                                <li><a data-tab="all" class="active">All Bookings </a></li>
                            </ul>
                        </div>
                        <div class="booking-content bookings_container">
                            <div class="no-booking-found-wrapper">
                                <asp:Label ID="lblBooking" runat="server" Text="Enter reservation Id" ForeColor="#0f2453"></asp:Label>
                                <asp:TextBox ID="txtBookingId" runat="server" CssClass="contact" Style="color: #3898D2"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv" ControlToValidate="txtBookingId" runat="server" ErrorMessage="Enter Booking Id" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                                <asp:Button ID="btnId" runat="server" Text="Get" Width="50px" Style="color: #3898D2" OnClick="btnId_Click" />
                                <br />
                                <br />
                                <br />

                                <asp:GridView ID="gvBooking" runat="server" CellPadding="4" CssClass="Gridview"
                                    DataSourceID=""
                                    OnSelectedIndexChanging="gvBooking_SelectedIndexChanging"
                                    AutoGenerateColumns="False"
                                    OnSelectedIndexChanged="gvBooking_SelectedIndexChanged"
                                    OnRowDeleting="gvBooking_RowDeleting" BackColor="#F7F7F7"
                                    BorderColor="#CCCCCC" Style="color: #0f2453"
                                    BorderWidth="1px" EmptyDataText="NO RECORDS FOUND" DataKeyNames="Reservation_Id" Height="123px" Width="796px">

                                    <EmptyDataRowStyle BackColor="#F7F7F7" BorderColor="Red" />
                                    <Columns>
                                        <asp:BoundField DataField="Reservation_Id" HeaderText="Reservation_Id" ReadOnly="True" SortExpression="Reservation_Id" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                                        <asp:BoundField DataField="Rooms" HeaderText="Rooms" SortExpression="Rooms" />
                                        <asp:BoundField DataField="Check_In" HeaderText="Check_In" SortExpression="Check_In" DataFormatString="{0:d}" HtmlEncode="false" />
                                        <asp:BoundField DataField="Check_Out" HeaderText="Check_Out" SortExpression="Check_Out" DataFormatString="{0:d}" HtmlEncode="false" />
                                        <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                                        <asp:BoundField DataField="BookStatus" HeaderText="BookStatus" SortExpression="BookStatus" />
                                        <asp:TemplateField>
                                            <ItemStyle Width="50px" />
                                            <ItemTemplate>
                                                <asp:LinkButton CssClass="delete" CausesValidation="false" ID="lnkDelete"
                                                    runat="server"
                                                    CommandName="Delete"
                                                    Text="Cancel"
                                                    OnClientClick="javascript:return confirm('Do you really want to \nCancel this Booking?');">
                                                </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <HeaderStyle BackColor="#DAEDFA" />
                                    <AlternatingRowStyle BackColor="#E6F1F9" BorderStyle="None" />
                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sree7ConnectionString7 %>" SelectCommand="SELECT [Reservation_Id], [name], [email], [RoomType], [Rooms], [Check_In], [Check_Out], [contact], [BookStatus] FROM [TblReservation]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="login_overlay login-overlay"></div>
            <footer class="footer " style="display: block">

                <div class="footer-bottom">
                    <div class="main-page">

                        <div class="footer-advertise clearfix">
                            <div class="security-logo">
                                <div class="text">Secured by:</div>
                                <div class="medium-logo geotrust-icon"></div>
                            </div>
                            <div class="download-logo">
                                <div class="text">Download the App:</div>
                                <a class="google-play-icon" target="_blank" href="https://play.google.com/store/apps/details?id=com.fabhotels.guests&amp;referrer=utm_source%3DCRM%26utm_medium%3Demail%26utm_campaign%3Dtransactional" title="">
                                    <div class="medium-logo google-play-icon">
                                    </div>
                                </a>
                            </div>
                            <div class="payment-type-logo">
                                <div class="text">We accept:</div>
                                <div class="small-logo">
                                    <ul>
                                        <li><span class="payment-icon visa_icon"></span></li>
                                        <li><span class="payment-icon master_icon"></span></li>
                                        <li><span class="payment-icon american_express_icon"></span></li>
                                        <li><span class="payment-icon paytm_icon"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="copyright">
                            <div class="copy">
                                <p>© 2017 <a href="http://sree7convention.com/">Sree7Conventions</a> . All Rights Reserved | Design by <a href="http:www.charanwebtechnologies.com/">CharanWebTechnologies</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </form>

</body>
</html>
