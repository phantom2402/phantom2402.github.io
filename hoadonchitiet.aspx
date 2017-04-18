<%@ Page Title="Hóa Đơn Chi Tiết" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadonchitiet.aspx.cs" Inherits="hoadonchitiet" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="MaHD,MaSP" DataSourceID="SqlDataSource1" GridLines="None" Width="100%">
        <Columns>
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
            <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
            <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaHD] = @MaHD AND [MaSP] = @MaSP" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaHD], [MaSP], [Soluong], [DonGia]) VALUES (@MaHD, @MaSP, @Soluong, @DonGia)" SelectCommand="SELECT [MaHD], [MaSP], [Soluong], [DonGia] FROM [ChiTietHoaDon] ORDER BY [MaHD]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [Soluong] = @Soluong, [DonGia] = @DonGia WHERE [MaHD] = @MaHD AND [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
            <asp:Parameter Name="MaSP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
            <asp:Parameter Name="MaSP" Type="Int32" />
            <asp:Parameter Name="Soluong" Type="Int16" />
            <asp:Parameter Name="DonGia" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Soluong" Type="Int16" />
            <asp:Parameter Name="DonGia" Type="Decimal" />
            <asp:Parameter Name="MaHD" Type="Int32" />
            <asp:Parameter Name="MaSP" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

