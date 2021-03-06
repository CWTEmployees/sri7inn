﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="sree7.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sree7 INN</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
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
    <!--//fonts-->
</head>
<body>
    <form runat="server" id="frn2">
        <div class="banner-top">
            <div class="social-bnr-agileits">
                <ul class="social-icons3">
                    <li><a href="#" class="fa fa-facebook icon-border facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter icon-border twitter"></a></li>
                    <li><a href="#" class="fa fa-google-plus icon-border googleplus"></a></li>
                    <li><a href="#" class="fa fa-rss icon-border rss"></a></li>
                </ul>
            </div>
            <div class="contact-bnr-w3-agile">
                <ul>
                    <li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">ceo@sree7convention.com</a></li>
                    <li><i class="fa fa-phone" aria-hidden="true"></i>+91 944 024 8666</li>
                    <li class="s-bar">
                        <div class="search">
                            <input class="search_box" type="checkbox" id="search_box" />
                            <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
                            <div class="search_form">
                                <%--<form action="#" method="post">--%>
                                <input type="search" name="Search" placeholder="" />
                                <input type="submit" value="Search" />
                                <%--</form>--%>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="w3_navigation">
            <div class="container">
                <nav class="navbar navbar-default">
                    <div class="navbar-header navbar-left">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="index.html">
                            <%--<img src="img/final_logo2.png" width="150" height="50" /></a>--%>
                         <h1><a class="navbar-brand" href="Home.aspx">Sri7 <span>Inn</span><p class="logo_w3l_agile_caption">Your Dreamy Resort</p></a></h1> 
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                        <nav class="menu menu--iris">
                            <ul class="nav navbar-nav menu__list">
                                <li class="menu__item menu"><a href="index.html" class="menu__link scroll">Home</a></li>
                                <li class="menu__item"><a href="#about" class="menu__link scroll">About</a></li>
                                <!-- <li class="menu__item"><a href="#team" class="menu__link scroll">Team</a></li> -->
                                <li class="menu__item"><a href="#gallery" class="menu__link scroll">Gallery</a></li>
                                <li class="menu__item"><a href="#rooms" class="menu__link scroll">Rooms</a></li>
                                <li class="menu__item"><a href="#contact" class="menu__link scroll">Contact Us</a></li>
                                <li class="menu__item">
                                    <%if (Session["user"] == null)
                                      { %>
                                    <a href="Login.aspx">
                                        <p>Login</p>
                                    </a>
                                    <% }
                                      else
                                      { %>

                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <asp:Label ID="lblUser" runat="server"></asp:Label>
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="MyBookings.aspx">My Bookings</a>
                                            <a href="UserProfile.aspx">Profile</a>
                                            <a href="#"><asp:Button ID="btnlgt" runat="server" Text="Logout" OnClick="btnlgt_Click"  /></a>
                                        </div>
                                    </div>
                                    <%} %>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </nav>

            </div>
        </div>
        <!-- //header -->
        <!-- banner -->
        <div id="home" class="w3ls-banner">
            <!-- banner-text -->
            <div class="slider">
                <div class="callbacks_container">
                    <ul class="rslides callbacks callbacks1" id="slider4">
                        <li>
                            <div class="w3layouts-banner-top">

                                <div class="container">
                                    <div class="agileits-banner-info">
                                        <h4>Sree7 INN</h4>
                                        <h3>We know what you love</h3>
                                        <p>Welcome to our Sree7 Conventions</p>
                                        <div class="agileits_w3layouts_more menu__item">
                                            <a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="w3layouts-banner-top w3layouts-banner-top1">
                                <div class="container">
                                    <div class="agileits-banner-info">
                                        <h4>Sree7 INN</h4>
                                        <h3>Stay with friends & families</h3>
                                        <p>Come & enjoy precious moment with us</p>
                                        <div class="agileits_w3layouts_more menu__item">
                                            <a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="w3layouts-banner-top w3layouts-banner-top2">
                                <div class="container">
                                    <div class="agileits-banner-info">
                                        <h4>Sree7 INN</h4>
                                        <h3>want luxurious vacation?</h3>
                                        <p>Get accommodation today</p>
                                        <div class="agileits_w3layouts_more menu__item">
                                            <a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="w3layouts-banner-top w3layouts-banner-top3">
                                <div class="container">
                                    <div class="agileits-banner-info">
                                        <h4>Sree7 INN</h4>
                                        <h3>want luxurious vacation?</h3>
                                        <p>Get accommodation today</p>
                                        <div class="agileits_w3layouts_more menu__item">
                                            <a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="w3layouts-banner-top w3layouts-banner-top4">
                                <div class="container">
                                    <div class="agileits-banner-info">
                                        <h4>Sree7 INN</h4>
                                        <h3>want luxurious vacation?</h3>
                                        <p>Get accommodation today</p>
                                        <div class="agileits_w3layouts_more menu__item">
                                            <a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <!--banner Slider starts Here-->
            </div>
            <div class="thim-click-to-bottom">
                <a href="#about" class="scroll">
                    <i class="fa fa-long-arrow-down" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <!-- //banner -->
        <!--//Header-->
        <!-- //Modal1 -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
            <!-- Modal1 -->
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4>Sree7 <span>Inn</span></h4>
                        <img src="images/1.jpg" alt=" " class="img-responsive" />
                        <h5>We know what you love</h5>
                        <p>Providing guests unique and enchanting views from their rooms with its exceptional amenities, makes Star Hotel one of bests in its kind.Try our food menu, awesome services and friendly staff while you are here.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //Modal1 -->
        <div id="availability-agileits">
            <div class="col-md-3 book-form-left-w3layouts">
                <h2>CHECK AVAILABILITY</h2>
            </div>
            <div class="col-md-9 book-form errorMessages">
                <%--<form action="#" method="post">--%>
                <%--<div class="fields-w3ls form-left-agileits-w3layouts ">
                    <p>Room Type</p>
                    <asp:DropDownList ID="DDL" runat="server" CssClass="form-control">
                        <asp:ListItem>Select a Room</asp:ListItem>
                        <asp:ListItem>Suit Room</asp:ListItem>
                        <asp:ListItem>Delux Room</asp:ListItem>

                    </asp:DropDownList>
                </div>--%>
                <asp:ScriptManager ID="sc" runat="server"></asp:ScriptManager>
                <div class="fields-w3ls form-date-w3-agileits">
                    <p>Checkin Date</p>
                    <asp:TextBox ID="checkin" runat="server" value="Select Date"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="checkin" Format="yyyy-MM-dd" />
                    <%--<input id="datepicker1" name="Text" type="text" value="Select Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">--%>
                </div>
                <div>
                    <asp:Label ID="lblroom" runat="server"></asp:Label>
                </div>
                <div class="fields-w3ls form-date-w3-agileits">
                    <p>Checkout Date</p>
                    <asp:TextBox ID="checkout" runat="server" value="Select Date"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="checkout" Format="yyyy-MM-dd" />
                    <%--<input id="datepicker2" name="Text" type="text" value="Select Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">--%>
                </div>

                <div class="fields-w3ls form-left-agileits-w3layouts ">
                    <p>Number Of Room</p>
                    <asp:DropDownList ID="DDlRoom" runat="server" CssClass="form-control">
                        <asp:ListItem>Select a Room</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Label ID="days" runat="server"></asp:Label>
                <div class="">
                    <asp:Button ID="submit" runat="server" Text="Check Availability" OnClick="submit_Click" OnClientClick="javascript:return RoomCheck()" />
                    <%--<input type="submit" value="Check Availability"/>--%>
                </div>
                <%-- </form>--%>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- banner-bottom -->
        <div class="banner-bottom">
            <div class="container">
                <div class="agileits_banner_bottom">
                    <h3><span>Experience a good stay, enjoy fantastic offers</span> Find our friendly welcoming reception</h3>
                </div>
                <h3 class="title-w3-agileits title-black-wthree">Facilities</h3>
                <div class="w3ls_banner_bottom_grids">
                    <ul class="cbp-ig-grid">
                        <li>
                            <div class="w3_grid_effect">
                                <span class="cbp-ig-icon flaticon-security-camera"></span>
                                <h4 class="cbp-ig-title">24X7 Security</h4>
                                <span class="cbp-ig-category">Sree7 Inn</span>
                            </div>
                        </li>
                        <li>
                            <div class="w3_grid_effect">
                                <span class="cbp-ig-icon flaticon-newspaper"></span>
                                <h4 class="cbp-ig-title">news paper</h4>
                                <span class="cbp-ig-category">Sree7 Inn</span>

                            </div>
                        </li>
                        <li>
                            <div class="w3_grid_effect">
                                <span class="cbp-ig-icon flaticon-server"></span>
                                <h4 class="cbp-ig-title">100% power backup</h4>
                                <span class="cbp-ig-category">Sree7 Inn</span>
                            </div>
                        </li>
                        <li>
                            <div class="w3_grid_effect">
                                <span class="cbp-ig-icon w3_ticket"></span>
                                <h4 class="cbp-ig-title">WIFI COVERAGE</h4>
                                <span class="cbp-ig-category">Sree7 Inn</span>
                            </div>
                        </li>
                        <li>
                            <div class="w3_grid_effect">
                                <span class="cbp-ig-icon flaticon-air-conditioner"></span>
                                <h4 class="cbp-ig-title">Air Conditioner</h4>
                                <span class="cbp-ig-category">Sree7 Inn</span>
                            </div>
                        </li>


                    </ul>
                </div>
            </div>
        </div>
        <!-- //banner-bottom -->
        <!-- /about -->
        <div class="about-wthree" id="about">
            <div class="container">
                <div class="ab-w3l-spa">
                    <h3 class="title-w3-agileits title-black-wthree">About Our Sree7 Inn</h3>
                    <p class="about-para-w3ls">
                        The Legacy,
						    Our passion is to serve you extraordinary service. and move forward to one step and we are Introducing you to our Lavish convention hall. Sree7 conventions constructed on 2 acres with 2200 guests capacity and 200 + Car Parking facility.
						<!-- 	To meet your need with splendid service of Sree7 INN.
							Sree7 Inn is one of the most luxurious 3-star convention Halls & hotels in Anantapur. With splendid architecture and unparalleled service, it’s not a keeper, however, a journey that unfolds into rare and intimate experiences. fancy gorgeous art within the building, luxurious suites, connoisseur restaurants, and Convention Halls.
							Let's Plan your occution, to make this memorable -->
                    </p>
                    <img src="images/about.jpg" class="img-responsive" alt="Hair Salon" />
                    <div class="w3l-slider-img">
                        <img src="images/a1.jpg" class="img-responsive" alt="Hair Salon" />
                    </div>
                    <div class="w3ls-info-about">
                        <h4>You'll love all the amenities we offer!</h4>
                        <p>Lorem ipsum dolor sit amet, ut magna aliqua. </p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //about -->




        <!--sevices-->
        <div class="advantages">
            <div class="container">
                <div class="advantages-main">
                    <h3 class="title-w3-agileits">Our Services</h3>

                    <div class="advantage-bottom">
                        <div class="col-md-6 advantage-grid left-w3ls wow bounceInLeft" data-wow-delay="0.3s">
                            <div class="advantage-block ">
                                <i class="fa fa-credit-card" aria-hidden="true"></i>
                                <h4>Stay First, Pay After! </h4>
                                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates.</p>
                                <p><i class="fa fa-check" aria-hidden="true"></i>Decorated room, proper air conditioned</p>
                                <p><i class="fa fa-check" aria-hidden="true"></i>Private balcony</p>

                            </div>
                        </div>
                        <div class="col-md-6 advantage-grid right-w3ls wow zoomIn" data-wow-delay="0.3s">
                            <div class="advantage-block">
                                <i class="fa fa-clock-o" aria-hidden="true"></i>
                                <h4>24 Hour Restaurant</h4>
                                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates.</p>
                                <p><i class="fa fa-check" aria-hidden="true"></i>24 hours room service</p>
                                <p><i class="fa fa-check" aria-hidden="true"></i>24-hour Concierge service</p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!--//sevices-->
        <!-- team -->
        <!-- <div class="team" id="team">
	<div class="container">
			<h3 class="title-w3-agileits title-black-wthree">Meet Our Team</h3>
			<div id="horizontalTab">
					<ul class="resp-tabs-list">
					<li>
						<img src="images/teams1.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="images/teams2.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="images/teams3.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="images/teams4.jpg" alt=" " class="img-responsive" />
					</li>
					</ul>
					<div class="resp-tabs-container">
					<div class="tab1">
						<div class="col-md-6 team-img-w3-agile">
						</div>
						<div class="col-md-6 team-Info-agileits">
							<h4>Lucas Jimenez</h4>
							<span>Manager</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.Lorem ipsum dolor .</p>
						<div class="social-bnr-agileits footer-icons-agileinfo">
							<ul class="social-icons3">
								<li><a href="#" class="fa fa-facebook icon-border facebook"> </a></li>
								<li><a href="#" class="fa fa-twitter icon-border twitter"> </a></li>
								<li><a href="#" class="fa fa-google-plus icon-border googleplus"> </a></li> 
								<li><a href="#" class="fa fa-rss icon-border rss"> </a></li>
							</ul>
						</div>							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="tab2">
					<div class="col-md-6 team-img-w3-agile">
						</div>
						<div class="col-md-6 team-Info-agileits">
							<h4>Sarah Connor</h4>
							<span>Receptionist</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.Lorem ipsum dolor .</p>	
						<div class="social-bnr-agileits footer-icons-agileinfo">
							<ul class="social-icons3">
								<li><a href="#" class="fa fa-facebook icon-border facebook"> </a></li>
								<li><a href="#" class="fa fa-twitter icon-border twitter"> </a></li>
								<li><a href="#" class="fa fa-google-plus icon-border googleplus"> </a></li> 
								<li><a href="#" class="fa fa-rss icon-border rss"> </a></li>
							</ul>
						</div>							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="tab3">
						<div class="col-md-6 team-img-w3-agile">
						</div>
						<div class="col-md-6 team-Info-agileits">
							<h4>Ivan Simpson</h4>
							<span>Manager</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.Lorem ipsum dolor .</p>
						<div class="social-bnr-agileits footer-icons-agileinfo">
							<ul class="social-icons3">
								<li><a href="#" class="fa fa-facebook icon-border facebook"> </a></li>
								<li><a href="#" class="fa fa-twitter icon-border twitter"> </a></li>
								<li><a href="#" class="fa fa-google-plus icon-border googleplus"> </a></li> 
								<li><a href="#" class="fa fa-rss icon-border rss"> </a></li>
							</ul>
						</div>							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="tab4">
					<div class="col-md-6 team-img-w3-agile">
						</div>
						<div class="col-md-6 team-Info-agileits">
							<h4>Marc Gutierrez</h4>
							<span>Receptionist</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.Lorem ipsum dolor .</p>
						<div class="social-bnr-agileits footer-icons-agileinfo">
							<ul class="social-icons3">
								<li><a href="#" class="fa fa-facebook icon-border facebook"> </a></li>
								<li><a href="#" class="fa fa-twitter icon-border twitter"> </a></li>
								<li><a href="#" class="fa fa-google-plus icon-border googleplus"> </a></li> 
								<li><a href="#" class="fa fa-rss icon-border rss"> </a></li>
							</ul>
						</div>							
						</div>
						<div class="clearfix"> </div>
					</div>
					</div>
			</div>
	</div>
