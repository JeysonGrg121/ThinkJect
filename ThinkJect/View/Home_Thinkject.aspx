<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Home_Thinkject.aspx.cs" Inherits="View_Home_Thinkject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Aqui va todo lo de la pagina de inicio, todas las personas lo pueden ver
        </div>
        <p>
            <asp:Button ID="Bt_ingresar" runat="server" OnClick="Bt_ingresar_Click" Text="Login" />
        </p>
    </form>
</body>
</html>
