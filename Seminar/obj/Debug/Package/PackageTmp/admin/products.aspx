<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Seminar.admin.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <asp:Repeater ID="adminProducts" runat="server">
        <HeaderTemplate>
            </br>
            </br>
            </br>
            </br>
            </br>
<!--Table-->
<table id="tablePreview" class="table table-striped table-hover table-sm table-bordered">
<!--Table head-->
  <thead>
    <tr>
      <th># ID</th>
      <th>Product Name</th>
      <th>Product Description</th>
      <th>Category</th>
      <th>Price</th>
      <th>Quantity</th>
    </tr>
  </thead>
     <tbody>
  <!--Table head-->        
        </HeaderTemplate>
        <itemtemplate>
              
    <tr>
      <th scope="row"><%#Eval("id") %></th>
      <td><%#Eval("product_name") %></td>
      <td><%#Eval("product_desc") %></td>
      <td>1</td>
      <td><%#Eval("product_price") %></td>
      <td><%#Eval("product_qty") %></td>
    
    </tr>
   
        </itemtemplate>
        <FooterTemplate>
             <tr>
    
  </tbody>
             </table>
        </FooterTemplate>
    </asp:Repeater>

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
