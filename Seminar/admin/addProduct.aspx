<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addProduct.aspx.cs" Inherits="Seminar.admin.addProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="frm" runat="server">


        <!-- Card -->
<div class="card card-cascade wider reverse">



  <!-- Card content -->
  <div class="card-body card-body-cascade text-center">
       
    <!-- Title -->
    <h4 class="card-title"><strong>Бараа нэмэх</strong></h4>
    
        
<div class="md-form input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text md-addon" id="proname">Product name</span>
  </div>
    <asp:TextBox ID="Tproductname" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="prodname" runat="server"></asp:TextBox>

</div>

              
<div class="md-form input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text md-addon" id="catename">Cat name</span>
  </div>
    <asp:TextBox ID="catname" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="catename" runat="server"></asp:TextBox>

</div>


<div class="md-form input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text md-addon" id="prodesc">Product description</span>
  </div>
    <asp:TextBox ID="Tproductdesc" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="prodesc" runat="server"></asp:TextBox>
</div>

<div class="md-form input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text md-addon" id="proprice">Product price</span>
  </div>
    <asp:TextBox ID="Tproductprice" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="proprice" runat="server"></asp:TextBox>
</div>
      
<div class="md-form input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text md-addon" id="proqty">Product quantity</span>
  </div>
    <asp:TextBox ID="Tproductqty" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="proqty" runat="server"></asp:TextBox>
</div>

<div class="card indigo text-center z-depth-2 light-version py-4 px-5">
  <div class="md-form" >
    <div class="file-field">
      <div class="btn btn-outline-white waves-effect btn-sm float-left">
        <span>Choose file<i class="fas fa-cloud-upload-alt ml-3" aria-hidden="true"></i></span>
          <asp:FileUpload ID="f1" runat="server" />
      </div>
     
    </div>
  </div>
    </div>


           <%-- <tr>
                <td>Product img </td>
                <td>
                    <asp:FileUpload ID="f1" runat="server" />
                </td>
            </tr>--%>

 
                    <asp:Button ID="Button1" class="btn blue-gradient" runat="server" Text="Upload" OnClick="Button1_Click" />


    

  </div>

</div>
<!-- Card -->

    </form>
</asp:Content>
