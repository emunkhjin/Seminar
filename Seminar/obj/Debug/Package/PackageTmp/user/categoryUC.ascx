<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="categoryUC.ascx.cs" Inherits="Seminar.user.categoryUC" %>
<section class="section">


                                <ul class="list-group z-depth-1">

                                    <asp:DataList ID="d1Menu" runat="server">
    <ItemTemplate>
       <li class="list-group-item d-flex justify-content-between align-items-center">
                                        <a href="<%# "Category.aspx?Category_ID="+Eval("ID") %>" class="dark-grey-text font-small"><i class="fas fa-laptop dark-grey-text mr-2" aria-hidden="true"></i> <%# Eval("Name") %></a>
                                       
                                    </li>
    </ItemTemplate>
</asp:DataList>
                                    
                                </ul>
                            </section>

