<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="sree7.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form id="login" runat="server">
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
                                        <h1 class="text-center login-title">Sign in to continue </h1>
                                        <%--<h4 class="modal-title">Login</h4>--%>
                                    </div>
                                    <div class="modal-body">
                                        <div class="account-wall">

                                            <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control" placeholder="Email Id"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvemail" runat="server" ForeColor="Red" ErrorMessage="Enter Email" ControlToValidate="emailtxt" ValidationGroup="Login"></asp:RequiredFieldValidator>
                                            
                                            <asp:TextBox ID="passtxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ForeColor="Red" ErrorMessage="Enter Password" ControlToValidate="passtxt" ValidationGroup="Login"></asp:RequiredFieldValidator>

                                           
                                            <asp:Label ID="lgnlbl" runat="server" Text="" ForeColor="Red"></asp:Label>
                                           <%-- <label class="checkbox pull-left">
                                                <input type="checkbox" value="remember-me" name="" />
                                                Remember me</label>--%>
                                            <a href="ForgotPassword.aspx" class="pull-right need-help">Forgot Password</a>

                                            <span class="clearfix"></span>



                                        </div>

                                         

                                    </div>

                                    <div class="modal-footer">
                                        <asp:Button ID="lgnbtn" runat="server" Text="Sign in" CssClass="btn btn-lg btn-primary btn-block" OnClick="lgnbtn_Click" ValidationGroup="Login"/>

                                       
                                    </div>
                                   
                                    <a href="Registration.aspx" class="text-center new-accont">Create an Account</a>
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
