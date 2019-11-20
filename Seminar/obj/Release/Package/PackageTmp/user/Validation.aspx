<%@ Page Title="" Language="C#" MasterPageFile="~/user/users.Master" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Seminar.user.Validation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation.aspx.cs" Inherits="Validation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>--%>

<!DOCTYPE html>

<html>
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:100%">
            <tr>
                <td style="width:50%; text-align:right">
                    <asp:Label ID="Label1" runat="server" Text="User Name: "></asp:Label>
                </td>
                <td style="width:50%; text-align:left">
                    <asp:TextBox ID="TextBox1" runat="server" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right" class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="232px" ></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align:right">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td style="width:50%">
                    <asp:TextBox ID="TextBox3" runat="server" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ForeColor="Red"  ErrorMessage="Заавал оруулах шаардлагатай" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align:right">
                    <asp:Label ID="Label4" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td style="width:50%">
                    <asp:TextBox ID="TextBox4" runat="server" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Заавал оруулах шаардлагатай" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align:right">
                    <asp:Label ID="Label5" runat="server" Text="Birthday:"></asp:Label>

                </td>
                <td style="width:50%">
                    <asp:TextBox ID="TextBox5" runat="server" Width="232px"></asp:TextBox>
                    
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Хамгийн ихдээ 2001 оноос хойш байх ёстой" Type="Date" MinimumValue="1900/01/01" MaximumValue="2001/01/01"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align:right">
                    <asp:Label ID="Label6" runat="server" Text="Mobile:"></asp:Label>
                </td>
                <td style="width:50%">
                    <asp:TextBox ID="TextBox6" runat="server" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:50%; text-align:right">
                    
                </td>
                <td style="width:50%">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
</asp:Content>
