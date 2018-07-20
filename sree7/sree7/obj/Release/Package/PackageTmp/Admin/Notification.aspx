<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="sree7.Admin.Notification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">

        <div class="content">
            <div class="container-fluid">
                <div class="card nbg-1" style="padding: 20px; margin-top: 20px;">
                    <div class="header">
                        <h3 class="title" style="color: black; text-align: left;">Notifications</h3>
                        <hr />
                        <asp:TextBox ID="Msg" runat="server" CssClass="form-control" placeholder="Enter Message" TextMode="MultiLine" Height="200px" BorderStyle="Double" BorderColor="WindowFrame"></asp:TextBox>
                        <asp:TextBox ID="emal" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                        <asp:TextBox ID="Name" runat="server" CssClass="form-control" placeholder="entername" Visible="false"></asp:TextBox>



                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-6">
                            </div>
                            <div class="col-md-6">
                                <div>
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                                </div>
                                <asp:Button ID="btn" runat="server" CssClass="btn btn-info button6" Text="Send" OnClick="btn_Click" />
                            </div>
                        </div>
                        <br />
                        <br />

                    </div>
                </div>
            </div>
        </div>

    </form>
    <script type="text/javascript">
        function checkAll(objRef) {
            var GridView = objRef.parentNode.parentNode.parentNode;
            var inputList = GridView.getElementsByTagName("input");
            for (var i = 0; i < inputList.length; i++) {
                var row = inputList[i].parentNode.parentNode;
                if (inputList[i].type == "checkbox" && objRef != inputList[i]) {
                    if (objRef.checked) {
                        inputList[i].checked = true;
                    }
                    else {
                        if (row.rowIndex % 2 == 0) {

                        }

                        else {
                        }
                        inputList[i].checked = false;
                    }
                }
            }
        }
    </script>
</asp:Content>
