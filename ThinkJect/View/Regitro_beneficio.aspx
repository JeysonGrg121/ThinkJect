<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_Usuariomaster.master" AutoEventWireup="true" CodeFile="~/Controller/Regitro_beneficio.aspx.cs" Inherits="View_Regitro_beneficio" %>

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
            <td class="auto-style2">MIS PROYECTOS</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DL_proyectos" runat="server" DataSourceID="ODS_proyectos" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DL_proyectos_ItemCommand">
                    <footertemplate>
                         <asp:label visible="<%#bool.Parse((DL_proyectos.Items.Count == 0).ToString())%>" xmlns:asp="#unknown"
                            runat="server" ID="lblNoRecord" Text="No hay proyectos pendinetes."></asp:label>
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
                                    <strong>Asociacion:</strong>
                                    <asp:Label ID="Lb_descripcion" runat="server" Text='<%# Eval("asociacion") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Correo:</strong>
                                    <asp:Label ID="Lb_correo" runat="server" Text='<%# Eval("correo") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" colspan="2">
                                    <asp:LinkButton ID="LkB_detalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles">Registro Beneficios</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ODS_proyectos" runat="server" SelectMethod="obtener_proyectos_publicados" TypeName="DAO">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="id" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

