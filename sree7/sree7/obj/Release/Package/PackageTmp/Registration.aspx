<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="sree7.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                                        <button type="button" class="close" data-dismiss="modal">
                                            &times;
                                        </button>
                                        <h1 class="text-center login-title">Registration</h1>

                                    </div>
                                    <div class="modal-body">
                                        <div class="account-wall">

                                            <asp:TextBox ID="FirstNametxt" runat="server" CssClass="form-control" placeholder="FirstName"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ValidationGroup="regist" ControlToValidate="FirstNametxt" ForeColor="Red" ErrorMessage="Enter UserName" Display="Dynamic"></asp:RequiredFieldValidator>

                                            <asp:TextBox ID="LastNametxt" runat="server" CssClass="form-control" placeholder="LastName"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ValidationGroup="regist" ControlToValidate="LastNametxt" ForeColor="Red" ErrorMessage="Enter UserName" Display="Dynamic"></asp:RequiredFieldValidator>


                                            <asp:TextBox ID="Emailtxt" runat="server" CssClass="form-control" placeholder="Email Id"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="rfvEmailId" ErrorMessage="Enter Email ID" ControlToValidate="Emailtxt" runat="server" ForeColor="Red" ValidationGroup="regist" />
                                            <asp:RegularExpressionValidator ID="rfvEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Emailtxt" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationGroup="regist"></asp:RegularExpressionValidator>


                                            <asp:TextBox ID="Passtxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="Passtxt" ErrorMessage="Enter Password" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="revpwd" runat="server" ErrorMessage="Password length must be between 7 to 10 characters" ControlToValidate="Passtxt" ValidationGroup="regist" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$" />

                                            <asp:TextBox ID="CPasstxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Pasword"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="rfvcpwd" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="CPasstxt" ErrorMessage="Enter Confirm Password " Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="cmpvpwd" runat="server" ControlToValidate="CPasstxt" CssClass="ValidationError" ControlToCompare="Passtxt" ErrorMessage="No Match" ToolTip="Password must be the same" />

                                            <asp:TextBox ID="mobiletxt" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox><br />
                                            <asp:RequiredFieldValidator ID="rfvmbl" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="mobiletxt" ErrorMessage="Enter Mobile Number" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="revphn" runat="server" ValidationGroup="regist" ControlToValidate="mobiletxt" ValidationExpression="[0-9]{10}" Text="Enter a valid phone number"></asp:RegularExpressionValidator>



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
