<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="sree7.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122465525-1"></script>
    <link runat="server" rel="sortcuticon" href="public/img/favicon.ico" type="image/x-icon"  />
    <link runat="server" rel="icon" href="public/img/favicon.ico" type="image/icon" />
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-122465525-1');
    </script>
</head>
<body>
    <form id="registration" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="modal fade" tabindex="-1" id="loginModal"
                            data-keyboard="false" data-backdrop="static">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <asp:Button ID="cls" runat="server" CssClass="close" aria-hidden="true" Style="background-image: url('img/icons8-multiply-26.png')" OnClick="cls_Click" Width="27px" />

                                        <%--<button type="button" class="close" data-dismiss="modal">
                                            &times;
                                        </button>--%>

                                        <h1 class="text-center login-title" style="font-size:x-large">Registration</h1>

                                    </div>
                                    <div class="modal-body">
                                        <div class="account-wall">
                                            <img src="images/default-user.png" class="img-responsive profile-img" alt="default-user" style="margin-left:50px" />
                                            <br />

                                            <asp:TextBox ID="FirstNametxt" runat="server" CssClass="form-control" placeholder="FirstName"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ValidationGroup="regist" ControlToValidate="FirstNametxt" ForeColor="Red" ErrorMessage="Enter UserName" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <br />

                                            <asp:TextBox ID="LastNametxt" runat="server" CssClass="form-control" placeholder="LastName"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ValidationGroup="regist" ControlToValidate="LastNametxt" ForeColor="Red" ErrorMessage="Enter UserName" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <br />

                                            <asp:TextBox ID="Emailtxt" runat="server" CssClass="form-control" placeholder="Email Id"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvEmailId" ErrorMessage="Enter Email ID" ControlToValidate="Emailtxt" runat="server" Display="Dynamic" ForeColor="Red" ValidationGroup="regist" />
                                            <asp:RegularExpressionValidator ID="rfvEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"  ControlToValidate="Emailtxt" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationGroup="regist"></asp:RegularExpressionValidator>
                                            <br />

                                            <asp:TextBox ID="Passtxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="Passtxt" ErrorMessage="Enter Password" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="revpwd" runat="server" ErrorMessage="Password must be between 7 to 10 characters" ControlToValidate="Passtxt" Display="Dynamic" ForeColor="Red" ValidationGroup="regist" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$" />
                                            <br />

                                            <asp:TextBox ID="CPasstxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Pasword"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvcpwd" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="CPasstxt" ErrorMessage="Enter Confirm Password " Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="cmpvpwd" runat="server" ControlToValidate="CPasstxt" CssClass="ValidationError" ControlToCompare="Passtxt" ForeColor="Red" Display="Dynamic" ErrorMessage="Confirm Password Not Match" ToolTip="Password must be the same" />
                                            <br />

                                            <asp:TextBox ID="mobiletxt" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvmbl" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="mobiletxt" ErrorMessage="Enter Mobile Number" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="revphn" runat="server" ValidationGroup="regist" ControlToValidate="mobiletxt" Display="Dynamic" ValidationExpression="[0-9]{10}" Text="Enter a valid phone number"></asp:RegularExpressionValidator>
                                            <br />


                                            <asp:Label ID="reglbl" runat="server" Text="" ForeColor="Red"></asp:Label>

                                            <a href="Login.aspx" class="pull-right need-help">Login</a>

                                            <span class="clearfix"></span>

                                        </div>



                                    </div>

                                    <div class="modal-footer">
                                        <asp:Button ID="submitbtn" runat="server" Text="Sign up" CssClass="btn btn-lg btn-primary btn-block" OnClick="submitbtn_Click" ValidationGroup="regist" />


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
