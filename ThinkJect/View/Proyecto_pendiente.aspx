<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_administradormaster.master" AutoEventWireup="true" CodeFile="~/Controller/Proyecto_pendiente.aspx.cs" Inherits="View_Proyecto_pendiente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Proyectos Pendientes a publicar</td>
        </tr>
        <tr>
            <td>
                <asp:ObjectDataSource ID="ODS_proyectos_pendientes" runat="server" SelectMethod="obtenerproyectos" TypeName="DAO"></asp:ObjectDataSource>
                <asp:DataList ID="DL_proyectos" runat="server" DataSourceID="ODS_proyectos_pendientes" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DL_proyectos_ItemCommand">
                    <footertemplate>
                         <asp:label visible="<%#bool.Parse((DL_proyectos.Items.Count == 0).ToString())%>" xmlns:asp="#unknown"
                            runat="server" ID="lblNoRecord" Text="No hay proyectos pendinetes."></asp:label>
                    </footertemplate>
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2" colspan="2">
                                    <strong>Proyecto:</strong>
                                    <asp:Label ID="Lb_nombre" runat="server" Text='<%# Eval("nombre") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" rowspan="2">
                                    <asp:Image ID="I_foto" runat="server" ImageUrl='<%# Eval("image") %>' Width="40%" />
                                </td>
                                <td class="auto-style2">
                                    <strong>Descripcion:</strong>
                                    <asp:Label ID="Lb_descripcion" runat="server" Text='<%# Eval("descripcion") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Correo:</strong>
                                    <asp:Label ID="Lb_correo" runat="server" Text='<%# Eval("correo_responsable") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" colspan="2">
                                    <asp:LinkButton ID="LkB_detalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles">Detalles</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

