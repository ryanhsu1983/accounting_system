<%@ Page Title="About" Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Main" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ryan & Vicky記帳系統</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>

<body>
    <header id="header">
        <p style="font-size: 40px; color: #efe5d0; margin: 1px 0px 1px 0px;">
            <!--margin=上 右 下 左-->
            <b><i></u>Ryan & Vicky記帳系統</b></i>
            <br>
    </header>

    <div id="main">
        <form id="form" runat="server">
            我是：
            <asp:RadioButtonList ID="user" runat="server" RepeatLayout="Flow" Width="133pt" RepeatDirection="Horizontal" required="required">
                <asp:ListItem>Ryan</asp:ListItem>
                <asp:ListItem>Vicky</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="請輸入!" Font-Size="10pt" ForeColor="Red" Width="77px" ControlToValidate="user" Display=dynamic></asp:RequiredFieldValidator>
            <p>
                消費日期：
                <input type="date" ID="date" required="required">
            </p>
            <p>
                消費摘要：
                <asp:TextBox ID="comment" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="請輸入!" Font-Size="10pt" ForeColor="Red" Width="77px" ControlToValidate="comment" Display=dynamic></asp:RequiredFieldValidator>
            </p>
            <p>
                花費金額：
                <asp:TextBox ID="cost" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="請輸入!" Font-Size="10pt" ForeColor="Red" Width="77px" ControlToValidate="cost" Display=dynamic></asp:RequiredFieldValidator>         
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="請輸入數字!" Font-Size="10pt" ForeColor="Red" ControlToValidate="cost" Operator="DataTypeCheck" Type="Integer" Display=dynamic Width="121px"></asp:CompareValidator>
            </p>
            <p>
                自動增項：<asp:TextBox ID="autoIncrease" runat="server" required="required">3000</asp:TextBox>
                說明：公托補助$6000/月
                <asp:RequiredFieldValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="請輸入!" Font-Size="10pt" ForeColor="Red" Width="77px" ControlToValidate="autoIncrease" Display=dynamic></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="請輸入數字!" Font-Size="10pt" ForeColor="Red" ControlToValidate="cost" Operator="DataTypeCheck" Type="Integer" Display=dynamic Width="121px"></asp:CompareValidator>
            </p>
            <p>
                自動扣項：<asp:TextBox ID="autoReduce" runat="server" required="required">0</asp:TextBox>
                說明：
                <asp:RequiredFieldValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="請輸入!" Font-Size="10pt" ForeColor="Red" Width="77px" ControlToValidate="autoReduce" Display=dynamic></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="請輸入數字!" Font-Size="10pt" ForeColor="Red" ControlToValidate="cost" Operator="DataTypeCheck" Type="Integer" Display=dynamic Width="121px"></asp:CompareValidator>
            </p>
            <p>
                <asp:Button ID="submitButton" runat="server" Text="送出" OnClientClick="disable(this)" />
                <input ID="resetButton" name="重設" type="reset"/>
                <asp:Button ID="countButton" runat="server" Text="計算" OnClientClick="disable(this)" />
            </p>
            歷史紀錄：
            <div id="record">
            </div>
        </form>
    </div>
    <script src="main.js"></script>
</body>
</html>
