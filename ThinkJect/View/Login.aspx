
<%@ Page Title="login" Language="C#" MasterPageFile="~/View/M_home.master" AutoEventWireup="true" CodeFile="~/Controller/Login.aspx.cs" Inherits="View_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../resources/css/estilo_login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
<style type="text/css">
    .auto-style2 {
        color: #FF0000;
        font-size: medium;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="container well contenedor_login" style="height: 288px; margin-top: 0%"> 
     
        <div>
            <br /><br /><br />
            <br /><br />
            <br /><br />
        </div>
        <div class="row">
            <div>
                <br /><br /><br /><br />
            </div>
         <div class="col-xl-10">
                <h2>Iniciar Sesión</h2>
         </div>
         
          
             <%--usuario--%>
            <div class="form-group offset-2">
                 <div class="col-sm-10 ">
                     <asp:Label ID="Lb_usuario" runat="server" Text="Usuario:" CssClass="control-label col-sm-2"></asp:Label>
                     
                         <asp:TextBox ID="Tx_Usuario" runat="server"  placeholder="Introduce tu usuario"></asp:TextBox>
                     
                     
                 </div>
            </div>
             <%--password--%>
            <div class="form-group offset-2">
                 <div class="col-sm-10 ">
                     <asp:Label ID="Lb_clave" runat="server" Text="Clave:" CssClass="control-label col-sm-2"></asp:Label>
                       
                         <asp:TextBox ID="Tx_Clave" runat="server" TextMode="Password" placeholder="Introduce tu contraseña"></asp:TextBox>
                        </div>
                     
                     
            </div>
             <%--Boton iniciar--%>
            <div class="form-group col-sm-10" >
                <asp:Button ID="Bt_ingresar" runat="server" Text="Iniciar" OnClick="Iniciar_Click" CssClass="form-control btn btn-primary"/>
                <h2>
                    <asp:Label ID="Lb_error" runat="server" Text="Label" Visible="False" CssClass="auto-style2"></asp:Label>
                    
                </h2>
            </div>
       </div>
    
</div>
    <div>
        <br /><br /><br />
        <br /><br /><br />
        <br /><br /><br /><br />
    </div>

</asp:Content>

