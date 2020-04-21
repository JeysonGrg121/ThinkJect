<%@ Page Title="Registro idea" Language="C#" MasterPageFile="~/View/M_Usuariomaster.master" AutoEventWireup="true" CodeFile="~/Controller/Registro_Idea.aspx.cs" Inherits="View_Registro_Idea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br />
    <%-- Nuevo registro idea --%>
        <div class="container well formulario " style="height: 589px">
            <div class="row">
                <div class="col-xs-12">
                    <h2>Registra tu proyecto</h2>
                </div>
            </div>
            <br />
            <br />
            <div class="form-horizontal">

          
                <%-- Nombre de la idea --%>
                <div class="form-group">
                    <asp:Label ID="Lb_nombre_idea" runat="server" Text="Nombre idea:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_nombreIdea" runat="server" CssClass="form-control" placeholder="Introduce el nombre del proyecto"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_nombreIdea" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Descripción del proyecto --%>
                <div class="form-group">
                    <asp:Label ID="Lb_descripcion" runat="server" Text="Descripción:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_Descripcion" runat="server" CssClass="form-control" placeholder="Introduce una breve descripción"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_Descripcion" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Nombre asociación --%>
                <div class="form-group">
                    <asp:Label ID="Lb_asociacion" runat="server" Text="Asociación:" CssClass="control-label col-sm-2"></asp:Label>

                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_asociacion" runat="server" CssClass="form-control" placeholder="Introduce la razón social"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_asociacion" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Categoria --%>
                <div class="form-group">
                    <asp:Label ID="Lb_categoria" runat="server" Text="Categoria:" CssClass="control-label col-sm-2"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Lb_foto_proyecto" runat="server" Text="Foto del proyecto:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="DDL_Cateroria" runat="server" DataSourceID="ODS_categoria" DataTextField ="nombre_categoria" DataValueField="id">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ODS_categoria" runat="server" SelectMethod="obtenerCategoria" TypeName="DAO"></asp:ObjectDataSource>
                        <%-- --------------- --%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:FileUpload ID="FU_foto" runat="server" />
                        <asp:RequiredFieldValidator ID="RFV_foto" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="FU_foto" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%-- Foto del proyecto --%>
                <div class="form-group">
                    <div class="col-sm-10">
 
                        
                    </div>
                </div>
                <%-- Meta economica --%>
                <div class="form-group">
                    <asp:Label ID="Lb_meta" runat="server" Text="Meta económica:" Textmode="Number" CssClass="control-label col-sm-2"></asp:Label>

                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_meta" runat="server" CssClass="form-control" placeholder="Introduce la meta económica del proyecto"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_meta" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_meta" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Correo de la persona responsable --%>
                <div class="form-group">
                    <asp:Label ID="Lb_correo" runat="server" Text="Correo del responsable:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_Correo" runat="server" CssClass="form-control" TextMode="Email" placeholder="Introduce tu correo eléctronico"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_correo" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_Correo" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Tiempo estimado --%>
                <div class="form-group">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <strong>Recuerda!</strong> El tiempo estimado es en memes(max 6 meses).
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                          </button>
                    </div>
                    <asp:Label ID="Lb_tiempo" runat="server" Text="Tiempo estimado:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_tiempo" runat="server" CssClass="form-control" placeholder="Introduce el estimado del tiempo"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_tiempo" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_tiempo" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>

                <%-- hasta aqui los campos de registro --%>

                <div>
                 <%-- Botón para la solicitud del registro de la idea --%>   
                    <div class="col-sm-10 offset-3 ">

                        <div class="col-sm-3 "></div>
                        <asp:Button ID="Bt_resgistrar" runat="server" Text="Enviar solicitud" OnClick="Bt_resgistrar_Click" ValidationGroup="GRFV_Resgitro" CssClass="btn btn-success col-sm-6" />
                    </div>
                </div>
            </div>
        </div>
        
    <%-- Fin Nuevo registro idea --%>

<%--    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Lb_Head" runat="server" Text="Solicita Registar Tu Nuevo Proyecto"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Nombre idea:
                <asp:TextBox ID="Tb_nombreIdea" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombre" runat="server" ControlToValidate="Tb_nombreIdea" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Descrpcion:
                <asp:TextBox ID="Tb_Descripcion" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_descripcion" runat="server" ControlToValidate="Tb_Descripcion" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Nombre Asociacion:
                <asp:TextBox ID="Tb_asociacion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_asociacion" runat="server" ControlToValidate="Tb_asociacion" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Categoria:
                <asp:DropDownList ID="DDL_Cateroria" runat="server" DataSourceID="ODS_categoria" DataTextField ="nombre_categoria" DataValueField="id">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_categoria" runat="server" SelectMethod="obtenerCategoria" TypeName="DAO"></asp:ObjectDataSource>
                <br />
                Foto proyecto: 
                <asp:FileUpload ID="FU_foto" runat="server" />
                <asp:RequiredFieldValidator ID="RFV_image" runat="server" ControlToValidate="FU_foto" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Meta Economica:
                <asp:TextBox ID="Tb_meta" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_meta" runat="server" ControlToValidate="Tb_meta" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Correo Responsable:
                <asp:TextBox ID="Tb_Correo" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_correo" runat="server" ControlToValidate="Tb_Correo" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Tiempo Estimado (meses - maximo 6 meses):
                <asp:TextBox ID="Tb_tiempo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_tiempo" runat="server" ControlToValidate="Tb_tiempo" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Bt_resgistrar" runat="server" OnClick="Bt_resgistrar_Click" Text="Enviar Solicitud" ValidationGroup="GRFV_Resgitro" />
            </td>
              
        </tr>
    </table>--%>
    <br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br />

</asp:Content>

