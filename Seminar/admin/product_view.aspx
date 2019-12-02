<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="product_view.aspx.cs" Inherits="Seminar.admin.product_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
         
<!-- Card -->
<div class="card card-cascade wider reverse d-flex p-2 col-example">


  <!-- Card content -->
  <div class="card-body card-body-cascade text-center">

                    <div class="md-form">
              <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
  <label for="TextBox1">хайх зүйлээ энд бичнэ үү</label>
</div>

          <asp:Button ID="Button1" runat="server" Text="Хайх" class="btn btn-outline-primary btn-rounded waves-effect" />

 <%--     <asp:Button ID="Button1" runat="server" Text="Button" />--%>
     <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hudaldaaConnectionString1 %>" SelectCommand="SELECT [Id], [product_name], [product_desc], [product_price], [product_qty], [product_images], [Category_ID] FROM [product]">
      </asp:SqlDataSource>



      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">  
                            
      <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"  OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" EmptyDataText="There are no data records to display." CellPadding="3" AllowSorting="True" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
       --%>   <Columns>
              <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
              <asp:BoundField DataField="product_name" HeaderText="Барааны нэр" SortExpression="product_name"></asp:BoundField>
              <asp:BoundField DataField="product_desc" HeaderText="Барааны дэлгэрэнгүй" SortExpression="product_desc"></asp:BoundField>
              <asp:BoundField DataField="product_price" HeaderText="Үнэ" SortExpression="product_price"></asp:BoundField>
              <asp:BoundField DataField="product_qty" HeaderText="Тоо ширхэг" SortExpression="product_qty"></asp:BoundField>
              <asp:BoundField DataField="product_images" HeaderText="Зураг" SortExpression="product_images"></asp:BoundField>
              <asp:BoundField DataField="Category_ID" HeaderText="Ангилал" SortExpression="Category_ID"></asp:BoundField>

              <asp:CommandField></asp:CommandField>
              <asp:CommandField ShowEditButton="True"></asp:CommandField>
              <asp:CommandField ShowSelectButton="True"></asp:CommandField>
          </Columns>
          <FooterStyle BackColor="White" ForeColor="#000066" />
          <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
          <RowStyle ForeColor="#000066" />
          <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#007DBB" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#00547E" />
      </asp:GridView>




  </div>

</div>
<!-- Card -->
    </form>
</asp:Content>
