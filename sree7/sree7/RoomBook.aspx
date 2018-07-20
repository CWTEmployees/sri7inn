<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomBook.aspx.cs" Inherits="sree7.RoomBook" %>

<!DOCTYPE html>
<%--<script  runat="server">

void Page_load(object sender, EventArgs e)

{

btn.Attributes.Add( "onclick", "popWin()" );

}

</script>--%>
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
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" />
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <link href="css/style.css" rel="stylesheet" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Sree 7 Conventtions </title>
    <link rel="stylesheet" href="https://static.fabhotels.com/css/prodproperties_v13.css.gz" type="text/css" />



    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="prizecup-icon" viewBox="0 0 48 48">
            <defs>
                <path d="M12.2460779,0 L33.4855235,0 L35.3977893,23.0970979 L35.3977893,23.0970979 C35.6558999,26.21466 33.6161839,29.0597276 30.5807626,29.8160558 L22.8658005,31.7383732 L15.1508388,29.8160558 L15.1508388,29.8160558 C12.1154175,29.0597276 10.0757014,26.21466 10.3338121,23.0970979 L12.2460779,0 Z" id="path-1"></path>
                <polygon id="path-2" points="16.8194352 34.550623 28.9121533 34.550623 30.6396845 39.7332165 15.0919041 39.7332165"></polygon>
                <rect id="path-3" x="9.90931064" y="39.2773402" width="25.9129673" height="7.77389019"></rect>
            </defs>
            <g id="Page-2" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g id="Final" transform="translate(-160.000000, -607.000000)">
                    <g id="Group-97" transform="translate(124.000000, 571.000000)">
                        <g id="Group-96" transform="translate(20.000000, 20.000000)">
                            <g id="Group-90">
                                <g id="Group-87">
                                    <g id="Prizecup" transform="translate(17.000000, 16.000000)">
                                        <g id="Rectangle-1564">
                                            <use fill="#D2DAE4" fill-rule="evenodd" xlink:href="#path-1"></use>
                                            <path stroke="#3C3C3C" stroke-width="1.30697862" d="M12.8476991,0.653489311 L10.9850732,23.1510174 C10.753393,25.9493412 12.5842421,28.5030738 15.3088363,29.181954 L22.8658005,31.0649036 L30.4227651,29.181954 C33.1473592,28.5030738 34.9782084,25.9493412 34.7465282,23.1510174 L32.8839023,0.653489311 L12.8476991,0.653489311 Z"></path>
                                        </g>
                                        <path d="M22.8657943,31.0955607 L22.8657943,33.6868575" id="Line" stroke="#3C3C3C" stroke-width="1.30697862" stroke-linecap="square" stroke-linejoin="round"></path>
                                        <g id="Rectangle-1565">
                                            <use fill="#D8D8D8" fill-rule="evenodd" xlink:href="#path-2"></use>
                                            <path stroke="#3C3C3C" stroke-width="1.30697862" d="M17.2904437,35.2041124 L15.9985721,39.0797272 L29.7330165,39.0797272 L28.4411449,35.2041124 L17.2904437,35.2041124 Z"></path>
                                        </g>
                                        <g id="Rectangle-1566">
                                            <use fill="#D8D8D8" fill-rule="evenodd" xlink:href="#path-3"></use>
                                            <rect stroke="#3C3C3C" stroke-width="1.30697862" x="10.5627999" y="39.9308295" width="24.6059887" height="6.46691156"></rect>
                                        </g>
                                        <path d="M34.4616188,6.28545628 L37.4088169,3.4550623 L45.6713738,3.4550623 C45.6713738,3.4550623 46.6166743,15.0275949 35.7553598,22.1776565" id="Path-3529" stroke="#3C3C3C" stroke-width="1.30697862" stroke-linecap="round" stroke-linejoin="round"></path>
                                        <path d="M0,6.28545628 L2.9471981,3.4550623 L11.2097551,3.4550623 C11.2097551,3.4550623 12.1550556,15.0275949 1.29374104,22.1776565" id="Path-3529" stroke="#3C3C3C" stroke-width="1.30697862" stroke-linecap="round" stroke-linejoin="round" transform="translate(5.615267, 12.816359) scale(-1, 1) translate(-5.615267, -12.816359) "></path>
                                        <polygon id="Star-18" stroke="#3C3C3C" stroke-width="1.30697862" fill="#FDDC2C" stroke-linecap="round" stroke-linejoin="round" points="22.8657943 17.2753115 20.8349596 18.3429845 21.2228145 16.0816169 19.5798348 14.4801074 21.8503769 14.1501783 22.8657943 12.0927181 23.8812116 14.1501783 26.1517538 14.4801074 24.508774 16.0816169 24.896629 18.3429845"></polygon>
                                    </g>
                                </g>
                            </g>
                        </g>
                    </g>
                </g>
            </g>
        </symbol>
        <symbol id="centrally-located-icon" viewBox="0 0 49 40" version="1.1">
            <defs></defs>
            <g id="Page-2" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                <g id="Final" transform="translate(-515.000000, -611.000000)" stroke-width="1.30697862">
                    <g id="Group-97" transform="translate(124.000000, 571.000000)">
                        <g id="Group-96" transform="translate(20.000000, 20.000000)">
                            <g id="Group-91" transform="translate(355.000000, 0.000000)">
                                <g id="Group-90-Copy">
                                    <g id="Group-34">
                                        <g id="Mappoints" transform="translate(17.000000, 21.000000)">
                                            <polygon id="Rectangle-1679" stroke="#3C3C3C" fill="#D8D8D8" points="0 0 15.5473631 2.4548468 15.5473631 37.6409843 0 35.1861375"></polygon>
                                            <polygon id="Rectangle-1679" stroke="#3C3C3C" fill="#D2DAE4" points="31.0947262 0 46.6420893 2.4548468 46.6420893 37.6409843 31.0947262 35.1861375"></polygon>
                                            <polygon id="Rectangle-1679" stroke="#3C3C3C" fill="#F0F3F7" transform="translate(23.321045, 18.820492) scale(-1, 1) translate(-23.321045, -18.820492) " points="15.5473631 0 31.0947262 2.4548468 31.0947262 37.6409843 15.5473631 35.1861375"></polygon>
                                            <path d="M3.70400499,15.6604435 L7.15673512,19.1131737" id="Path-3738" stroke="#3C3C3C"></path>
                                            <path d="M37.1420427,19.6387744 L40.5947728,23.0915046" id="Path-3738" stroke="#3C3C3C"></path>
                                            <path d="M19.1398328,25.7571543 L22.5925629,29.2098844" id="Path-3738" stroke="#000000"></path>
                                            <path d="M3.70400499,15.6604435 L7.15673512,19.1131737" id="Path-3739" stroke="#3C3C3C" transform="translate(5.430370, 17.386809) scale(-1, 1) translate(-5.430370, -17.386809) "></path>
                                            <path d="M37.1420427,19.6387744 L40.5947728,23.0915046" id="Path-3739" stroke="#3C3C3C" transform="translate(38.868408, 21.365140) scale(-1, 1) translate(-38.868408, -21.365140) "></path>
                                            <path d="M19.1398328,25.7571543 L22.5925629,29.2098844" id="Path-3739" stroke="#000000" transform="translate(20.866198, 27.483519) scale(-1, 1) translate(-20.866198, -27.483519) "></path>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </g>
                    </g>
                </g>
            </g>
        </symbol>
        <symbol id="money-icon" viewBox="0 0 65 31">
            <defs></defs>
            <g id="Page-2" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g id="Final" transform="translate(-861.000000, -615.000000)">
                    <g id="Group-97" transform="translate(124.000000, 571.000000)">
                        <g id="Group-96" transform="translate(20.000000, 20.000000)">
                            <g id="Group-93" transform="translate(709.000000, 0.000000)">
                                <g id="Group-91-Copy">
                                    <g id="Group-90-Copy">
                                        <g id="Group-94">
                                            <g id="Group-28" transform="translate(9.000000, 25.000000)">
                                                <g id="Dollarpaper" transform="translate(0.000000, 0.120267)" stroke="#3C3C3C" stroke-width="1.30697862" stroke-linejoin="round">
                                                    <path d="M1.20644181,13.5246284 C1.20644181,9.01641896 0,0 0,0 C0,0 20.911658,2.33015617 31.3674869,2.33015617 C41.8233159,2.33015617 62.7349739,0 62.7349739,0 C62.7349739,0 61.5285321,8.49044826 61.5285321,12.7356724 C61.5285321,17.4227136 62.7349739,26.796796 62.7349739,26.796796 C62.7349739,26.796796 41.8233159,29.1269522 31.3674869,29.1269522 C20.911658,29.1269522 0,26.796796 0,26.796796 C0,26.796796 1.20644181,17.9486843 1.20644181,13.5246284 Z" id="Rectangle-1476" fill="#D2DAE4" stroke-linecap="round"></path>
                                                    <path d="M52.6525674,4.48106956 L58.2539043,4.48106956" id="Line" stroke-linecap="square"></path>
                                                    <path d="M4.48106956,4.48106956 L10.0824065,4.48106956" id="Line" stroke-linecap="square"></path>
                                                    <path d="M52.6525674,23.5256152 L58.2539043,23.5256152" id="Line" stroke-linecap="square"></path>
                                                    <path d="M4.48106956,23.5256152 L10.0824065,23.5256152" id="Line" stroke-linecap="square"></path>
                                                </g>
                                                <g id="indian-rupee" transform="translate(24.645883, 10.202674)" stroke="#000000" stroke-width="0.653489311" fill="#000000" fill-rule="nonzero">
                                                    <path d="M9.12010724,3.07046019 L7.02585332,3.07046019 C6.88618743,1.91174742 6.29831283,1.07693137 5.53893579,0.566802444 L9.1201256,0.566802444 C9.29072839,0.566802444 9.42953135,0.439682231 9.42953135,0.283401222 C9.42951299,0.127137031 9.29071003,0 9.12010724,0 L0.317025226,0 C0.146404074,0 0.00761947466,0.127137031 0.00761947466,0.283401222 C0.00761947466,0.439682231 0.146404074,0.566802444 0.317025226,0.566802444 L4.05908693,0.566802444 C5.05890889,0.736032595 6.1975338,1.49798029 6.40794147,3.07046019 L0.317025226,3.07046019 C0.146404074,3.07046019 0.00761947466,3.19759722 0.00761947466,3.35387823 C0.00761947466,3.51014242 0.146404074,3.63727945 0.317025226,3.63727945 L6.44770962,3.63727945 C6.43533485,4.42514225 6.14096609,5.06400583 5.56370367,5.53527051 C3.927371,6.86726634 0.586662828,6.52717479 0.553963348,6.52475313 C0.430197375,6.51341843 0.303787537,6.57009194 0.244557596,6.67373553 C0.184446367,6.7765719 0.200346283,6.90288489 0.283462817,6.9919649 L6.15778401,13.2211412 C6.21877653,13.2859206 6.30539986,13.3191175 6.39204155,13.3191175 C6.46364625,13.3191175 6.5361506,13.2964481 6.59448089,13.2502852 C6.7235346,13.1482729 6.7376903,12.9693225 6.62629909,12.8502913 L1.23374901,7.13203425 C2.39712345,7.15958061 4.62661845,7.05672743 5.97387009,5.95956512 C6.68905418,5.37737506 7.05414636,4.5943724 7.06652112,3.63727945 L9.1201256,3.63727945 C9.29072839,3.63727945 9.42953135,3.51014242 9.42953135,3.35387823 C9.42951299,3.19759722 9.29160968,3.07046019 9.12010724,3.07046019 Z" id="Shape"></path>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </g>
                    </g>
                </g>
            </g>

        </symbol>
    </svg>
