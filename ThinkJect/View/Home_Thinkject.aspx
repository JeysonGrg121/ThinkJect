<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Home_Thinkject.aspx.cs" Inherits="View_Home_Thinkject" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Aqui va todo lo de la pagina de inicio, todas las personas lo pueden ver
        </div>
        <p>
            <asp:Button ID="Bt_registro_login" runat="server" OnClick="Bt_registro_login_Click" Text="Registrarse" />
            <asp:Button ID="Bt_ingresar" runat="server" OnClick="Bt_ingresar_Click" Text="Login" />
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Apoya Estos Proyectos</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:ObjectDataSource ID="OBS_home_proyectos" runat="server" SelectMethod="obtener_proyectos_publicados_home_page" TypeName="DAO">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="No Hay proyectos Actualmente" Name="fecha" SessionField="fecha_actual" Type="DateTime" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                <asp:DataList ID="DL_proyectos" runat="server" DataSourceID="OBS_home_proyectos" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DL_proyectos_ItemCommand">
                    <footertemplate>
                         <asp:label visible="<%#bool.Parse((DL_proyectos.Items.Count == 0).ToString())%>" xmlns:asp="#unknown"
                            runat="server" ID="lblNoRecord" Text="No hay proyectos Publicados."></asp:label>
                    </footertemplate>
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2" colspan="2">
                                    <strong>Proyecto:</strong>
                                    <asp:Label ID="Lb_nombre" runat="server" Text='<%# Eval("nombre_proyecto") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" rowspan="2">
                                    <asp:Image ID="I_foto" runat="server" ImageUrl='<%# Eval("foto") %>' Width="40%" />
                                </td>
                                <td class="auto-style2">
                                    <strong>Descripcion:</strong>
                                    <asp:Label ID="Lb_descripcion" runat="server" Text='<%# Eval("descrpcion") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Fecha de Inico:</strong>
                                    <asp:Label ID="Lb_correo" runat="server" Text='<%# Eval("fecha_inicio") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" colspan="2">
                                    <asp:LinkButton ID="LkB_detalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles">Ver proyecto</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
