<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="sree7.Admin.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<%--       <script type="text/javascript">
        $(function () {
            $('[id*=btnPayment]').hide();

            document.getElementById('rdbPay').c
            //$("[id*=rdbPay]").(function () {
                $('[id*=btnPayment]').show();

                return false;
            });
        });
    </script>--%>
    <script type="text/javascript">
        function frm(a) {
            if (a == 1) {
                document.getElementById("details").style.display = "none";
            }
            else {
                document.getElementById("details").style.display = "block";
            }
        }
    </script>

    <form id="paymnet">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg- col-md-11">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Edit Details</h4>
                            </div>
                            <div class="content">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Enter Order Id :</label>
                                            <asp:TextBox ID="txtOrderid" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <br />
                                            <asp:Button ID="btnGet" runat="server" Text="Get" class="btn btn-info btn-fill btn-wd" OnClick="btnGet_Click" />

                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <asp:Label ID="lblname" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact</label>
                                            <asp:Label ID="lblcntct" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Room Type</label>
                                            <asp:Label ID="lblroomtype" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Rooms</label>
                                            <asp:Label ID="lblrooms" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Checkin Date</label>
                                            <asp:Label ID="lblcheckin" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Checkout Date</label>
                                            <asp:Label ID="lblcheckout" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Guests</label>
                                            <asp:Label ID="lblguests" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Price</label>
                                            <asp:Label ID="lblprice" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:RadioButtonList ID="rdbPay" runat="server" OnSelectedIndexChanged="rdbPay_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="true">
                                                <asp:ListItem Text="Cash" Value="Cash" style="margin: 20px"></asp:ListItem>
                                                <asp:ListItem Text="Online" Value="Online"></asp:ListItem>
                                            </asp:RadioButtonList>
                                           
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtamount" runat="server" class="form-control border-input" placeholder="Enter Amount" Visible="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <asp:Label ID="lblupdate" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>



                                <div class="text-center">
                                    <asp:Button ID="btnPayment" runat="server" Text="Payment" class="btn btn-info btn-fill btn-wd" Visible="false" OnClick="btnPayment_Click" />
                                </div>

                                <div class="clearfix"></div>
                                </>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </form>
</asp:Content>
