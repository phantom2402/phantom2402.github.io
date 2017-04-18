<%@ Page Title="Loại Sản Phẩm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="loaisanpham.aspx.cs" Inherits="loaisanpham" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="MaLoai" DataSourceID="SqlDataSource1" GridLines="None" Width="100%">
        <Columns>
            <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" InsertVisible="False" ReadOnly="True" SortExpression="MaLoai" />
            <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
            <asp:BoundField DataField="LoaiCha" HeaderText="LoaiCha" SortExpression="LoaiCha" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiSP] ([TenLoai], [LoaiCha]) VALUES (@TenLoai, @LoaiCha)" SelectCommand="SELECT [MaLoai], [TenLoai], [LoaiCha] FROM [LoaiSP] ORDER BY [MaLoai]" UpdateCommand="UPDATE [LoaiSP] SET [TenLoai] = @TenLoai, [LoaiCha] = @LoaiCha WHERE [MaLoai] = @MaLoai">
        <DeleteParameters>
            <asp:Parameter Name="MaLoai" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenLoai" Type="String" />
            <asp:Parameter Name="LoaiCha" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLoai" Type="String" />
            <asp:Parameter Name="LoaiCha" Type="Int32" />
            <asp:Parameter Name="MaLoai" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </asp:Content>

