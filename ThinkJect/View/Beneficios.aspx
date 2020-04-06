<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_Usuariomaster.master" AutoEventWireup="true" CodeFile="~/Controller/Beneficios.aspx.cs" Inherits="View_Beneficios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" rowspan="5">
                            <asp:Image ID="IM_proyecto" runat="server" Width="40%" />
                        </td>
                        <td><strong>Nombre: </strong>
                            <asp:Label ID="Lb_nombre" runat="server"></asp:Label>
                        </td>
                        <td><strong>Fecha Inicio: </strong>
                            <asp:Label ID="Lb_fecha_in" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Categoria: </strong>
                            <asp:Label ID="Lb_categoria" runat="server"></asp:Label>
                        </td>
                        <td><strong>Fecha Fin: </strong>
                            <asp:Label ID="Lb_fecha_fin" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Descripcion: </strong>
                            <asp:Label ID="Lb_descrip" runat="server"></asp:Label>
                        </td>
                        <td><strong>Meta: </strong>
                            <asp:Label ID="Lb_meta" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Asociacion: </strong>
                            <asp:Label ID="Lb_aso" runat="server"></asp:Label>
                        </td>
                        <td><strong>Recolectado: </strong>
                            <asp:Label ID="Lb_recolectado" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Correo: </strong>
                            <asp:Label ID="Lb_correo" runat="server"></asp:Label>
                        </td>
                        <td><strong></strong></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <table class="auto-style1">
                    <tr>
                        <td><strong>BENEFICIOS</strong></td>
                    </tr>
                    <tr>
                        <td>Valor:
                            <asp:TextBox ID="Tb_valor" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_valor" runat="server" ControlToValidate="Tb_valor" ErrorMessage="*" ForeColor="Red" ValidationGroup="GV_Añadir"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Beneficio:
                            <asp:TextBox ID="Tb_beneficio" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_bene" runat="server" ControlToValidate="Tb_beneficio" ErrorMessage="*" ForeColor="Red" ValidationGroup="GV_Añadir"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Bt_añadir" runat="server" OnClick="Bt_añadir_Click" Text="Añadir" ValidationGroup="GV_Añadir" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:GridView ID="GV_lista" runat="server">
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

