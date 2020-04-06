<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Login.aspx.cs" Inherits="View_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="../resources/css/estilo_login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <style type="text/css">
        .auto-style3 {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 70;
        }
        .auto-style4 {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 73;
        }
        .auto-style5 {
            font-size: large;
            color: #FF3300;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
            
<div class="container well contenedor_login"> 
     <form runat="server" class="form-horizontal">
          <div class="row">
          <div class="row">
            <div class="col-xs-12 ">
                <h2>
                    <asp:ImageButton ID="IB_volver_home_login" runat="server" Height="50px" ImageUrl="~/Imagenes/home/boton-inicio.png" OnClick="IB_volver_home_login_Click" Width="67px" CssClass="form-control btn btn-primary" />
                </h2>
            </div>
           </div>
            <div class="col-xs-12 ">
                <h2>Iniciar Sesión</h2>
            </div>
           </div>
             <%--usuario--%>
            <div class="form-group">
                 <div class="col-sm-10">
                     <asp:Label ID="Lb_usuario" runat="server" Text="Usuario" CssClass="control-label col-sm-2"></asp:Label>
                     <asp:TextBox ID="Tx_Usuario" runat="server" CssClass="auto-style3"  placeholder="Introduce tu usuario"></asp:TextBox>
                 </div>
            </div>
             <%--password--%>
            <div class="form-group">
                 <div class="col-sm-10">
                     <asp:Label ID="Lb_clave" runat="server" Text="Clave" CssClass="control-label col-sm-2"></asp:Label>
                     <asp:TextBox ID="Tx_Clave" runat="server" CssClass="auto-style4" TextMode="Password" placeholder="Introduce tu contraseña"></asp:TextBox>
                 </div>
            </div>
             <%--Boton iniciar--%>
            <div class="form-group" >
                <asp:Button ID="Bt_ingresar" runat="server" Text="Iniciar" OnClick="Iniciar_Click" CssClass="form-control btn btn-primary"/>
                <h2>
                    <asp:Label ID="Lb_error" runat="server" CssClass="auto-style5" Text="Label" Visible="False"></asp:Label>
                </h2>
            </div>
       
    </form>
</div>
   
</body>
</html>