</div> -->

        <br />
        <!-- //team -->
        <!-- Gallery -->
        <section class="portfolio-w3ls" id="gallery">
            <h3 class="title-w3-agileits title-black-wthree">Our Gallery</h3>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="img/convention.jpg" class="swipebox">
                    <img src="img/convention.jpg" class="img-responsive" alt="/" />

                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="images/g2.jpg" class="swipebox">
                    <img src="images/g2.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="images/g3.jpg" class="swipebox">
                    <img src="images/g3.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="img/reception.jpg" class="swipebox">
                    <img src="img/reception.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="img/twin_gimg.jpg" class="swipebox">
                    <img src="img/twin_gimg.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="images/g6.jpg" class="swipebox">
                    <img src="images/g6.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="img/g7.jpg" class="swipebox">
                    <img src="img/g7.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="images/g6.jpg" class="swipebox">
                    <img src="images/g8.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="images/g9.jpg" class="swipebox">
                    <img src="images/g9.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="images/g10.jpg" class="swipebox">
                    <img src="images/g10.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="images/g4.jpg" class="swipebox">
                    <img src="images/g4.jpg" class="img-responsive" alt="/" />
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="col-md-3 gallery-grid gallery1">
                <a href="images/g2.jpg" class="swipebox">
                    <img src="images/g2.jpg" class="img-responsive" alt="/">
                    <div class="textbox">
                        <h4>Sree7 Inn</h4>
                        <p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
                    </div>
                </a>
            </div>
            <div class="clearfix"></div>
        </section>
        <!-- //gallery -->
        <!-- rooms & rates -->
        <div class="plans-section" id="rooms">
            <div class="container">
                <h3 class="title-w3-agileits title-black-wthree">Rooms And Rates</h3>
                <div class="priceing-table-main">
                    <div class="col-md-6 price-grid">
                        <div class="price-block agile">
                            <div class="price-gd-top">
                                <img src="img/dulexeroom.jpg" alt=" " class="img-responsive" />
                                <h4>Suite Room</h4>
                            </div>
                            <div class="price-gd-bottom">
                                <div class="price-list">
                                    <ul>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>

                                    </ul>
                                </div>
                                <div class="price-selet">
                                    <!-- <h3><span>$</span>320</h3>	 -->
                                    <a href="#availability-agileits" class="scroll">Book Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<div class="col-md-3 price-grid ">
                        <div class="price-block agile">
                            <div class="price-gd-top">
                                <img src="img/twin_g.jpg" alt=" " class="img-responsive" />
                                <h4>Twin Room</h4>
                            </div>
                            <div class="price-gd-bottom">
                                <div class="price-list">
                                    <ul>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    </ul>
                                </div>
                                <div class="price-selet">
                                    <!-- <h3><span>$</span>220</h3> -->
                                    <a href="#availability-agileits" class="scroll">Book Now</a>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <div class="col-md-6 price-grid lost">
                        <div class="price-block agile">
                            <div class="price-gd-top">
                                <img src="img/doubleroom.jpg" alt=" " class="img-responsive" />
                                <h4>Deluxe Room</h4>
                            </div>
                            <div class="price-gd-bottom">
                                <div class="price-list">
                                    <ul>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    </ul>
                                </div>
                                <div class="price-selet">
                                    <!-- <h3><span>$</span>180</h3> -->
                                    <a href="#availability-agileits" class="scroll">Book Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                  <%--  <div class="col-md-6 price-grid wthree lost">
                        <div class="price-block agile">
                            <div class="price-gd-top ">
                                <img src="img/singleroom.jpg" alt=" " class="img-responsive" />
                                <h4>Single Room</h4>
                            </div>
                            <div class="price-gd-bottom">
                                <div class="price-list">
                                    <ul>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                    </ul>
                                </div>
                                <div class="price-selet">
                                    <!-- <h3><span>$</span> 150</h3> -->
                                    <a href="#availability-agileits" class="scroll">Book Now</a>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--// rooms & rates -->
        <!-- visitors -->
       <%-- <div class="w3l-visitors-agile">
            <div class="container">
                <h3 class="title-w3-agileits title-black-wthree">Our UpComming visitors</h3>
            </div>
            <div class="w3layouts_work_grids">
                <section class="slider">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <div class="w3layouts_work_grid_left">
                                    <img src="images/5.jpg" alt=" " class="img-responsive" />
                                    <div class="w3layouts_work_grid_left_pos">
                                        <img src="img/apj.jpg" alt=" " class="img-responsive" />
                                    </div>
                                </div>
                                <div class="w3layouts_work_grid_right">
                                    <h4>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        Worth to comming
                                    </h4>
                                    <!-- <p>Sed tempus vestibulum lacus blandit faucibus. 
									Nunc imperdiet, diam nec rhoncus ullamcorper, nisl nulla suscipit ligula, 
									at imperdiet urna. </p> -->
                                    <h5>APJ Abdul Kalam</h5>
                                    <p>Dehli</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="w3layouts_work_grid_left">
                                    <img src="images/5.jpg" alt=" " class="img-responsive" />
                                    <div class="w3layouts_work_grid_left_pos">
                                        <img src="img/dhoni.jpg" alt=" " class="img-responsive" />
                                    </div>
                                </div>
                                <div class="w3layouts_work_grid_right">
                                    <h4>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        Worth to comming
                                    </h4>
                                    <!-- <p>Sed tempus vestibulum lacus blandit faucibus. 
									Nunc imperdiet, diam nec rhoncus ullamcorper, nisl nulla suscipit ligula, 
									at imperdiet urna. </p> -->
                                    <h5>MS Dhoni</h5>
                                    <p>jharkhand</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="w3layouts_work_grid_left">
                                    <img src="images/5.jpg" alt=" " class="img-responsive" />
                                    <div class="w3layouts_work_grid_left_pos">
                                        <img src="img/kcr.png" alt=" " class="img-responsive" />
                                    </div>
                                </div>
                                <div class="w3layouts_work_grid_right">
                                    <h4>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        Worth to comming
                                    </h4>
                                    <!-- <p>Sed tempus vestibulum lacus blandit faucibus. 
									Nunc imperdiet, diam nec rhoncus ullamcorper, nisl nulla suscipit ligula, 
									at imperdiet urna. </p> -->
                                    <h5>K Chandra shaker Roa</h5>
                                    <p>Telangana</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="w3layouts_work_grid_left">
                                    <img src="images/5.jpg" alt=" " class="img-responsive" />
                                    <div class="w3layouts_work_grid_left_pos">
                                        <img src="img/anuska.jpg" alt=" " class="img-responsive" />
                                    </div>
                                </div>
                                <div class="w3layouts_work_grid_right">
                                    <h4>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        Worth to comming
                                    </h4>
                                    <!-- <p>Sed tempus vestibulum lacus blandit faucibus. 
									Nunc imperdiet, diam nec rhoncus ullamcorper, nisl nulla suscipit ligula, 
									at imperdiet urna. </p> -->
                                    <h5>Anushka</h5>
                                    <p>Andhra Pradesh</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
        </div>--%>
        <!-- visitors -->
        <!--footer-->
        <!-- contact -->
        <section class="contact-w3ls" id="contact">
            <div class="container">
                <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2" data-aos="flip-left">
                    <div class="contact-agileits">
                        <h4>Contact Us</h4>
                        <p class="contact-agile2">Sign Up For Our News Letters</p>

                        <%--<form action="#" method="post" name="sentMessage" id="contactForm">--%>

                        <div class="control-group form-group">
                            <div class="controls">
                                <label class="contact-p1">Full Name:</label>
                                <%-- <input type="text" class="form-control" name="name" id="name" required data-validation-required-message="Please enter your name.">--%>
                                <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="rfvname" runat="server" Display="Dynamic" ErrorMessage="Please Enter Name" ControlToValidate="name" ValidationGroup="contact" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label class="contact-p1">Phone Number:</label>
                                <%-- <input type="tel" class="form-control" name="phone" id="phone" required data-validation-required-message="Please enter your phone number.">--%>
                                <asp:TextBox ID="phone" runat="server" class="form-control" placeholder="Mobile No"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="rfvphone" runat="server" Display="Dynamic" ErrorMessage="Please Enter Phone No" ControlToValidate="phone" ValidationGroup="contact" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revnum" runat="server" Display="Dynamic" ErrorMessage="Enter Valid Phone Number" ControlToValidate="phone" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label class="contact-p1">Email Address:</label>
                                <%--  <input type="email" class="form-control" name="email" id="email" required data-validation-required-message="Please enter your email address.">--%>
                                <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="rfvemail" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email Id" ControlToValidate="email" ValidationGroup="contact" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationGroup="contact"></asp:RegularExpressionValidator>--%>
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <%--<asp:ValidationSummary ID="VS" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="contact" />--%>
                        <%--<button type="submit" class="btn btn-primary">Send</button>	--%>
                        <asp:Button ID="btncontact" runat="server" Text="Send" CssClass="form-control" OnClick="btncontact_Click1" OnClientClick="javascript:return userValid()" />


                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile1" data-aos="flip-right">
                    <h4>Connect With Us</h4>
                    <p class="contact-agile1"><strong>Phone :</strong> +916301796768, +917702513986, +919440248666</p>
                    <p class="contact-agile1"><strong>Email :</strong> <a href="ceo@sree7convention.com">ceo@sree7convention.com</a></p>
                    <p class="contact-agile1">
                        <strong>Address :</strong> Sree7Convention, Beside Uma Godowns, Gooty Road,Anantapur,AndhraPradesh,India-515001. 
                    </p>

                    <div class="social-bnr-agileits footer-icons-agileinfo">
                        <ul class="social-icons3">
                            <li><a href="#" class="fa fa-facebook icon-border facebook"></a></li>
                            <li><a href="#" class="fa fa-twitter icon-border twitter"></a></li>
                            <li><a href="#" class="fa fa-google-plus icon-border googleplus"></a></li>
                            <li><a href="#" class="fa fa-rss icon-border rss"></a></li>
                        </ul>
                    </div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3859.278804964221!2d77.60566771460768!3d14.696818989741283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sSree7Convention%2C+Beside+Uma+Godowns%2C+Gooty+Road%2CAnantapur%2C+AndhraPradesh%2C+India-515001!5e0!3m2!1sen!2sin!4v1524650085057" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
                </div>
                <div class="clearfix"></div>
            </div>
        </section>
        <!-- /contact -->
        <div class="copy">
            <p>© 2017 <a href="http://sree7convention.com/">Sree7Conventions</a> . All Rights Reserved | Design by <a href="http:www.charanwebtechnologies.com/">CharanWebTechnologies</a></p>
        </div>

        <!--/footer -->
        <!-- js -->
        <script src="js/sweetalert.js"></script>


        <script type="text/javascript">
            function JSalert() {
                swal("Thank You!", "Your Message Send Successfully!", "success");
            }
        </script>

        <script type="text/javascript">
            function RoomY() {
                swal("Lucky!", "Room is Available", "success");
            }
        </script>


        <script type="text/javascript">
            function RoomN() {
                swal("Sorryyy!", "Room is Not Available", "error");
            }
        </script>

        <script type="text/javascript">
            function dates() {
                swal("CheckOut Date Is Before Than CheckIn Date")
            }

        </script>


        <%--<script type="text/javascript">
            function RoomCheck() {
                if (!result == true) {
                    swal("Lucky!", "Room is Available", "success");
                }
                else {
                    swal("Sorryyy!", "Room is Not Available", "danger");
                }
            }
        </script>--%>
        <script type="text/javascript">
            function RoomCheck() {
                debugger
                var txtDDL, txtCheckIn, txtCheckOut;
                txtDDL = document.getElementById("DDL").value;
                txtCheckIn = document.getElementById("checkin").value;
                txtCheckOut = document.getElementById("checkout").value;
                txtDDlRoom = document.getElementById("DDlRoom").value;




                if (txtDDL == 'Select a Room' && txtCheckIn == 'Select Date' && txtCheckOut == 'Select Date' && txtDDlRoom == 'Number Of Rooms') {



                    toastr.error("Select All Field", "Please");
                    return false;
                }

                if (txtDDL == 'Select a Room') {
                    toastr.error("Select Room Type!", "Please!");
                    return false;
                }

                if (txtCheckIn == 'Select Date') {
                    toastr.error("Select CheckIn Date!", "Please!");
                    return false;
                }

                if (txtCheckOut == 'Select Date') {
                    toastr.error("Select CheckOut Date!", "Please!");
                    return false;
                }
                if (txtDDlRoom == 'Number Of Rooms') {
                    toastr.error("Select Number Of Room");
                }
                return true;
            }
        </script>
        <%--  <script>
             $(function () {
                 debugger
                 $('#error').click(function () {
                     // make it not dissappear
                     toastr.error("Noooo oo oo ooooo!!!", "Title", {
                         "timeOut": "0",
                         "extendedTImeout": "0"
                     });
                 });
                 $('#info').click(function () {
                     // title is optional
                     toastr.info("Info Message", "Title");
                 });
                 $('#warning').click(function () {
                     toastr.warning("Warning");
                 });
                 $('#success').click(function () {
                     toastr.success("YYEESSSSSSS");
                 });
             });

    </script>--%>



        <script type="text/javascript">
            function userValid() {

                var txtName, txtEmail, txtMobile, txtMessage, emailexp, mobexp;
                txtName = document.getElementById("name").value;
                txtEmail = document.getElementById("email").value;
                txtMobile = document.getElementById("phone").value;

                emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
                mobexp = /^\d{10}$/; //to validate Mobile no


                if (txtName == '' && txtEmail == '' && txtMobile == '') {

                    swal("Please!", "Enter All Field!", "warning");
                    return false;
                }

                if (txtName == '') {
                    swal("Please!", "Enter Your Name!", "warning");
                    return false;
                }

                if (txtEmail == '') {
                    swal("Please!", "Enter Your Email Id!", "warning");
                    return false;
                }

                if (txtMobile == '') {
                    swal("Please!", "Enter Your Mobile Number!", "warning");
                    return false;
                }

                if (txtEmail != '') {
                    if (!txtEmail.match(emailExp)) {
                        swal("Please!", "Enter Valid Email Id!", "warning");
                        return false;
                    }
                }
                if (txtMobile != '') {
                    if (!txtMobile.match(mobexp)) {
                        swal("Please!", "Enter 10 Digit Only!", "warning");
                        return false;
                    }
                }
                return true;
            }
        </script>




        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- contact form -->
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>
        <!-- /contact form -->
        <!-- Calendar -->
        <script src="js/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
            });
        </script>
        <!-- //Calendar -->
        <!-- gallery popup -->
        <link rel="stylesheet" href="css/swipebox.css" />
        <script src="js/jquery.swipebox.min.js"></script>
        <script type="text/javascript">
            jQuery(function ($) {
                $(".swipebox").swipebox();
            });
        </script>
        <!-- //gallery popup -->
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
        <!-- flexSlider -->
        <script defer src="js/jquery.flexslider.js"></script>
        <script type="text/javascript">
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
        </script>
        <!-- //flexSlider -->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider4").responsiveSlides({
                    auto: true,
                    pager: true,
                    nav: false,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
        </script>
        <!--search-bar-->
        <script src="js/main.js"></script>
        <!--//search-bar-->
        <!--tabs-->
        <script src="js/easy-responsive-tabs.js"></script>
        <script>
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true,   // 100% fit in a container
                    closed: 'accordion', // Start closed if in accordion view
                    activate: function (event) { // Callback function if tab is switched
                        var $tab = $(this);
                        var $info = $('#tabInfo');
                        var $name = $('span', $info);
                        $name.text($tab.text());
                        $info.show();
                    }
                });
                $('#verticalTab').easyResponsiveTabs({
                    type: 'vertical',
                    width: 'auto',
                    fit: true
                });
            });
        </script>
        <!--//tabs-->
        <!-- smooth scrolling -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                    var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear' 
                    };
                */
                $().UItoTop({ easingType: 'easeOutQuart' });
            });
        </script>

        <div class="arr-w3ls">
            <a href="#home" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
        </div>
        <!-- //smooth scrolling -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    </form>
</body>
</html>
