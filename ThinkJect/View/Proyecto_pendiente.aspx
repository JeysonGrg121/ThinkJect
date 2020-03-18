<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_administradormaster.master" AutoEventWireup="true" CodeFile="~/Controller/Proyecto_pendiente.aspx.cs" Inherits="View_Proyecto_pendiente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Proyectos Pendientes a publicar</td>
        </tr>
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server">
                </asp:ListView>
            </td>
        </tr>
    </table>
</asp:Content>

