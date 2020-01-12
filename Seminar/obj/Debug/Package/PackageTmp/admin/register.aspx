<%@ Page Title="" Language="C#" MasterPageFile="~/admin/logreg.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Seminar.admin.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <!--Form with header-->
                        <div class="card wow fadeIn" data-wow-delay="0.3s">
                            <div class="card-body">

                                <!--Header-->
                                <div class="form-header purple-gradient">
                                    <h3><i class="fas fa-user mt-2 mb-2"></i> Бүртгүүлэх :</h3>
                                </div>

                                
                                <div class="md-form">
                                    <i class="fas fa-user prefix white-text"></i>

                                    <asp:TextBox ID="u1" runat="server" type="text"  class="form-control"><%--id="orangeForm-name"--%>
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ForeColor="Red"  ErrorMessage="Заавал оруулах шаардлагатай" ControlToValidate="u1"></asp:RequiredFieldValidator>
                                    <label for="u1">Нэвтрэх нэр</label>

                               
                                </div>

                                <div class="md-form">
                                    <i class="fas fa-lock prefix white-text"></i>
                                     <asp:TextBox ID="p1" runat="server" type="password"  class="form-control">
                                   
                                    </asp:TextBox>
                                    <asp:regularexpressionvalidator id="RegularExpressionValidator3" display="Dynamic" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="p1" runat="server">
</asp:regularexpressionvalidator>
                                    <label for="p1">Нууц үг</label>
                                </div>




                                <div class="md-form">
                                    <i class="fas fa-lock prefix white-text"></i>
                                     <asp:TextBox ID="fullname1" runat="server" type="text"  class="form-control">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ForeColor="Red"  ErrorMessage="Заавал оруулах шаардлагатай" ControlToValidate="fullname1"></asp:RequiredFieldValidator>
                                    <label for="fullname1">Овог Нэр </label>
                                </div>

                                <div class="md-form">
                                    <i class="fas fa-lock prefix white-text"></i>
                                     <asp:TextBox ID="phone" runat="server" type="text"  class="form-control">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ForeColor="Red"  ErrorMessage="Заавал оруулах шаардлагатай" ControlToValidate="phone"></asp:RequiredFieldValidator>
                                    <label for="phone">Утасны дугаар </label>
                                </div>

                                <div class="md-form">
                                    <i class="fas fa-lock prefix white-text"></i>
                                     <asp:TextBox ID="email" runat="server" type="text"  class="form-control">
                                    </asp:TextBox>
                                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ForeColor="Red" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ForeColor="Red"  ErrorMessage="Заавал оруулах шаардлагатай" ControlToValidate="email"></asp:RequiredFieldValidator>--%>
                                    <label for="email">Цахим хаяг </label>
                                </div>

                                <div class="text-center">
                                   
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    <asp:Button ID="Button1" runat="server" class="btn purple-gradient btn-lg" Text="БҮРТГҮҮЛЭХ" OnClick="Button1_Click1" />
                                    
                                    
                                </div>

                            </div>
                        </div>
                        <!--/Form with header-->
</asp:Content>
