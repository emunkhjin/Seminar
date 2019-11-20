<%@ Page Title="" Language="C#" MasterPageFile="~/user/users.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Seminar.user.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">
        <asp:DataList ID="d1Category" runat="server">
             <HeaderTemplate>
          <section>

                    <!--Grid row-->
                    <div class="row">

                                       
        </HeaderTemplate>
        <itemtemplate>
             <!--Grid column-->
                                        <div class="col-lg-4 col-md-12 mb-4">
            <!--Card-->
                                            <div class="card card-ecommerce">

                                                <!--Card image-->
                                                <div class="view overlay">
                                                    <img src="../<%#Eval("product_images") %>" class="img-fluid" alt="sample image">
                                                    <a>
                                                        <div class="mask rgba-white-slight"></div>
                                                    </a>
                                                </div>
                                                <!--Card image-->

                                                <!--Card content-->
                                                <div class="card-body">
                                                    <!--Category & Title-->

                                                    <h5 class="card-title mb-1">
                                                        <strong>
                                                            <a href="product_desc.aspx?id=<%#Eval("id") %>" class="dark-grey-text"><%#Eval("product_name") %></a>
                                                        </strong>
                                                    </h5>
                                                    <span class="badge badge-danger mb-2"><%#Eval("product_price") %></span>
                                                    <!--Card footer-->
                                                    <div class="card-footer pb-0">
                                                        <div class="row mb-0">
                                                            <span class="float-left">
                                                                <strong><%#Eval("Category_ID") %></strong>
                                                            </span>
                                                            <span class="float-right">
                                                                <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                                                    <i class="fas fa-shopping-cart ml-3"></i>
                                                                </a>
                                                            </span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <!--Card content-->

                                            </div>
                                            <!--Card-->
                                             </div>
        </itemtemplate>
        <FooterTemplate>
               <!--Grid column-->

                                    </div>
                                    <!--Grid row-->

                                </div>
                                <!--/.Panel 3-->
                            </div>

                        </div>

                    </div>
                    <!--Grid row-->

                </section>
        </FooterTemplate>
        </asp:DataList>
        </form>
</asp:Content>
