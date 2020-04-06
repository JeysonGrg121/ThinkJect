<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Registro_login.aspx.cs" Inherits="View_Registro_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <title>Registro usuario</title>

</head>
<body style="margin-bottom: 19px">
    <form id="form1" class="container" runat="server">

        <div class="form-horizontal">
            <div class="row">
                 <div class="col-xs-12 ">
                     <h2>Registro de usuario</h2>
                     <div class="col-lg-offset-4">
                         <asp:ImageButton ID="Ib_volver_home" runat="server" Height="51px" ImageUrl="~/Imagenes/home/boton-inicio.png" Width="47px" OnClick="Ib_volver_home_Click" />
                     </div>
                     <br />
                     <br />
                 </div>
                <!-- Nombre del usuario-->
                <div class="form-group">
                    <!-- Label nombre usuario -->
                     <div>
                        <strong>
                        <asp:Label ID="Lb_nombre_usuario" runat="server" CssClass="control-label col-sm-2" Text="Nombre: "></asp:Label>
                        </strong>
                      </div>
                    <!-- Textbox nombre usuario -->
                      <div class="col-lg-offset-2">
                            <asp:TextBox ID="Tb_nombre_usuario" CssClass="form-control" runat="server" TextMode="SingleLine" placeholder="Ingrese su nombre"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RFV_nombre_usuario" runat="server" ControlToValidate="Tb_nombre_usuario" ErrorMessage="Hace falta ingresar el nombre" ForeColor="Red" ></asp:RequiredFieldValidator>
                      </div>
                </div>
                <!-- Apellido del usuario-->
                <div class="form-group">
                    <!-- Label apellido usuario -->
                    <div>
                        <strong>
                        <asp:Label ID="Lb_apellido_usuario" runat="server" CssClass="control-label col-sm-2" Text="Apellido: "></asp:Label>
                        </strong>
                    </div>
                    <!-- Textbox apellido usuario-->
                    <div class="col-lg-offset-2">
                        <asp:TextBox ID="Tb_apellido_usuario" CssClass="form-control" runat="server" TextMode="SingleLine" placeholder="Ingrese su apellido"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_apellido_usuario" runat="server" ControlToValidate="Tb_apellido_usuario" ErrorMessage="Hace falta ingresar el apellido" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>

                </div>
                <!-- username del usuario-->
                <div class="form-group">
                    <!-- Label username -->
                    <div>
                        <strong>
                        <asp:Label ID="Lb_username" runat="server" CssClass="control-label col-sm-2" Text="Usuario: "></asp:Label>
                        </strong>
                    </div>
                    <!-- Textbox username -->
                    <div class="col-lg-offset-2">
                        <asp:TextBox ID="Tb_username" CssClass="form-control" runat="server" TextMode="SingleLine" placeholder="Ingrese su nickname"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_username" runat="server" ControlToValidate="Tb_username" ErrorMessage="Hace falta ingresar el usuario" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>

                </div>
                <!-- contraseña del usuario-->
                <div class="form-group">
                    <!-- Label contraseña -->
                    <div>
                        <strong>
                        <asp:Label ID="Lb_contrasena" runat="server" CssClass="control-label col-sm-2" Text="Contraseña: "></asp:Label>
                        </strong>
                    </div>
                    <!-- Textbox contraseña -->
                    <div class="col-lg-offset-2">
                        <asp:TextBox ID="Tb_contrasena" CssClass="form-control" runat="server" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_contrasena" runat="server" ControlToValidate="Tb_contrasena" ErrorMessage="Hace falta ingresar la contraseña" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>

                </div>
                <!-- correo del usuario-->
                <div class="form-group">
                        <!-- Label correo -->
                        <div>
                            <strong>
                            <asp:Label ID="Lb_correo_usuario" runat="server" CssClass="control-label col-sm-2" Text="Correo: "></asp:Label>
                            </strong>
                        </div>
                        <!-- Textbox correo -->
                    <div class="col-lg-offset-2">
                        <asp:TextBox ID="Tb_correo_usuario" CssClass="form-control" runat="server" TextMode="SingleLine" placeholder="Ingrese su correo electronico"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_correo_usuario" runat="server" ControlToValidate="Tb_correo_usuario" ErrorMessage="Hace falta ingresar el correo electronico" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
       
                </div>
                <!-- Boton de registro del usuario-->
                <div class="form-group">
            
                    <div class="col-lg-5 col-lg-offset-4" >
                        <asp:Button ID="Bt_registrar_usuario" CssClass="btn-danger form-control btn btn-primary" runat="server" Text="Guardar" OnClick="Bt_registrar_usuario_Click"/>
                    </div>

                </div>
                 
            </div>
        </div>
    </form>

   
</body>
</html>
