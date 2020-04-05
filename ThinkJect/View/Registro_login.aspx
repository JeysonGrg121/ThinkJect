<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Registro_login.aspx.cs" Inherits="View_Registro_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 204px;
        }
        .auto-style2 {
            width: 242px;
        }
        .auto-style3 {
            width: 204px;
            height: 22px;
        }
    </style>
</head>
<body style="margin-bottom: 19px">
    <form id="form1" runat="server">
        <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                Registro de usuario</td>
        </tr>
        <tr>
            <td class="auto-style1">Nombre: <asp:TextBox ID="Tb_nombre_usuario" runat="server" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombre_usuario" runat="server" ControlToValidate="Tb_nombre_usuario" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                <br />
                Apellido:
                <asp:TextBox ID="Tb_apellido_usuario" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_apellido_usuario" runat="server" ControlToValidate="Tb_apellido_usuario" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                <br />
                Username:
                <asp:TextBox ID="Tb_username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_username" runat="server" ControlToValidate="Tb_username" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                <br />
                Contraseña:
                <asp:TextBox ID="Tb_contrasena" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_contrasena" runat="server" ControlToValidate="Tb_contrasena" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                <br />
                Correo:
                <asp:TextBox ID="Tb_correo_usuario" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_correo_usuario" runat="server" ControlToValidate="Tb_correo_usuario" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="Bt_resgistrar_usuario" runat="server" OnClick="Bt_resgistrar_Click" Text="Registrar" ValidationGroup="GRFV_Resgitro" />
                <asp:ImageButton ID="IB_volver_home" runat="server" Height="31px" ImageUrl="~/Imagenes/home/boton-inicio.png" OnClick="IB_volver_home_Click" Width="40px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