</head>
<%--<body>
    <form id="frm2" runat="server">
          <a href="Home.aspx" >
            Continue Booking </a>
          <br />
        <br />
        <br />
      
          
        <br />
        <br />
        <br />
      <div style="margin-left: 440px">
              <asp:Label ID="Label2" runat="server" CssClass="align:centre" Width="100px" ForeColor="Red" BackColor="Yellow" Text="Room Booking" Height="21px"></asp:Label>
          </div>

        <br />
        <br />
        <br />

        <asp:GridView ID="bookgrid" runat="server" GridLines="Horizontal"  Height="104px"   Width="984px" AutoGenerateColumns="False" ShowHeader="true" CellPadding="4" ForeColor="#444444"  ShowFooter="true"  OnRowDeleting="bookgrid_RowDeleting" OnSelectedIndexChanged="bookgrid_SelectedIndexChanged" OnRowCancelingEdit="bookgrid_RowCancelingEdit" >
           <AlternatingRowStyle BackColor="White" />
             <Columns>

                <asp:BoundField DataField="sno"  HeaderText="S.No"   >
                    <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                   
                </asp:BoundField>

                <asp:ImageField  DataImageUrlField="ImagePath" HeaderText="Image" HeaderStyle-Height="50px" FooterStyle-Height="50px" FooterStyle-HorizontalAlign="Center">

