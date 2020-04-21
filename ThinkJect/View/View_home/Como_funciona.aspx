<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_drop.master" AutoEventWireup="true" CodeFile="Como_funciona.aspx.cs" Inherits="View_View_home_Como_funciona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="../../resources/css/estilos_usuariosf.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style4 {
            background-color: #000000;
        }
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

    <div class="auto-style4 text-center">
  <div class="col-md-5 p-lg-5 mx-auto my-4">
 <%--   <h1 class="display-4 font-weight-normal">Bienvenido</h1>
    <p class="lead font-weight-normal">Aqui podras subir tus proyectos y hacer que el mundo de reconozca.</p>--%>
      <img src="../../Imagenes/logo/logo1.png"" alt="ThinkJecj" width="250px " />
  </div>
  <div class="product-device shadow-sm d-none d-md-block"></div>
  <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>
    <br />
    <div class="row featurette offset-1">
        <div class="col-md-7">
            <h2 class="featurette-heading">¿Qué es ThinkJect? <span class="text-muted">Vitrina de proyectos.</span></h2>
            <p class="lead">ThinkJect te permite descubrir y dar vida a proyectos originales, creativos, solidarios e innovadores gracias al crowdfunding. En ThinkJect, los proyectos son exitosos si consiguen llegar (o sobrepasar) su objetivo de recaudación.</p>
            <p class="lead">ThinkJect es una plataforma de crowdfunding de recompensa que conecta a los creadores de un proyecto con sus mecenas. La plataforma es multilingüe y trabaja en diferentes divisas.</p>
        </div>
    </div>
</asp:Content>

