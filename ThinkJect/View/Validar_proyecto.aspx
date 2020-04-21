<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_administradormaster.master" AutoEventWireup="true" CodeFile="~/Controller/Validar_proyecto.aspx.cs" Inherits="View_Validar_proyecto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <h1>Validar proyecto</h1>
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Im_foto" runat="server" Width="40%" />
                        </td>
                        <td class="auto-style3"><strong>Nombre: </strong><asp:Label ID="Lb_nombre" runat="server"></asp:Label>
                            <strong>
                            <br />
                            Descripcion:
                            </strong>
                            <asp:Label ID="Lb_descrip" runat="server"></asp:Label>
                            <strong>
                            <br />
                            Fondos (meta): </strong><asp:Label ID="Lb_meta" runat="server"></asp:Label>
                            <strong>
                            <br />
                            Asociación:
                            </strong>
                            <asp:Label ID="Lb_asociacion" runat="server"></asp:Label>
                            <strong>
                            <br />
                            Categoria:
                            </strong>
                            <asp:Label ID="Lb_categoria" runat="server"></asp:Label>
                            <strong>
                            <br />
                            Tiempo para proyecto:
                            </strong>
                            <asp:Label ID="Lb_tiempo" runat="server"></asp:Label>
                            <strong>
                            <br />
                            Responsable:
                            </strong>
                            <asp:Label ID="Lb_responsable" runat="server"></asp:Label>
                            <strong>
                            <br />
                            Correo:
                            </strong>
                            <asp:Label ID="Lb_Correo" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                Fecha de incio:
                <asp:TextBox ID="TB_incio" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Validar_inicio" runat="server" ControlToValidate="TB_incio" ErrorMessage="*" ForeColor="Red" ValidationGroup="GV_Validar "></asp:RequiredFieldValidator>
                <br />
                Fecha Final:<asp:TextBox ID="Tb_fecha_fin" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Validar_Fin" runat="server" ControlToValidate="Tb_fecha_fin" ErrorMessage="*" ForeColor="Red" ValidationGroup="GV_Validar "></asp:RequiredFieldValidator>
                <br />
                Mensaje:<asp:TextBox ID="Tb_mensaje" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Mensaje" runat="server" ControlToValidate="Tb_mensaje" ErrorMessage="*" ForeColor="Red" ValidationGroup="GV_mensaje"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RFV_Mensaje1" runat="server" ControlToValidate="Tb_mensaje" ErrorMessage="*" ForeColor="Red" ValidationGroup="GV_Validar "></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="Bt_rechazar" runat="server" Text="Rechazar Proyecto" ValidationGroup="GV_mensaje" OnClick="Bt_rechazar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Bt_aprobar" runat="server" Text="Aprobar Proyecto" ValidationGroup="GV_Validar " OnClick="Bt_aprobar_Click" />
                <br />
                <asp:Button ID="BT_volver" runat="server" OnClick="BT_volver_Click" Text="Volver" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

