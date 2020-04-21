<%@ Page Title="Usuario" Language="C#" MasterPageFile="~/View/M_Usuariomaster.master" AutoEventWireup="true" CodeFile="~/Controller/Perfil_Usuario.aspx.cs" Inherits="View_Perfil_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link href="../resources/css/estilos_usuarios.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            height: 70px;
        }
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <%--pagina del usuario--%>
                      
        <%--parte de inicio --%>    
<%--   <header class="masthead" style="background-image: url('') ">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading offset-2">
              <br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;
            <h1 class="auto-style3">Bienvenido</h1>
            &nbsp;&nbsp;<h2 class="auto-style1">Llego la hora de ayudar al mundo</h2>
          </div>
        </div>
      </div>
    </div>
  </header>--%>
    <%--parte de inicio --%>   

<div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
  <div class="col-md-5 p-lg-5 mx-auto my-5">
    <h1 class="display-4 font-weight-normal">Bienvenido</h1>
    <p class="lead font-weight-normal">Aqui podras subir tus proyectos y hacer que el mundo de reconozca.</p>
    <a class="btn btn-outline-secondary" href="Registro_idea.aspx">Empieza ahora</a>
  </div>
  <div class="product-device shadow-sm d-none d-md-block"></div>
  <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>


    <%--pagina del usuario--%>
</asp:Content>

