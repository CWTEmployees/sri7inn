<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="sree7.Admin.OrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=lblOrderid]').hide();
            $('[id*=txtname]').hide();
            //$('[id*=txtuserid]').hide();
            $('[id*=txtEmail]').hide();
            $('[id*=txtcntct]').hide();
            $('[id*=txtRoomId]').hide();
            $('[id*=txtroomtype]').hide();
            $('[id*=txtrooms]').hide();
            //$('[id*=txtcheckin]').hide();
            //$('[id*=txtcheckout]').hide();
            $('[id*=txtguests]').hide();
            $('[id*=txtprice]').hide();
            $('[id*=txtsno]').hide();
            $('[id*=txtaddress]').hide();
            $('[id*=savedata]').hide();
            $('[id*=btnCancle]').hide();

            $("[id*=btnupdate]").click(function () {
                $('[id*=txtOrderid]').hide();
                $('[id*=Get]').hide();
                $('[id*=lblname]').hide();
                //$('[id*=lbluserid]').hide();
                $('[id*=lblEmail]').hide();
                $('[id*=lblcntct]').hide();
                $('[id*=lblRoomId]').hide();
                $('[id*=lblroomtype]').hide();
                $('[id*=Lblrooms]').hide();
                $('[id*=lblcheckin]').show();
                $('[id*=lblcheckout]').show();
                $('[id*=lblguests]').hide();
                $('[id*=lblprice]').hide();
                $('[id*=lblsno]').hide();
                $('[id*=lbladdress]').hide();
                $('[id*=btnupdate]').hide();


                $('[id*=lblOrderid]').val($('[id*=txtOrderid]').html().trim());
                $('[id*=txtname]').val($('[id*=lblname]').html().trim());
                //$('[id*=txtuserid]').val($('[id*=lbluserid]').html().trim());
                $('[id*=txtEmail]').val($('[id*=lblEmail]').html().trim());
                $('[id*=txtcntct]').val($('[id*=lblcntct]').html().trim());
                $('[id*=txtRoomId]').val($('[id*=lblRoomId]').html().trim());
                $('[id*=txtroomtype]').val($('[id*=lblroomtype]').html().trim());
                $('[id*=txtrooms]').val($('[id*=Lblrooms]').html().trim());
                //$('[id*=txtcheckin]').val($('[id*=lblcheckin]').html().trim());
                //$('[id*=txtcheckout]').val($('[id*=lblcheckout]').html().trim());
                $('[id*=txtguests]').val($('[id*=lblguests]').html().trim());
                $('[id*=txtprice]').val($('[id*=lblprice]').html().trim());
                $('[id*=txtsno]').val($('[id*=lblsno]').html().trim());
                $('[id*=txtaddress]').val($('[id*=lbladdress]').html().trim());


                $('[id*=lblOrderid]').show();
                $('[id*=txtname]').show();
                //$('[id*=txtuserid]').show();
                $('[id*=txtEmail]').show();
                $('[id*=txtcntct]').show();
                $('[id*=txtRoomId]').show();
                $('[id*=txtroomtype]').show();
                $('[id*=txtrooms]').show();
                //$('[id*=txtcheckin]').show();
                //$('[id*=txtcheckout]').show();
                $('[id*=txtguests]').show();
                $('[id*=txtprice]').show();
                $('[id*=txtsno]').show();
                $('[id*=txtaddress]').show();
                $('[id*=savedata]').show();
                $('[id*=btnCancle]').show();
                return false;
            });
        });
    </script>

    <form id="orderdetail">
        <asp:ScriptManager ID="OrderSM" runat="server"></asp:ScriptManager>
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
                                            <asp:Label ID="lblOrderid" runat="server" class="form-control border-input" Text="" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtOrderid" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <br />
                                            <asp:Button ID="Get" runat="server" Text="Get" class="btn btn-info btn-fill btn-wd" OnClick="Get_Click" />
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <asp:Label ID="lblname" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtname" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                 <%--   <div class="col-md-6">
                                        <div class="form-group">
                                            <label>UserId</label>
                                            <asp:Label ID="lbluserid" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtuserid" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>--%>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <asp:Label ID="lblEmail" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtEmail" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact</label>
                                            <asp:Label ID="lblcntct" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtcntct" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Room Id</label>
                                            <asp:Label ID="lblRoomId" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtRoomId" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Room Type</label>
                                            <asp:Label ID="lblroomtype" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtroomtype" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Rooms</label>
                                            <asp:Label ID="Lblrooms" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtrooms" runat="server" class="form-control border-input"></asp:TextBox>
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
                                            <asp:TextBox ID="txtguests" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Price</label>
                                            <asp:Label ID="lblprice" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtprice" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>S.No </label>
                                            <asp:Label ID="lblsno" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtsno" runat="server" class="form-control border-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Address</label>
                                            <asp:Label ID="lbladdress" runat="server" Text="" class="form-control border-input" Style="overflow: hidden; white-space: nowrap"></asp:Label>
                                            <asp:TextBox ID="txtaddress" runat="server" class="form-control border-input"></asp:TextBox>
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
                                    <asp:Button ID="btnupdate" runat="server" Text="Update Profile" class="btn btn-info btn-fill btn-wd" />
                                    <asp:Button ID="savedata" runat="server" Text="Save Profile" class="btn btn-info btn-fill btn-wd" OnClick="savedata_Click" ValidationGroup="userprfl" />
                                    <asp:Button ID="btnCancle" runat="server" Text="Cancle" class="btn btn-info btn-fill btn-wd" CausesValidation="false" />
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