<FooterStyle HorizontalAlign="Center" Height="50px"></FooterStyle>

<HeaderStyle Height="50px"></HeaderStyle>

                    <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                    <ControlStyle Height="150px" Width="150px" />
                </asp:ImageField>
                

                <asp:BoundField DataField="Room_Type" HeaderText="Room Type">
                   
                    <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                    
                </asp:BoundField>

                <asp:BoundField DataField="Rooms"  HeaderText="Rooms" ApplyFormatInEditMode="True"   >
                    <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                   
                </asp:BoundField>
           

                <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="true">
                    <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                </asp:BoundField>

                <asp:BoundField DataField="quantity" HeaderText="Guests">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>

                
              
               
                     <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" CssClass="row2" />
            </asp:BoundField>
                 <asp:CommandField SelectText="Select Rooms&Guests" ShowSelectButton="True"  EditText="Select Rooms&Guests" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                 <asp:CommandField CancelText="Cancel" ShowCancelButton="True" />

                
               

           
                
            </Columns>
            
             <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor= "LightGreen" ForeColor="White"  Font-Bold="True" />
            <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            <FooterStyle Wrap="True" />
        </asp:GridView>
          <div style="margin-left: 800px">
              <asp:Button ID="btn"  runat="server" ForeColor="White"  BackColor="#507CD1" Text="Book"   OnClick="btn_Click" Height="44px" Width="108px"  ClientIDMode="Static" />
          </div>
        <div style="margin-left:4px; width: 53px;">
            </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>


        
        
        <div id="loading" class="Loading" runat="server" style="display;" >
 <table class="auto-style1">
            <tr>
                <td class="auto-style6">Order Id</td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Date of Order</td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
                        <div class="form-group">

                            Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="emaieltxt" runat="server" class="form-control input-lg" placeholder="Email Address" name="email" />
                        </div>

                        <div class="form-group">

                          Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="name" runat="server" type="text" class="form-control input-lg" placeholder=" Name" name="firstname" />
                            <asp:RequiredFieldValidator ID="rfvFname" runat="server" ForeColor="Red" ValidationGroup="Baddrs" ControlToValidate="name" ErrorMessage="Enter First Name" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>




                        <div class="form-group">

                          Address:&nbsp;  <asp:TextBox ID="txtadress" runat="server" type="text" class="form-control input-lg" placeholder="Address1" name="address1" />
                            <asp:RequiredFieldValidator ID="rfvadd" runat="server" ForeColor="Red" ValidationGroup="Baddrs" ControlToValidate="txtadress" ErrorMessage="Enter Address" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>

                       
                      
            Check In : <asp:Label ID="CHECKIN" runat="server"> </asp:Label> <br/><br/>
            Check Out: <asp:Label ID="CHECKOUT" runat="server"> </asp:Label> <br /> <br />
           Total Days: <asp:Label ID="Totaldays" runat="server"></asp:Label> <br />
                        <div class="form-group">

                     Contact Number : <asp:TextBox ID="txtcntnum" runat="server" type="text" class="form-control input-lg" placeholder="Contact number" name="mobile" />
                            <asp:RequiredFieldValidator ID="rfvcntct" runat="server" ForeColor="Red" ValidationGroup="Baddrs" ControlToValidate="txtcntnum" ErrorMessage="Enter Contact Number" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revcntct" runat="server" ForeColor="Red" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtcntnum" ValidationGroup="Baddrs" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </div>


                        <br />
                        <br />



                        <asp:Button ID="btncontinue" runat="server" class="button button1" Text="Continue"  ValidationGroup="Baddrs" />
            <br />
        <asp:Label ID="Label8" runat="server"></asp:Label>
        <asp:Label ID="Label9" runat="server"></asp:Label>
        <br />       
             </div>
    </form>
