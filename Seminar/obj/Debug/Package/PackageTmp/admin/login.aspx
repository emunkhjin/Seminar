<%@ Page Title="" Language="C#" MasterPageFile="~/admin/logreg.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Seminar.admin.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                        <!--Form with header-->
                        <div class="card wow fadeIn" data-wow-delay="0.3s">
                            <div class="card-body">

                                <!--Header-->
                                <div class="form-header purple-gradient">
                                    <h3><i class="fas fa-user mt-2 mb-2"></i> Нэвтрэх :</h3>
                                </div>

                                
                                <div class="md-form">
                                    <i class="fas fa-user prefix white-text"></i>
                                    <asp:TextBox ID="u1" runat="server" type="text"  class="form-control"><%--id="orangeForm-name"--%>
                                    </asp:TextBox>
                                    <label for="u1">Нэвтрэх нэр</label>

                               
                                </div>

                                <div class="md-form">
                                    <i class="fas fa-lock prefix white-text"></i>
                                     <asp:TextBox ID="p1" runat="server" type="password"  class="form-control"><%--id="orangeForm-pass"--%>
                                   
                                    </asp:TextBox>
                                    <label for="p1">Нууц үг</label>
                                </div>

                                <div class="text-center">
                                   
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    <asp:Button ID="Button1" runat="server" class="btn purple-gradient btn-lg" Text="Илгээх" OnClick="Button1_Click1" />
                                    
                                    
                                </div>

                            </div>
                        </div>
                        <!--/Form with header-->
                            
</asp:Content>
