<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Registro_login.aspx.cs" Inherits="View_Registro_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="../resources/css/estilo_registro_login.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <title>Registro usuario</title>

    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
        .auto-style4 {
            position: relative;
            width: 118%;
            -ms-flex: 0 0 83.333333%;
            flex: 0 0 83.333333%;
            max-width: 83.333333%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style5 {
            position: relative;
            width: 117%;
            -ms-flex: 0 0 83.333333%;
            flex: 0 0 83.333333%;
            max-width: 83.333333%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style6 {
            position: relative;
            width: 116%;
            -ms-flex: 0 0 83.333333%;
            flex: 0 0 83.333333%;
            max-width: 83.333333%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style7 {
            position: relative;
            -ms-flex: 0 0 83.333333%;
            flex: 0 0 83.333333%;
            max-width: 83.333333%;
            left: 0px;
            top: 0px;
            width: 487px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style8 {
            left: 0px;
            top: 0px;
            height: 67px;
            margin-top: 49px;
        }
        .auto-style9 {
            height: 60px;
        }
    </style>

</head>
<body style="margin-bottom: 19px">
   <div class="container well contenedor_registro" style="width: 74%; height: 521px; margin-top: 0%;">
    <form runat="server" id="form1" class="form-horizontal">
 
            <div class="row">
                 <div class="auto-style8">
                     <h2 class="auto-style9">Registro de usuario</h2>
                    
                     <br />
                     <br />
                 </div>
                <!-- Nombre del usuario-->
                <div class="form-group col-md-10" style="left: 0px; top: 0px; height: 67px">
                    <!-- Label nombre usuario -->
                     
                        <strong>
                        <asp:Label ID="Lb_nombre_usuario" runat="server" CssClass="control-label col-sm-0" Text="Nombre: "></asp:Label>
                        </strong>
                      
                    <!-- Textbox nombre usuario -->
                      
                            <asp:TextBox ID="Tb_nombre_usuario" CssClass="auto-style1" runat="server" TextMode="SingleLine" placeholder="Ingrese su nombre" Width="515px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RFV_nombre_usuario" runat="server" ControlToValidate="Tb_nombre_usuario" ErrorMessage="Hace falta ingresar el nombre" ForeColor="Red" ></asp:RequiredFieldValidator>
                      
                </div>
                <!-- Apellido del usuario-->
                <div class="form-group">
                    <!-- Label apellido usuario -->
                    <div class="auto-style5">
                        <strong>
                        <asp:Label ID="Lb_apellido_usuario" runat="server" CssClass="control-label col-sm-0" Text="Apellido: "></asp:Label>
                        </strong>
                    </div>
                    <!-- Textbox apellido usuario-->
                    <div class="auto-style4">
                        <asp:TextBox ID="Tb_apellido_usuario" CssClass="auto-style1" runat="server" TextMode="SingleLine" placeholder="Ingrese su apellido" Width="509px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_apellido_usuario" runat="server" ControlToValidate="Tb_apellido_usuario" ErrorMessage="Hace falta ingresar el apellido" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>

                </div>
                <!-- username del usuario-->
                <div class="form-group">
                    <!-- Label username -->
                    <div class="auto-style5">
                        <strong>
                        <asp:Label ID="Lb_username" runat="server" CssClass="control-label col-sm-0" Text="Usuario: "></asp:Label>
                        </strong>
                    </div>
                    <!-- Textbox username -->
                    <div class="auto-style5">
                        <asp:TextBox ID="Tb_username" CssClass="auto-style1" runat="server" TextMode="SingleLine" placeholder="Ingrese su nickname" Width="505px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_username" runat="server" ControlToValidate="Tb_username" ErrorMessage="Hace falta ingresar el usuario" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>

                </div>
                <!-- contraseña del usuario-->
                <div class="form-group">
                    <!-- Label contraseña -->
                    <div class="auto-style5">
                        <strong>
                        <asp:Label ID="Lb_contrasena" runat="server" CssClass="control-label col-sm-0" Text="Contraseña: "></asp:Label>
                        </strong>
                    </div>
                    <!-- Textbox contraseña -->
                    <div class="auto-style6">
                        <asp:TextBox ID="Tb_contrasena" CssClass="auto-style1" runat="server" TextMode="Password" placeholder="Ingrese su contraseña" Width="502px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_contrasena" runat="server" ControlToValidate="Tb_contrasena" ErrorMessage="Hace falta ingresar la contraseña" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>

                </div>
                <!-- correo del usuario-->
                <div class="form-group">
                        <!-- Label correo -->
                        <div class="auto-style7">
                            <strong>
                            <asp:Label ID="Lb_correo_usuario" runat="server" CssClass="control-label col-sm-0" Text="Correo: "></asp:Label>
                            </strong>
                        </div>
                        <!-- Textbox correo -->
                    <div class="auto-style6">
                        <asp:TextBox ID="Tb_correo_usuario" CssClass="auto-style1" runat="server" TextMode="SingleLine" placeholder="Ingrese su correo electronico" Width="501px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_correo_usuario" runat="server" ControlToValidate="Tb_correo_usuario" ErrorMessage="Hace falta ingresar el correo electronico" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
       
                </div>
                <!-- Boton de registro del usuario-->
                <div class="form-group col-lg-6 offset-2">
            
                    <div>
                        <asp:Button ID="Bt_registrar_usuario" CssClass="btn-danger form-control btn btn-primary" runat="server" Text="Guardar" OnClick="Bt_registrar_usuario_Click"/>
                    </div>

                </div>
                 
            </div>
      
    </form>
   </div>
   
</body>
</html>
