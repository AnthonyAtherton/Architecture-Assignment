<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Prototype_0.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(Images/tiger_skin.jpeg)">
    <form id="form1" runat="server">
    <div style="margin-top:16em; margin-left:30%; margin-right:30%; text-align:center; border:groove; background-color:#5e0080;">
        <h1 style="color:yellow;">LSU GA Web Clock</h1>
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="200px" OnTextChanged="TextBox1_TextChanged">LSUID</asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="22px" style="margin-left: 0px">Password</asp:TextBox>
        <br />
        <span style="color:red;">
        <asp:Label ID="ErrorLabel" runat="server" ></asp:Label>
        </span>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Log In" Width="120px" BackColor="Yellow" ForeColor="Black" OnClick="Button1_Click" Height="37px" /> 
        <br />
        <br />
    </div>
    </form>
</body>
</html>
