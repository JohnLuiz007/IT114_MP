<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dummy.aspx.cs" Inherits="IT114L_MP_Testing_grounds.claireann" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Username" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="DebugLbl" runat="server" Text="No errors"></asp:Label>
        <br />

        <asp:Button ID="Signup" runat="server" Text="Signup" OnClick="SignupClick"/>

    </form>
</body>
</html>
