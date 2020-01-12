<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Seminar.admin.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        














        <asp:Label ID="lbl_password" runat="server" CssClass="Label" Text="Password"></asp:Label>
            <div class="cleaner">
            </div>
            <asp:TextBox ID="radtxtPassword" runat="server" TextMode="Password" CssClass="textbox" ValidationGroup="RegisterCheck">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="radtxtPassword" ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="valPassword" runat="server" ControlToValidate="radtxtPassword" ErrorMessage="Minimum password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,30})$" ValidationGroup="RegisterCheck" />
            <div class="cleaner_h10">
            </div>
            <asp:Label ID="lbl_ConfirmPassword" runat="server" CssClass="Label" Text="Confirm Password"></asp:Label>
            <div class="cleaner">
            </div>
            <asp:TextBox ID="radtxtConfirmPassword" runat="server" TextMode="Password" CssClass="textbox" ValidationGroup="RegisterCheck">
            </asp:TextBox>

            <asp:CompareValidator ID="cmpvldPassword" runat="server" ControlToCompare="radtxtConfirmPassword" ControlToValidate="radtxtPassword" Type="String" Operator="Equal" ValidationGroup="RegisterCheck" ErrorMessage="Password should match"></asp:CompareValidator>










    </form>
</body>
</html>
