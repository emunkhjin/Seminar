<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sidemenu.ascx.cs" Inherits="Seminar.user.sidemenu" %>





        <!-- Modal -->
<%--<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Хайх</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div id="frm" runat="server">
    
              <div class="md-form">
  <input ID="TextBox1" runat="server" type="text"  class="form-control">
  <label for="TextBox1">хайх зүйлээ энд бичнэ үү</label>
</div>


              <div class="md-form">
              <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
              

  <label for="TextBox1">хайх зүйлээ энд бичнэ үү</label>
</div>
          <asp:Button ID="Button1" runat="server" Text="Хайх" class="btn btn-outline-primary btn-rounded waves-effect" />


          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="Хайлт илэрцгүй" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                  <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hudaldaaConnectionString1 %>" DeleteCommand="DELETE FROM [product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [product] ([product_name]) VALUES (@product_name)" SelectCommand="SELECT [Id], [product_name] FROM [product] WHERE ([product_name] LIKE '%' + @product_name + '%')" UpdateCommand="UPDATE [product] SET [product_name] = @product_name WHERE [Id] = @Id">
              <DeleteParameters>
                  <asp:Parameter Name="Id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="product_name" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="TextBox1" Name="product_name" PropertyName="Text" Type="String" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="product_name" Type="String" />
                  <asp:Parameter Name="Id" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>


              </div>
      
    </div>
  </div>
</div>
</div>
          --%>



      


    <!--Navigation-->
    <header>






        

          






        <!--/. Sidebar navigation -->
        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg  navbar-light scrolling-navbar white">
            <div class="container">
                <!-- SideNav slide-out button -->
                <div class="float-left mr-2">
                    <a href="#" class="button-collapse"><i class="fas fa-store"></i></a>
                </div>
                <a class="navbar-brand font-weight-bold" href="/user/display_item.aspx"><strong>ABC хувцасны дэлгүүр</strong></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4"
                    aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                
                <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
                    <ul class="navbar-nav ml-auto">
                         
                        <li class="nav-item ml-3">
                            <a data-toggle="modal" <%--data-target="#basicExampleModal"--%> class="nav-link waves-effect waves-light dark-grey-text font-weight-bold" href="/user/search.aspx"><i class="fas fa-search"></i> Хайх </a>
                        </li>
                       
                          <li class="nav-item ml-3">
                            <a class="nav-link waves-effect waves-light dark-grey-text font-weight-bold" href="/user/ShoppingCart.aspx"><i class="fas fa-shopping-cart"></i> Сагс </a>
                        </li>
                       <%-- <li class="nav-item dropdown ml-3">
                            <a class="nav-link dropdown-toggle dark-grey-text font-weight-bold" id="navbarDropdownMenuLink-4" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false"><i class="fas fa-user blue-text"></i> Profile </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="navbarDropdownMenuLink-4">
                                <a class="dropdown-item waves-effect waves-light" href="#">My account</a>
                                <a class="dropdown-item waves-effect waves-light" href="#">Log out</a>
                            </div>
                        </li>--%>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /.Navbar -->

    </header>
    <!-- /.Navigation -->

