<%@ Page Title="Administrador" Language="C#" MasterPageFile="~/View/M_administradormaster.master" AutoEventWireup="true" CodeFile="~/Controller/Perfil_administrador.aspx.cs" Inherits="View_Perfil_administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link href="../resources/css/estilos_usuarios.css" rel="stylesheet" />
<style>
      .auto-style3 {
            height: 70px;
        }
  
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
        <div class="col-md-5 p-lg-5 mx-auto my-5">
            <h1 class="display-4 font-weight-normal">Bienvenido</h1>
            <p class="lead font-weight-normal">Aqui podras aprobar todos esos nuevos proyectos que haran del mundo un lugar mejor, validando los proyectos pendientes, sus transacciones y demás</p>  
            <a class="btn btn-outline-secondary" href="Proyecto_pendiente.aspx">Empieza ahora</a>
        </div>
        <div class="product-device shadow-sm d-none d-md-block"></div>
        <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
</asp:Content>

