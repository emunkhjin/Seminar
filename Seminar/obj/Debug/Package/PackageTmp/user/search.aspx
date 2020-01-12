<%@ Page Title="" Language="C#" MasterPageFile="~/user/users.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Seminar.user.search1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hudaldaaConnectionString1 %>" SelectCommand="SELECT [product_name], [Id] FROM [product] WHERE ([product_name] LIKE '%' + @product_name + '%')">
          <SelectParameters>
              <asp:ControlParameter ControlID="TextBox1" Name="product_name" PropertyName="Text" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>




      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:TemplateField HeaderText="product_name" SortExpression="product_name">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("product_name") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                     <a href="/user/product_desc.aspx?id=<%# Eval("Id") %>"> <asp:Label ID="Label1" runat="server" Text='<%# Bind("product_name") %>'></asp:Label> </a>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                  <EditItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                  </EditItemTemplate>
                  <ItemTemplate>
                     <%-- <asp:Label ID="Label2" runat="server" Text='<%# Bind("Id") %>'></asp:Label>--%>
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:GridView>




  </div>

</div>
<!-- Card -->
       
             </form>
    
</asp:Content>
