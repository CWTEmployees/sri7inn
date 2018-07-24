<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="sree7.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SRI7 INN</title>
    <meta name="description" content="Sri7 inn book your favourite luxury hotel in Anantapur, Andhra Pradesh. enjoy your vacation with a luxury touch. feel refresh on sri7" />
    <meta name="keywords" content="sri7 inn hotel, hotel in Anantapur,  hotel near me, 3star hotel, discount in a hotel, deals hotel, cheap hotel, sri7, hotel room, luxury accommodation, budget hotel. sri7 anantapur" />
    <link runat="server" rel="sortcuticon" href="public/img/favicon.ico" type="image/x-icon"  />
    <link runat="server" rel="icon" href="public/img/favicon.ico" type="image/icon" />
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122465525-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-122465525-1');
    </script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link rel="stylesheet" type="text/css" href="checkout.css" />
</head>
<body>
    <header id="topbar">
        <img class="logo" src="public/img/final_logo3.png" width="170" height="70" />
        <%--<h1><a class="navbar-brand" href="Home.aspx">Sri7 <span>Inn</span><p class="logo_w3l_agile_caption">Your Dreamy Resort</p></a></h1> --%>
    </header>
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
        <div>
            <section id="panel_section">
                <div class="col-xs-12">

                    <div class="container-fluid" id="paymentdetails">
                        <div class="col-xs-12">
                            <div class="head">
                                <h3><strong>Payment Details</strong></h3>
                            </div>

                            <br />
                            <br />
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="payment_li active"><a href=".php#creditcard" aria-controls="creditcard" role="tab" data-toggle="tab" aria-expanded="true">Credit Card</a></li>
                                <li role="presentation"><a href=".php#debitcard" aria-controls="debitcard" role="tab" data-toggle="tab" aria-expanded="false">Debit Card</a></li>
                                <li role="presentation"><a href=".php#netbanking" aria-controls="netbanking" role="tab" data-toggle="tab" aria-expanded="false">Net Banking</a></li>
                                <li role="presentation"><a href=".php#paytm" aria-controls="paytm" role="tab" data-toggle="tab" aria-expanded="false">Paytm</a></li>
                                <li role="presentation"><a href=".php#payathotel" aria-controls="payathotel" role="tab" data-toggle="tab" aria-expanded="false">Pay at Hotel</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="creditcard">
                                    <br>
                                    <h3>Enter your Credit Card details</h3>
                                    <p>We support all major cards.</p>
                                    <div class="row" style="margin-left: 5px;">
                                        <img src="img/master.png" width="80" height="50">
                                        <img src="img/maestro.png" width="80" height="50">
                                        <img src="img/visa.png" width="80" height="50">
                                        <img src="img/am.png" width="80" height="50">
                                    </div>
                                    <br>
                                    <form id="user_details" method="post" name="form">
                                        <div class="form-group row">
                                            <div class="col-sm-5 col-md-5 col-xs-12">
                                                <label>Credit Card No.*</label>
                                                <input class="form-control" id="creditnum" name="creditnum" type="text" placeholder="Card Number" pattern="[3456](?:[0-9]{12}|[0-9]{14}|[0-9]{15})" required="true">
                                            </div>
                                            <!-- 	<div class="col-sm-2 col-md-2 col-xs-8">
						  						 <div class="form-group" id="expiration-date">
									                <label>Expiration Date</label>
									                <select class="form-control">
									                    <option value="01">January</option>
									                    <option value="02">February </option>
									                    <option value="03">March</option>
									                    <option value="04">April</option>
									                    <option value="05">May</option>
									                    <option value="06">June</option>
									                    <option value="07">July</option>
									                    <option value="08">August</option>
									                    <option value="09">September</option>
									                    <option value="10">October</option>
									                    <option value="11">November</option>
									                    <option value="12">December</option>
									                </select>
									                <select class="form-control">
									                    <option value="16"> 2016</option>
									                    <option value="17"> 2017</option>
									                    <option value="18"> 2018</option>
									                    <option value="19"> 2019</option>
									                    <option value="20"> 2020</option>
									                    <option value="21"> 2021</option>
									                </select>
									            </div>
						  					</div> -->
                                            <div class="col-sm-2 col-md-2 col-xs-8">
                                                <label>Expiry Date*</label>
                                                <input class="form-control" id="edate" name="edate" type="text" placeholder="Eg:- MM/YY" required="true" pattern="\d{1,2}/\d{2}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-5 col-md-5 col-xs-12">
                                                <label>Name on Card* </label>
                                                <input class="form-control" id="cardname" name="cardname" type="text" maxlength="32" pattern="[A-Za-z ‘-]{1,32}" placeholder="Card holder name" required="true">
                                            </div>
                                            <div class="col-sm-2 col-md-2 col-xs-8">
                                                <label>CVV*</label>
                                                <input class="form-control" id="cvv" name="cvv" type="text" placeholder="CVV" required="true" pattern="[0-9]{3}">
                                            </div>

                                        </div>
                                        <br />
                                        <div class="col-sm-3 col-md-3 col-xs-12">
                                            <div class="cvv row" style="">
                                                <img src="img/cvv.png" width="50" height="30" style="float: left;">
                                                <p>The cvv number is printed
                                                    <br>
                                                    on the back of the card.</p>
                                            </div>
                                        </div>
                                        <br />

                                        <button class="btn btn-continue pull-right" style="margin-bottom: 40px;">Pay</button>
                                    </form>

                                    <br />
                                    <br />


                                </div>
                                <div role="tabpanel" class="tab-pane" id="debitcard">
                                    <br />
                                    <h3>Enter your Debit Card details</h3>
                                    <p>We support all major cards.</p>
                                    <div class="row" style="margin-left: 5px;">
                                        <img src="img/master.png" width="80" height="50">
                                        <img src="img/maestro.png" width="80" height="50">
                                        <img src="img/visa.png" width="80" height="50">
                                        <img src="img/am.png" width="80" height="50">
                                    </div>
                                    <br />
                                    <div class="form-group row">
                                        <div class="col-sm-5 col-md-5 col-xs-12">
                                            <label>Debit Card No.*</label>
                                            <input class="form-control" id="creditnum" name="creditnum" type="text" placeholder="Card Number" required="true" pattern="[3456](?:[0-9]{12}|[0-9]{14}|[0-9]{15})">
                                        </div>
                                        <div class="col-sm-2 col-md-2 col-xs-8">
                                            <label>Expiry Date*</label>
                                            <input class="form-control" id="edate" name="edate" type="text" placeholder="Eg:- MM/YY" required="true" pattern="\d{1,2}/\d{2}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-5 col-md-5 col-xs-12">
                                            <label>Name on Card* </label>
                                            <input class="form-control" id="cardname" name="cardname" maxlength="32" pattern="[A-Za-z ‘-]{1,32}" type="text" placeholder="Card holder name" required="true">
                                        </div>
                                        <div class="col-sm-2 col-md-2 col-xs-8">
                                            <label>CVV*</label>
                                            <input class="form-control" id="cvv" name="cvv" type="text" placeholder="CVV" required="true" pattern="[0-9]{3}" />
                                        </div>

                                    </div>
                                    <div class="col-sm-3 col-md-3 col-xs-12">
                                        <div class="cvv row" style="">
                                            <img src="img/cvv.png" width="50" height="30" style="float: left;" />
                                            <p>The cvv number is printed
                                                <br>
                                                on the back of the card.</p>
                                        </div>
                                    </div>
                                    <br />

                                    <button class="btn btn-continue pull-right" style="margin-bottom: 40px;">Pay</button>
                                    <br />
                                    <br />

                                </div>
                                <div role="tabpanel" class="tab-pane" id="netbanking">
                                    <h3>Popular Banks</h3>
                                    <div class="row">
                                        <div class="col-md-3 col-sm-3 col-xs-12" style="border: 1px solid #000; margin-left: 20px;">
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio" class="radio"><img src="img/hdfc.png" style="padding-left: 20px;">
                                            </label>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-12" style="border: 1px solid #000; margin-left: 20px;">
                                            <label class="radio-inline" style="padding-bottom: 10px;">
                                                <input type="radio" name="optradio" class="radio"><img src="img/sbi.png" style="padding-left: 20px;">
                                            </label>

                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-12" style="border: 1px solid #000; margin-left: 20px;">
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio" class="radio"><img src="img/icici.png" style="padding-left: 20px;">
                                            </label>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-3 col-sm-3 col-xs-12" style="border: 1px solid #000; margin-left: 20px;">
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio" class="radio"><img src="img/city.png" style="padding-left: 20px; padding-bottom: 10px;">
                                            </label>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-12" style="border: 1px solid #000; margin-left: 20px;">
                                            <label class="radio-inline" style="padding-top: -10px;">
                                                <input type="radio" name="optradio" class="radio"><img src="img/kotak.png" style="padding-left: 20px; padding-top: -10px;">
                                            </label>

                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-12" style="border: 1px solid #000; margin-left: 20px;">
                                            <label class="radio-inline" style="">
                                                <input type="radio" name="optradio" class="radio"><img src="img/axis.png" style="padding-left: 20px; padding-bottom: 10px;">
                                            </label>
                                        </div>
                                    </div>
                                    <br>
                                    <h3>All Other Banks</h3>
                                    <div class="form-group row">
                                        <div class="col-md-5 col-xs-12">
                                            <select class="form-control" id="sel1">
                                                <option>Choose your Bank...</option>
                                                <option>Andhra Bank</option>
                                                <option>Bank of India</option>
                                                <option>Bharat Cooperative Bank</option>
                                                <option>Bank of Maharashtra</option>
                                                <option>Canara Bank</option>
                                                <option>Central Bank of India</option>
                                                <option>City Union Bank</option>
                                                <option>DCB Bank</option>
                                                <option>Dhanlakshmi Bank</option>
                                                <option>Federal Bank</option>
                                                <option>IDFC</option>
                                                <option>Indian Bank</option>
                                                <option>Indian Overseas Bank</option>
                                                <option>Indusind Bank</option>
                                                <option>Karnataka Bank</option>
                                                <option>Karur Vysya - Corporate Netbanking</option>
                                                <option>Karur Vysya</option>
                                                <option>Lakshmi Vilas Bank - Corporate</option>
                                                <option>Lakshmi Vilas Bank - Retail</option>
                                                <option>Syndicate Bank</option>
                                                <option>UCO Bank</option>
                                                <option>Union Bank - Corporate Netbanking</option>
                                                <option>Union Bank of India</option>
                                                <option>United Bank of India</option>
                                                <option>Vijaya Bank</option>
                                                <option>Yes Bank</option>
                                            </select>
                                        </div>

                                    </div>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <button class="btn btn-continue pull-right" style="margin-bottom: 40px;">Pay</button>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="paytm">

                                    <br />
                                    <br />
                                    <br />
                                    <div class="col-md-3 col-sm-3 col-xs-12" style="border: 1px solid #000; margin-left: 20px;">
                                        <label class="radio-inline" style="padding-top: -10px;">
                                            <input type="radio" name="optradio" class="radio"><img src="img/paytm.png" style="padding-left: 20px; padding-top: -10px;">
                                        </label>

                                    </div>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <button class="btn btn-continue pull-right" style="margin-bottom: 40px;">Pay</button>
                                </div>

                                <div role="tabpanel" class="tab-pane" id="payathotel">
                                    <br />
                                    <br />
                                    <p><i class="fa fa-warning" style="font-size: 30px; color: red"></i>&nbsp;Pay at Hotel bookings shall be honored based on availability at the time of check-in. To get assured room(s), select an alternative payment option.</p>

                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <%-- <button class="btn btn-continue pull-right" style="margin-bottom: 40px;">Pay</button>--%>
                                    <%--      <asp:Button ID="pay" runat="server"   Text="Pay" OnClick="pay_Click"   />--%>
                                    <asp:LinkButton ID="Pay" runat="server" Text="Pay" Font-Bold="true" Font-Size="Larger" OnClick="Pay_Click" BorderStyle="Solid" Style="margin-left: 20px" BorderWidth="2 px"></asp:LinkButton>
                                </div>

                            </div>


                        </div>
                    </div>


                    <br />
                    <p><span class="glyphicon glyphicon-lock"></span>&nbsp;<span style="padding-top: 40px !important;">100% safe and secure payment</span>
                        <img src="img/secure.png" width="110" height="70" style="float: right;"></p>

                </div>
            </section>
            <br />
            <br />
            <br />






            <footer>
                © 2018 Sri7 INN. All rights reserved. Powered by <a href="https://www.charanwebtechnologies.com/">Charan Web Technologies</a>
            </footer>
        </div>
    </form>
</body>
</html>