</body>--%>

<body>
    <style type="text/css">
        .dropbutton {
            background-color: white;
            color: black;
            padding: 1px;
            font-size: 15px;
            border: hidden;
        }

        .dropdownhov {
            position: relative;
            display: inline-block;
            margin-top: 5px;
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
            background-color: white;
        }
    </style>
    <form id="frm2" runat="server">

        <div class="wrapper coupan-wrapper">
            <svg xmlns="http://www.w3.org/2000/svg" style="display: none;"></svg>
            <header class="detail-header" style="display: block">
                <div class="main-page clearfix">
                    <div class="logo" style="float: left;">
                        <a href="Home.aspx">
                            <img src="public/img/final_logo3.png" width="150" height="60">
                            <%--<h1><a class="navbar-brand" href="Home.aspx">Sri7 <span>Inn</span><p class="logo_w3l_agile_caption">Your Dreamy Resort</p></a></h1> --%>
                        </a>
                    </div>
                    <div class="other-cities" style="visibility: display">
                        <a href="#" class="other-cities-icon">Anantapur </a>
                    </div>
                    <div style="visibility: display">
                        <div class="header-right">
                            <input hidden id="validate_token_url" value="/user/authenticateToken">
                            <div class="call-us clearfix">
                                <svg class="icon">
                                    <use xlink:href="#call-icon" />
                                </svg>
                                <a tabindex="-2" href="tel:+91 944 024 8666">+91 944 024 8666</a>
                            </div>
                            <%--<div class="login-cta" style='display: block'>--%>
                            <span class="login-reg login_register">
                                <%if (Session["user"] == null)
                                  { %>
                                <a href="Login.aspx">
                                    <p>Login</p>
                                </a>
                                <% }
                                  else
                                  { %>

                                <div class="dropdownhov">
                                    <button class="dropbutton">
                                        <asp:Label ID="lblUser" runat="server"></asp:Label>
                                    </button>
                                    <div class="dropdownhov-content">
                                        <a href="MyBookings.aspx">My Bookings</a>
                                        <a href="UserProfile.aspx">Profile</a>
                                        <a href="#">
                                            <asp:Button ID="btnlgt" runat="server" Text="Logout" OnClick="btnlgt_Click" /></a>
                                    </div>
                                </div>
                                <%} %>
                            </span>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </header>
            <br />
            <br />
            <br />

            <section id="panel_section">
                <div class="col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Review Details</div>
                        <br />
                        <br />
                        <div class="panel-body">
                            <div class="panel-content">

                                <div class="table-responsive">

                                    <asp:GridView ID="bookgrid" runat="server" GridLines="Horizontal" Height="104px" Width="984px" AutoGenerateColumns="False" OnRowDeleting="bookgrid_RowDeleting" ShowHeader="true" CellPadding="4" ForeColor="#444444" ShowFooter="true" OnSelectedIndexChanged="bookgrid_SelectedIndexChanged" OnRowCancelingEdit="bookgrid_RowCancelingEdit">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>


                                            <asp:BoundField DataField="sno" HeaderText="S.No">
                                                <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                                            </asp:BoundField>


                                            <asp:ImageField DataImageUrlField="ImagePath" HeaderText="Image" HeaderStyle-Height="50px" FooterStyle-Height="50px" FooterStyle-HorizontalAlign="Center">

                                                <FooterStyle HorizontalAlign="Center" Height="50px"></FooterStyle>

                                                <HeaderStyle Height="50px"></HeaderStyle>

                                                <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                                                <ControlStyle Height="150px" Width="150px" />
                                            </asp:ImageField>


                                            <asp:BoundField DataField="Room_Type" HeaderText="Room Type">

                                                <ItemStyle HorizontalAlign="Center" CssClass="row2" />

                                            </asp:BoundField>

                                            <asp:BoundField DataField="Rooms" HeaderText="Rooms" ApplyFormatInEditMode="True">
                                                <ItemStyle HorizontalAlign="Center" CssClass="row2" />

                                            </asp:BoundField>


                                            <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="true">
                                                <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                                            </asp:BoundField>

                                            <asp:BoundField DataField="quantity" HeaderText="Guests">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>




                                            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                                <ItemStyle HorizontalAlign="Center" CssClass="row2" />
                                            </asp:BoundField>
                                            <asp:CommandField SelectText="Rooms & Guests" ShowSelectButton="True" EditText="Select Rooms&Guests" ControlStyle-Font-Bold="true" ControlStyle-ForeColor="Red" />







                                        </Columns>

                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="LightGreen" ForeColor="White" Font-Bold="True" />
                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        <FooterStyle Wrap="True" />
                                    </asp:GridView>


                                    <asp:Label ID="Label1" runat="server" Text="* Please Click on Rooms & Guest for selecting Room & Guest!!!! It`s mandatory" Font-Bold="true" ForeColor="Red"></asp:Label>

                                </div>
                                <br />


                            </div>
                        </div>
                    </div>
                    <br />

                    <div class="container-fluid" id="guestdetails">
                        <div class="col-xs-12">
                            <div class="head">
                                <h3><strong>Booking Info</strong></h3>
                            </div>
                            <div class="body">
                                <br />
                                <br />
                                <div class="info">
                                    <p>
                                        <strong>Booking Id &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%-- <label>SREE7_71285408362</label>--%>
                                            <asp:Label ID="Label3" runat="server"></asp:Label>
                                        </strong>
                                    </p>
                                    <p>
                                        <strong>Date of Booking :</strong><%--<label> 25-05-2018</label>--%>
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </p>
                                    <p>
                                        <strong>Check IN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</strong><%--<label> 2018-05-25</label>--%>
                                        <asp:Label ID="CHECKIN" runat="server"> </asp:Label>
                                    </p>
                                    <p>
                                        <strong>Check OUT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</strong> <%--<label>2018-05-26</label>--%>
                                        <asp:Label ID="CHECKOUT" runat="server"> </asp:Label>
                                    </p>
                                    <p>
                                        <strong>Total Days&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</strong><%--<label> 1</label>--%>
                                        <asp:Label ID="Totaldays" runat="server"></asp:Label>
                                    </p>
                                </div>
                                <br />
                                <br />
                                <h3>Guest Details</h3>
                                <hr />
                                <form id="user_details" method="post" name="form" action="payment.html">

                                    <div class="form-group row">
                                        <div class="col-sm-4 col-md-4 col-xs-12">
                                            <label for="ex3">Full Name*</label>
                                            <%--<input class="form-control" id="name" name="name" type="text"  maxlength="32"  pattern="[A-Za-z ‘-]{1,32}" placeholder="Full Name" required="true">--%>
                                            <asp:TextBox ID="name" runat="server" type="text" class="form-control input-lg" placeholder=" Name" name="firstname" />
                                            <asp:RequiredFieldValidator ID="rfvFname" runat="server" ForeColor="Red" ValidationGroup="bookinfo" ControlToValidate="name" ErrorMessage="Enter First Name" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="col-sm-4 col-md-4 col-xs-12">
                                            <label for="ex3">Mobile Number*</label>
                                            <%--<input class="form-control" id="number" name="number" type="text" pattern="[6789][0-9]{9}" placeholder="Mobile Number" required="true">--%>
                                            <asp:TextBox ID="txtcntnum" runat="server" type="text" class="form-control input-lg" placeholder="Contact number" name="mobile" />
                                            <asp:RequiredFieldValidator ID="rfvcntct" runat="server" ForeColor="Red" ValidationGroup="bookinfo" ControlToValidate="txtcntnum" ErrorMessage="Enter Contact Number" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="revcntct" runat="server" ForeColor="Red" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtcntnum" ValidationGroup="bookinfo" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                        </div>

                                    </div>
                                    <div class="form-group row">

                                        <div class="col-sm-4 col-md-4 col-xs-12">
                                            <label for="ex3">Email*</label>
                                            <%--<input class="form-control" id="mail" name="mail" type="email" placeholder="Email Address" required="true">
                                            --%>
                                            <asp:TextBox ID="emaieltxt" runat="server" class="form-control input-lg" placeholder="Email Address" name="email" />
                                            <asp:RequiredFieldValidator ID="rfvemail" runat="server" ForeColor="Red" ValidationGroup="bookinfo" ControlToValidate="emaieltxt" ErrorMessage="Enter Email Id" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ForeColor="Red" ErrorMessage="Enter Valid EmailId" ControlToValidate="emaieltxt" ValidationGroup="bookinfo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </div>

                                        <div class="col-sm-4 col-md-4 col-xs-12">
                                            <label for="ex3">Address</label>
                                            <%--<input class="form-control" id="address" name="address" type="text"  maxlength="50"  pattern="[a-zA-Z0-9 ‘-]{2,35}]" placeholder="Your Address" required="true">
                                            --%>
                                            <asp:TextBox ID="txtadress" runat="server" type="text" class="form-control input-lg" placeholder="Address1" name="address1" />
                                            <asp:RequiredFieldValidator ID="rfvadd" runat="server" ForeColor="Red" ValidationGroup="bookinfo" ControlToValidate="txtadress" ErrorMessage="Enter Address" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>


                                    <br />
                                    <label class="container">
                                        Keep me updated on new launches and latest offers
		  						<input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">
                                        I agree with cancellation policy, privacy policy and terms and conditions
				  				<input type="checkbox" required="true">
                                        <span class="checkmark"></span>
                                    </label>
                                    <br />
                                    <br />
                                    <div class="col-xs-4">
                                        <asp:LinkButton runat="server" class="btn btn-continue" ID="booking_info" Style="margin-top: 15px;" ValidationGroup="bookinfo" OnClick="booking_info_Click" Text="Proceed To Pay"></asp:LinkButton>
                                        <%--<button class="btn btn-continue" id="booking_info" style="margin-top: 15px;">Proceed to Pay</button>--%>
                                    </div>
                                    <br />
                                    <asp:Label ID="Label8" runat="server"></asp:Label>
                                    <asp:Label ID="Label9" runat="server"></asp:Label>
                                    <br />
                                </form>


                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>

                    </div>
                    <br />



                    <br />
                    <p>
                        <span class="glyphicon glyphicon-lock"></span>&nbsp;<span style="padding-top: 40px !important;">100% safe and secure payment</span>
                        <img src="img/secure.png" width="110" height="70" style="float: right;" />
                    </p>

                </div>
            </section>
            <br />
            <br />
            <br />







            <footer>
                © 2018 Sree7 INN. All rights reserved. Powered by <a href="https://www.charanwebtechnologies.com">Charan Web Technologies</a>
            </footer>

            <script>
                $("#button").click(function () {
                    $("#guestdetails").show("slow");
                });
            </script>

            <!-- <script>
	$( "#booking_info" ).click(function() 
	{
		$( "#paymentdetails" ).show( "slow" );
	});
</script>
 -->


            <!-- <script type="text/javascript">
	$("form").submit(function() 
	{
		$("#paymentdetails").attr('https://ftutorials.com/open-html-form-in-new-tab/', '_blank');
		return true;
	});
</script> -->



            <!--  <script type="text/javascript">
			function submitForm()
			{
				document.form1.target = "myActionWin";
				window.open("","myActionWin","width=500,height=300,toolbar=0");	
				document.form1.submit();
			}
		</script> -->
    </form>
</body>

</html>
