
<%@ Page Title="Registro" Language="C#" MasterPageFile="~/View/M_home.master" AutoEventWireup="true" CodeFile="~/Controller/Registro_login.aspx.cs" Inherits="View_Registro_login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <br /><br /><br />
        <div class="container well formulario " style="height: 589px">
            <div class="row">
                <div class="col-xs-12">
                    <h2>Registro de Usuario</h2>
                </div>
            </div>
            <br />
            <br />
            <div class="form-horizontal">

          
                <%-- Nombre del usuario --%>
                <div class="form-group">
                    <asp:Label ID="Lb_nombre_usuario" runat="server" Text="Nombre:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_nombre_usuario" runat="server" CssClass="form-control" placeholder="Introduce tu nombre"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_nombre_usuario" ValidationGroup="GRFV_resgitro_login"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Apellido del usuario --%>
                <div class="form-group">
                    <asp:Label ID="Lb_apellido_usuario" runat="server" Text="Apellido:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_apellido_usuario" runat="server" CssClass="form-control" placeholder="Introduce tu apellido"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_apellido_usuario" ValidationGroup="GRFV_resgitro_login"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Username del usuario --%>
                <div class="form-group">
                    <asp:Label ID="Lb_username" runat="server" Text="Usuario:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_username" runat="server" CssClass="form-control" placeholder="Introduce tu usuario"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_username" ValidationGroup="GRFV_resgitro_login"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Contraseña del usuario --%>
                <div class="form-group">
                    <asp:Label ID="Lb_contrasena" runat="server" Text="Contraseña:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_contrasena" runat="server" CssClass="form-control" TextMode="Password" placeholder="Introduce tu contraseña"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_contrasena" ValidationGroup="GRFV_resgitro_login"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <%-- Correo del usuario --%>
                <div class="form-group">
                    <asp:Label ID="Lb_correo_usuario" runat="server" Text="Correo:" CssClass="control-label col-sm-2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Tb_correo_usuario" runat="server" CssClass="form-control" TextMode="Email" placeholder="Introduce tu correo eléctronico"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo obligatorio" ForeColor="Red" Display="Dynamic" ControlToValidate="Tb_correo_usuario" ValidationGroup="GRFV_resgitro_login"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>

                <%-- hasta aqui los campos de registro, pendiente hijo de tu puta madre :v --%>

                <div>
                    
                    <div class="col-sm-10 offset-3 ">

                        <div class="col-sm-3 "></div>
                        <asp:Button ID="Bt_registrar_usuario" runat="server" Text="Guardar" CssClass="btn btn-success col-sm-6" OnClick="Bt_registrar_usuario_Click" ValidationGroup="GRFV_resgitro_login"/>
                    </div>
                </div>
            </div>
        </div>
    <br /><br /><br />
    <br /><br /><br />
 
</asp:Content>




