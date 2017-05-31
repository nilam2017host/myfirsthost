<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="simpleHost._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="countryId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="398px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="countryId" HeaderText="countryId" InsertVisible="False" ReadOnly="True" SortExpression="countryId" />
                <asp:BoundField DataField="countryName" HeaderText="countryName" SortExpression="countryName" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" DeleteCommand="DELETE FROM [tblCountry] WHERE [countryId] = @countryId" InsertCommand="INSERT INTO [tblCountry] ([countryName]) VALUES (@countryName)" SelectCommand="SELECT * FROM [tblCountry]" UpdateCommand="UPDATE [tblCountry] SET [countryName] = @countryName WHERE [countryId] = @countryId">
            <DeleteParameters>
                <asp:Parameter Name="countryId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="countryName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="countryName" Type="String" />
                <asp:Parameter Name="countryId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="countryId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="50px" Width="414px">
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="countryId" HeaderText="countryId" InsertVisible="False" ReadOnly="True" SortExpression="countryId" />
                <asp:BoundField DataField="countryName" HeaderText="countryName" SortExpression="countryName" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>
    </div>
    </form>
</body>
</html>
