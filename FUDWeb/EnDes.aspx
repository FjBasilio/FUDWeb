<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnDes.aspx.cs" Inherits="FUDWeb.EnDes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EnDes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <hr />
            <h5>Cifrado</h5>
            <asp:TextBox ID="TxtCifrado" runat="server"></asp:TextBox>
            <asp:Button ID="BtnCifrado" runat="server" Text="Cifrado" OnClick="BtnCifrado_Click" />
            <br />
            <asp:Label ID="LblCifrado" runat="server"></asp:Label>
            <hr />   
            <h5>Descifrado</h5>
            <asp:TextBox ID="TxtDescifrado" runat="server"></asp:TextBox>
            <asp:Button ID="BtnDescifrado" runat="server" Text="Descifrado" OnClick="BtnDescifrado_Click" />
            <br />
            <asp:Label ID="LblDescifrado" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>

