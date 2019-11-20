<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addCategory.aspx.cs" Inherits="Seminar.admin.addCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <form id="frm" runat="server">


        <!-- Card -->
<div class="card card-cascade wider reverse">



  <!-- Card content -->
  <div class="card-body card-body-cascade text-center">

    <!-- Title -->
    <h4 class="card-title"><strong>Cat нэмэх</strong></h4>
    
       

<div class="md-form input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text md-addon" id="proname">cat name</span>
  </div>
    <asp:TextBox ID="Tproductname" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="prodname" runat="server"></asp:TextBox>
</div>
 
                    <asp:Button ID="Button1" class="btn blue-gradient" runat="server" Text="Upload" OnClick="Button1_Click" />


    

  </div>

</div>
<!-- Card -->

    </form>
</asp:Content>
