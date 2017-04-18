<%@ Page Title="Hóa Đơn" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadon.aspx.cs" Inherits="hoadon" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="MaHD" DataSourceID="SqlDataSource1" GridLines="None">
        <Columns>
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" InsertVisible="False" ReadOnly="True" SortExpression="MaHD" />
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
            <asp:BoundField DataField="NgayBan" HeaderText="NgayBan" SortExpression="NgayBan" />
            <asp:BoundField DataField="NgayGiao" HeaderText="NgayGiao" SortExpression="NgayGiao" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:CheckBoxField DataField="TrangThai" HeaderText="TrangThai" SortExpression="TrangThai" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (@MaKH, @NgayBan, @NgayGiao, @DiaChi, @TrangThai)" SelectCommand="SELECT [MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai] FROM [HoaDon] ORDER BY [MaHD]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [NgayBan] = @NgayBan, [NgayGiao] = @NgayGiao, [DiaChi] = @DiaChi, [TrangThai] = @TrangThai WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="NgayBan" Type="DateTime" />
            <asp:Parameter Name="NgayGiao" Type="DateTime" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="NgayBan" Type="DateTime" />
            <asp:Parameter Name="NgayGiao" Type="DateTime" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="MaHD" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

