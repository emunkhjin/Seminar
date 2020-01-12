<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Categories.ascx.cs" Inherits="Seminar.user.Categories" %>
 <section class="section">


                                <ul class="list-group z-depth-1">

                                    <asp:DataList ID="d1Menu" runat="server">
    <ItemTemplate>
       <li class="list-group-item d-flex justify-content-between align-items-center">
                                        <a href="<%# "Category.aspx?Category_ID="+Eval("CategoryID") %>" class="dark-grey-text font-small"><i class="fas fa-laptop dark-grey-text mr-2" aria-hidden="true"></i> <%# Eval("CategoryName") %></a>
                                       
                                    </li>
    </ItemTemplate>
</asp:DataList>
                                    
                                </ul>
                            </section>