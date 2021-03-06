﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="sree7.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="frgpass" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="modal fade" tabindex="-1" id="loginModal"
                            data-keyboard="false" data-backdrop="static">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            &times;
                                        </button>
                                        <h1 class="text-center login-title">Forgot Password</h1>
                                       
                                    </div>
                                    <div class="modal-body">
                                        <div class="account-wall">
                                            <img src="images/default-user.png" class="img-responsive profile-img" alt="default-user" />

                                            <asp:TextBox ID="frgmailtxt" runat="server" CssClass="form-control" placeholder="Enter Email Id"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="rfvemail" runat="server" ForeColor="Red" ErrorMessage="Enter Email" ControlToValidate="frgmailtxt" ValidationGroup="Forgot"></asp:RequiredFieldValidator>

                                            <a href="Login.aspx" class="pull-right need-help">Back To Login</a>
                                            <span class="clearfix"></span>

                                            <asp:Label ID="frgpasslbl" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button ID="frgpassbtn" runat="server" Text="Submit" CssClass="btn btn-lg btn-primary btn-block" OnClick="frgpassbtn_Click" ValidationGroup="Forgot" />
                                    </div>


                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {

                $("#loginModal").modal('show');
            });
        </script>
    </form>
</body>
</html>
