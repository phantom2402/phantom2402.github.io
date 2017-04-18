<%@ Page Title="Sản Phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="sanpham.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" GridLines="None" Width="100%">
        <Columns>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
            <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
            <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
            <asp:BoundField DataField="MaDanhMuc" HeaderText="MaDanhMuc" SortExpression="MaDanhMuc" />
            <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([TenSP], [MoTa], [MaDanhMuc], [Gia]) VALUES (@TenSP, @MoTa, @MaDanhMuc, @Gia)" SelectCommand="SELECT [MaSP], [TenSP], [MoTa], [MaDanhMuc], [Gia] FROM [SanPham] ORDER BY [MaSP]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [MoTa] = @MoTa, [MaDanhMuc] = @MaDanhMuc, [Gia] = @Gia WHERE [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaSP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="MaDanhMuc" Type="Int32" />
            <asp:Parameter Name="Gia" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="MaDanhMuc" Type="Int32" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="MaSP" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>