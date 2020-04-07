<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Apoyar_proyecto.aspx.cs" Inherits="View_Apoyar_proyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Bt_volver" runat="server" OnClick="Bt_volver_Click" Text="Volver" />
                    </td>
                </tr>
                <tr>
                    <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" rowspan="9">
                            <asp:Image ID="IM_proyecto" runat="server" Width="40%" />
                        </td>
                        <td class="auto-style4" colspan="2"><strong>Proyecto</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2"><strong><span class="auto-style3">Nombre: </span> </strong>
                            <asp:Label ID="Lb_nombre" runat="server" CssClass="auto-style3"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Correo: </strong>
                            <asp:Label ID="Lb_correo" runat="server"></asp:Label>
                        </td>
                        <td><strong>Fecha Inicio: </strong>
                            <asp:Label ID="Lb_fecha_in" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Categoria: </strong>
                            <asp:Label ID="Lb_categoria" runat="server"></asp:Label>
                        </td>
                        <td><strong>Fecha Fin: </strong>
                            <asp:Label ID="Lb_fecha_fin" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Descripcion: </strong>
                            <asp:Label ID="Lb_descrip" runat="server"></asp:Label>
                        </td>
                        <td><strong>Meta: </strong>
                            <asp:Label ID="Lb_meta" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Asociacion: </strong>
                            <asp:Label ID="Lb_aso" runat="server"></asp:Label>
                        </td>
                        <td><strong>Recolectado: </strong>
                            <asp:Label ID="Lb_recolectado" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Usuario: </strong>
                            <asp:Label ID="Lb_user" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="2"><strong>Mis beneficios</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:GridView ID="GV_bene" runat="server">
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
