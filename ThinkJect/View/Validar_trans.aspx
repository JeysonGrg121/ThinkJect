<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_administradormaster.master" AutoEventWireup="true" CodeFile="~/Controller/Validar_trans.aspx.cs" Inherits="View_Validar_trans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="../resources/css/estilos_registro.css" rel="stylesheet" />
    <link href="../resources/css/estilos_benef.css" rel="stylesheet" />
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            
        }
        .auto-style3 {
            margin-right: -100%;
            background-color:azure;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
  <%--  <asp:DataList ID="DL_proyectos" runat="server" DataSourceID="OBS_home_proyectos" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DL_proyectos_ItemCommand">
        <footertemplate>
            <asp:label visible="<%#bool.Parse((DL_proyectos.Items.Count == 0).ToString())%>" xmlns:asp="#unknown"
                            runat="server" ID="lblNoRecord" Text="No hay proyectos Publicados."></asp:label>
        </footertemplate>
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Proyecto:</strong>
                        <asp:Label ID="Lb_nombre" runat="server" Text='<%# Eval("nombre_proyecto") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" rowspan="2">
                        <asp:Image ID="I_foto" runat="server" ImageUrl='<%# Eval("foto") %>' Width="40%" />
                    </td>
                    <td class="auto-style2"><strong>Descripcion:</strong>
                        <asp:Label ID="Lb_descripcion" runat="server" Text='<%# Eval("descrpcion") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Fecha de Inico:</strong>
                        <asp:Label ID="Lb_correo" runat="server" Text='<%# Eval("fecha_inicio") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:LinkButton ID="LkB_detalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles">Validar transaciones</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
                    <asp:ObjectDataSource ID="OBS_home_proyectos" runat="server" SelectMethod="obtener_proyectos_publicados_home_page" TypeName="DAO">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="No Hay proyectos Actualmente" Name="fecha" SessionField="fecha_actual" Type="DateTime" />
                        </SelectParameters>
                    </asp:ObjectDataSource>--%>
             
  <%--  mejorada--%>

    <div class="album py-5 bg-light">
        <asp:ObjectDataSource ID="OBS_home_proyectos" runat="server" SelectMethod="obtener_proyectos_publicados_home_page" TypeName="DAO">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="No Hay proyectos Actualmente" Name="fecha" SessionField="fecha_actual" Type="DateTime" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                        <asp:DataList ID="DL_proyectos" runat="server" DataSourceID="OBS_home_proyectos" RepeatColumns="1" RepeatDirection="Horizontal" OnItemCommand="DL_proyectos_ItemCommand" CssClass="auto-style3" Width="1000px" >

                    <footertemplate>
                                <div class="product-device product-device-2 shadow-sm d-none d-md-block offset-6"></div>
                                <div class="product-device shadow-sm d-none d-md-block"></div>
                         <asp:label visible="<%#bool.Parse((DL_proyectos.Items.Count == 0).ToString())%>" xmlns:asp="#unknown"
                            runat="server" ID="lblNoRecord" Text="No hay proyectos pendinetes."></asp:label>
                    </footertemplate>
                           <%-- <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />--%>
                    <ItemTemplate>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4">
                                        
                                    <div class="card mb-4 shadow-sm card-text">                                    
                                        <asp:Image  ID="I_foto" runat="server" ImageUrl='<%# Eval("foto") %>' width="100%" height="225" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"/>
                                            <strong>
                                            <asp:Label ID="Lb_nombre" runat="server" class="card-text" Text='<%# Eval("nombre_proyecto") %>' x="50%" y="50%" fill="#eceeef" dy=".3em"></asp:Label>
                                            </strong>
                                        <div class="card-body">
                                            <div>
                                                <strong>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("asociacion") %>'></asp:Label></strong>
                                            </div>
                                            <asp:Label ID="Lb_descripcion" runat="server" Text='<%# Eval("descrpcion") %>'></asp:Label>
                                            <div>
                                                <%--<asp:Label ID="Lb_correo" runat="server" Text='<%# Eval("correo") %>'></asp:Label>--%>
                                            </div>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="btn-group">
                                                    <p><asp:Button ID="LkB_detalles" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="detalles" Text="Validar transaciones" class="btn btn-sm btn-outline-secondary"></asp:Button></p>
                                                </div>
                                                <%--<small class="text-muted">9 mins</small>--%>
                                                &nbsp;&nbsp;&nbsp;<small class="text-muted"><asp:Label ID="Lb_correo" runat="server" Text='<%# Eval("fecha_inicio") %>'></asp:Label></small>
                                            </div>
                                        </div>
                                    </div>
                       
                                </div>   
          
                            </div>
                        </div>
      
                  </ItemTemplate>
                            <%--<SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />--%>
                </asp:DataList>

    </div>
   </asp:Content>
