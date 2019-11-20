<%@ Page Title="" Language="C#" MasterPageFile="~/user/users.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Seminar.user.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <style>
        .img{
  height : 100px;
  width : 100px;
}
    </style>
    <form id="form1" runat="server">
        <asp:GridView ID="gvShoppingCart" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="gvShoppingCart_RowCancelingEdit" OnRowDeleting="gvShoppingCart_RowDeleting" OnRowEditing="gvShoppingCart_RowEditing" OnRowUpdating="gvShoppingCart_RowUpdating" OnSelectedIndexChanged="gvShoppingCart_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="product_name" HeaderText="Product Name" ReadOnly="True" />
                <asp:ImageField DataImageUrlField="product_images" DataImageUrlFormatString="\..\{0}"  HeaderText="Image" ReadOnly="True">
                    <ControlStyle Height="100px" Width="100px" />
                    <ItemStyle Height="50px" Width="50px" />
                </asp:ImageField>
                <%--<asp:ImageField DataImageUrlField="product_image" DataImageUrlFormatString="&quot;~\..\images\{0}&quot;" HeaderText="Image" ReadOnly="True">
                </asp:ImageField>--%>
                <asp:BoundField DataField="product_price" HeaderText="Price" ReadOnly="True" />
                <asp:BoundField DataField="product_qty" HeaderText="Quantity" ReadOnly="True" />
                <asp:TemplateField HeaderText="Total">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("product_price").ToString())*Int32.Parse(Eval("product_qty").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblGrandTotal" runat="server" Visible="False"></asp:Label>
    </form>
</asp:Content>
