<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="sree7.book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <%-- <div>
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
                <td class="auto-style2">Room Name</td>
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
                <td class="auto-style2">Quantity</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
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
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Rooms</td>
                <td>
                    <asp:Label ID="Rooms" runat="server"  Text="Label"></asp:Label>
                    <asp:TextBox ID="t" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Total Price</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="29px" Text="Update" Width="70px" />
                </td>
            </tr>
        </table>
    
    </div>--%>
       
   
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="SREE7"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="You Have Added Fallowing Products in Your Cart"></asp:Label>
        <br />
        <br />
        <br />
       <%-- <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/shop.aspx">Continue Shopping</asp:HyperLink>--%>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Room_Id" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Room_Id" HeaderText="Room_Id" InsertVisible="False" ReadOnly="True" SortExpression="Room_Id">
                </asp:BoundField>
                <asp:BoundField DataField="Room_No" HeaderText="Room_No" SortExpression="Room_No">
                </asp:BoundField>
                <asp:BoundField DataField="Room_Type" HeaderText="Room_Type" SortExpression="Room_Type">
                </asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                </asp:BoundField>
                <asp:BoundField DataField="Room_Image" HeaderText="Room_Image" SortExpression="Room_Image">
                </asp:BoundField>
                <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath">
                </asp:BoundField>
                <asp:BoundField DataField="Rooms" HeaderText="Rooms" SortExpression="Rooms" />
                <asp:BoundField DataField="Guest" HeaderText="Guest" SortExpression="Guest" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click"  Text="Check Out..." Width="142px" />
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sree7ConnectionString3 %>" SelectCommand="SELECT * FROM [TblRoom] WHERE ([Room_Type] = @Room_Type)">
            <SelectParameters>
                <asp:SessionParameter Name="Room_Type" SessionField="buyitems" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
   
    </form>
</body>
</html>
