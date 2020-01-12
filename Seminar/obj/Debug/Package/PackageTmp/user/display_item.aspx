<%@ Page Title="" Language="C#" MasterPageFile="~/user/users.Master" AutoEventWireup="true" CodeBehind="display_item.aspx.cs" Inherits="Seminar.user.display_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <div class="card">
  <h5 class="card-header h5">Шинэ бараа</h5>
  <div class="card-body">
    <asp:Repeater ID="d1" runat="server">
        
      
        <HeaderTemplate>
          <section class="text-center my-5">
            <div class="row">
                                       
        </HeaderTemplate>
        <itemtemplate>
            <!-- Grid column -->
    <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
      <!-- Collection card -->
      <div class="card collection-card z-depth-1-half">
          <!-- Card image -->
        <div class="view zoom">
          <img src="../<%#Eval("product_images") %>" class="img-thumbnail"
            alt="">
          <div class="stripe dark">
            <a href="product_desc.aspx?id=<%#Eval("id") %>" class="dark-grey-text"> <p><%#Eval("product_name") %>
                <i class="fas fa-angle-right"></i>
              </p></a>
              
              
           
          </div>
            </div>
               </div>
      <!-- Collection card -->
    </div>

                                               

        </itemtemplate>
        <FooterTemplate>
               <!--Grid column-->

                            </div>
  <!-- Grid row -->

</section>

        </FooterTemplate>
    </asp:Repeater>
  </div>
</div>
    
    
    
    
    
</asp:Content>

