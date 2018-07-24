<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editorder.aspx.cs" Inherits="sree7.editorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <title>SRI7 INN</title>
    <meta name="description" content="Sri7 inn book your favourite luxury hotel in Anantapur, Andhra Pradesh. enjoy your vacation with a luxury touch. feel refresh on sri7" />
    <meta name="keywords" content="sri7 inn hotel, hotel in Anantapur,  hotel near me, 3star hotel, discount in a hotel, deals hotel, cheap hotel, sri7, hotel room, luxury accommodation, budget hotel. sri7 anantapur" />
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122465525-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-122465525-1');
    </script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link runat="server" rel="sortcuticon" href="public/img/favicon.ico" type="image/x-icon"  />
    <link runat="server" rel="icon" href="public/img/favicon.ico" type="image/icon" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://static.fabhotels.com/css/prodproperties_v13.css.gz" type="text/css" />


    <style>
        .copyright {
            padding: 120px 0 22px;
            text-align: center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <%-- <div>
      <asp:Label ID="Label2" runat="server" Text="Select No Of Guests..."></asp:Label>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">S.no</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Room ID</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Room_Type </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Price</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Guests</td>
                <td>
                    <asp:DropDownList ID="DropDownList1"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem  Value="0">Select Guets</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Rooms</td>
                <td>
                    <asp:Label ID="room" runat="server"  Text="Label"></asp:Label>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Total</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Total Days</td>
                <td>
             :<asp:Label ID="totaldays" runat="server"></asp:Label>
                    </td>
            </tr>
           
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Height="29px"  Text="Update" Width="70px" />
                </td>
            </tr>
        </table>
    </div>--%>

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

                </div>
            </header>




            <div class="container">

                <div class="col-sm-12" style="background-color: #F0F3F7">
                    <br>
                    <div class="panel-group">
                        <div class="col-sm-6 col-sm-offset-4">
                            <div class="panel panel-primary">
                                <div class="panel-heading" style="padding-bottom: 30px;">
                                    <center><h1><b>Select No Of Guests</b></h1></center>
                                </div>
                                <div class="panel-body">
                                    <table>
                                        <tr>
                                            <%-- <span>--%>
                                            <td>
                                                <h2>S.No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </h2>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <%--   <td><label>&nbsp;1</label></td>--%>
                                            <%--       </span>--%>
                                        </tr>
                                        <tr>

                                            <td>
                                                <h2>ROOM ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</h2>
                                            </td>
                                            <td><%--<label>&nbsp;1</label>--%><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>

                                        </tr>
                                        <tr>

                                            <td>
                                                <h2>ROOM-TYPE&nbsp;:</h2>
                                            </td>
                                            <%--<td><label>&nbsp;SUITEROOM</label></td>--%>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td>
                                                <h2>PRICE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</h2>
                                            </td>
                                            <%--<td><label>&nbsp;2000</label></td>--%>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                            </td>

                                        </tr>
                                        <tr>
                                            <div class="form-group">
                                                <td>
                                                    <h2>GUESTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</h2>
                                                </td>
                                                <%--  
  <div class="col-ms-6">
                    </div>--%>
&nbsp;&nbsp;
                                                <%--Guests--%>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        <asp:ListItem Value="0">Select Guets</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </div>

                                            <%--        </div>--%>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2>ROOMS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</h2>
                                            </td>
                                            <%--<td><label>&nbsp;label</label></td>--%>
                                            <td>
                                                <asp:Label ID="room" runat="server" Text="Label"></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2>TOTAL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</h2>
                                            </td>
                                            <%-- <td><label>&nbsp;12000</label></td>--%>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2>TOTAL DAYS&nbsp;:</h2>
                                            </td>
                                            <%--<td><label>&nbsp;1</label></td>--%>
                                            <td>
                                                <asp:Label ID="totaldays" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <asp:Label ID="lbl" runat="server"></asp:Label>
                                    </table>
                                    <br>
                                    <br>
                                    <%-- <button class="btn btn-primery" style="margin-left:100px;background-color:#337AB7" ><font color="#fff">UPDATE</font></button>--%>
                                    <asp:Button class="btn btn-primery" Style="margin-left: 100px; background-color: #337AB7;" runat="server" OnClick="Button1_Click" Text="Update" Width="264px" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>

        <footer>
            <div class="copyright">
                <p><font color="#000">&copy; 2018 Sri7 Inn All rights reserved. Powered byts reserved. Powered by</font><a href="https://www.charanwebtechnologies.com/"> Charan Web Technologies.</a></p>
            </div>
        </footer>

    </form>
</body>
</html>
