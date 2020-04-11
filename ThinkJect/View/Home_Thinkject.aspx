
<%@ Page Language="C#" MasterPageFile="~/View/M_home.master" AutoEventWireup="true" CodeFile="~/Controller/Home_Thinkject.aspx.cs" Inherits="View_Home_Thinkject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <%-- Tabla de mostrar proyectos --%>
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
 
 
</asp:Content>

