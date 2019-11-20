<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="search.ascx.cs" Inherits="Seminar.user.search" %>


    <!-- Modal -->
<div class="modal fade" id="searchbox" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true" runat="server">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Хайх</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          


<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id"></asp:DropDownList>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connect %>' SelectCommand="SELECT [Id], [product_name] FROM [product]"></asp:SqlDataSource>
   


                  

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<script>

        $('#<%=DropDownList1.ID%>').mdbDropSearch();
        </script>