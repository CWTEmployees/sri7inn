<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="TransactionPage.aspx.cs" Inherits="sree7.Admin.TransactionPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="col-sm-10">

            <form class="form-horizontal" runat="server" style="margin-left: 200px;">

                <div class="form-group">

                    <label class="col-md-3 control-label">SELECT DATE</label>
                    <div class="col-md-5">

                        <asp:ScriptManager ID="sm1" runat="server">
                        </asp:ScriptManager>
                        <%-- <asp:TextBox ID="txtTransDate" runat="server" class="form-control input-md"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="true" TargetControlID="txtTransDate" />
                        <asp:RequiredFieldValidator ID="rfvtransdate" runat="server" ForeColor="Red" ErrorMessage="Select Date" ControlToValidate="txtTransDate" ValidationGroup="Transaction"></asp:RequiredFieldValidator>--%>

                        <asp:TextBox ID="txtcheckin" runat="server" class="form-control input-md"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" Enabled="true" TargetControlID="txtcheckin" Format="dd-MM-yyyy" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Select Date" ControlToValidate="txtcheckin" ValidationGroup="Transaction"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="txtcheckout" runat="server" class="form-control input-md"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" Enabled="true" TargetControlID="txtcheckout" Format="dd-MM-yyyy" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Select Date" ControlToValidate="txtcheckout" ValidationGroup="Transaction"></asp:RequiredFieldValidator>


                        <asp:Button ID="btnTrans" runat="server" CssClass="btn btn-info button6" Text="Get Transactions" OnClick="btnTrans_Click" ValidationGroup="Transaction" />
                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />

                <asp:GridView ID="TrancView" runat="server" AutoGenerateColumns="False" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Height="158px" Width="853px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Reservation_Id" HeaderText="Reservation Id" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="contact" HeaderText="Mobile No" />
                        <asp:BoundField DataField="RoomType" HeaderText="RoomType" />
                        <asp:BoundField DataField="Guest" HeaderText="Guest" />
                        <asp:BoundField DataField="Check_In" HeaderText="Check In" DataFormatString="{0:d}" HtmlEncode="false" />
                        <asp:BoundField DataField="Check_Out" HeaderText="Check Out" DataFormatString="{0:d}" HtmlEncode="false" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                        <asp:BoundField DataField="Rooms" HeaderText="Rooms" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sree7ConnectionString5 %>" SelectCommand="SELECT * FROM [TblReservation]"></asp:SqlDataSource>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="total" runat="server" Text="Total Amount :" Visible="false"></asp:Label>
                            <asp:Label ID="lbltotal" runat="server" ForeColor="Red" Text="" Visible="false"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lbltrns" runat="server"></asp:Label>

            </form>
        </div>
    </div>
</asp:Content>
