<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Login" %>
    
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>登入頁面</title>
        <link rel="stylesheet" type="text/css" href="login.css">
    </head>

    <body>
        <header id="header">
            <p style="font-size: 40px; color: #efe5d0; margin:1px 0px 1px 0px;">
                <!--margin=上 右 下 左-->
                <b><i></u>登入</b></i>
                <br>
        </header>

        <div id="login">
            <form id="loginForm" runat="server">
                <p><label class="label_title">用戶名</label>
                    <asp:TextBox ID="Username" runat="server" Height="28px" required="required"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="請輸入!" Font-Size="10pt" ForeColor="Red" Width="77px" ControlToValidate="Username" Display=dynamic></asp:RequiredFieldValidator>
                </p>
                <p><label class="label_title">密碼</label>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Height="28px" required="required"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="請輸入!" Font-Size="10pt" ForeColor="Red" Width="77px" ControlToValidate="Password" Display=dynamic></asp:RequiredFieldValidator>
                    </p>
                    <asp:Button ID="Btn_login" runat="server" Font-Names="標楷體" Height="33px" Text="登入" Width="108px" OnClick="Btn_login_Click" OnClientClick="disable(this)"/>
                    <asp:LinkButton ID="Forget_pwd" runat="server" Font-Names="標楷體">忘記密碼?</asp:LinkButton>
            </form>
        </div>
        <script src="login.js"></script>
    </body>
    </html>