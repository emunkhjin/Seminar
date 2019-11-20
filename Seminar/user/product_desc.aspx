<%@ Page Title="" Language="C#" MasterPageFile="~/user/users.Master" AutoEventWireup="true" CodeBehind="product_desc.aspx.cs" Inherits="Seminar.user.product_desc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        
     <asp:Repeater ID="d1" runat="server" >
        <HeaderTemplate>
       <div class="container mt-5 pt-3">

    <!--Section: Product detail -->
    <section id="productDetails" class="pb-5">

      <!--News card-->
      <div class="card mt-5 hoverable">
        <div class="row mt-5">
          <div class="col-lg-6">
              <!--Carousel Wrapper-->
            <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">

        </HeaderTemplate>
        <itemtemplate>
             <!--Slides-->
              <div class="carousel-inner text-center text-md-left" role="listbox">
                <div class="carousel-item active">
                  <img src="../<%#Eval("product_images") %>" alt="First slide" class="img-fluid">
                </div>
                <div class="carousel-item">
                  <img src="../<%#Eval("product_images") %>" alt="Second slide" class="img-fluid">
                </div>
                <div class="carousel-item">
                  <img src="../<%#Eval("product_images") %>" alt="Third slide" class="img-fluid">
                </div>
              </div>
              <!--/.Slides-->

              <!--Thumbnails-->
              <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
              <!--/.Thumbnails-->

            </div>
            <!--/.Carousel Wrapper-->
          </div>
          <div class="col-lg-5 mr-3 text-center text-md-left">
            <h2 class="h2-responsive text-center text-md-left product-name font-weight-bold dark-grey-text mb-1 ml-xl-0 ml-4">
              <strong>Барааны нэр :  <%#Eval("product_name") %></strong>
            </h2>
            <span class="badge badge-danger product mb-4 ml-xl-0 ml-4"><%#Eval("Category_ID") %></span>
            <h3 class="h3-responsive text-center text-md-left mb-5 ml-xl-0 ml-4">
              <span class="red-text font-weight-bold">
                <strong><%#Eval("product_price") %> төгрөг</strong>
              </span>
              <%--<span class="grey-text">
                <small>
                  <s>$89</s>
                </small>
              </span>--%>
            </h3>
              <!--Accordion wrapper-->
            <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="headingOne1">
                  <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
                    <h5 class="mb-0">
                      Тайлбар 
                      <i class="fas fa-angle-down rotate-icon"></i>
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1" data-parent="#accordionEx">
                  <div class="card-body">
                     <%#Eval("product_desc") %>
                  </div>
                </div>
              </div>
              <!-- Accordion card -->
            </div>
            <!--/.Accordion wrapper-->
                          <!-- Add to Cart -->
            <section class="color">
              <div class="mt-5">
                <p class="grey-text">Худалдаж авах </p>
                  <asp:Button ID="addtocart" runat="server" type="button" class="btn peach-gradient btn-lg" Text="Add to cart" OnClick="Button1_Click1" />

                      
    
                
              </div>
            </section>
            <!-- /.Add to Cart -->
        </itemtemplate>
        <FooterTemplate>
                  </div>
        </div>
      </div>
    </section>
        </FooterTemplate>
    </asp:Repeater>
       
         
                      
      </form>
</asp:Content>
