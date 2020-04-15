<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Apoyar_proyecto.aspx.cs" Inherits="View_Apoyar_proyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            font-size: large;
        }
    *,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}th{text-align:inherit}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Bt_volver" runat="server" OnClick="Bt_volver_Click" Text="Volver" />
                    </td>
                </tr>
                <tr>
                    <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" rowspan="10">
                            <asp:Image ID="IM_proyecto" runat="server" Width="40%" />
                        </td>
                        <td class="auto-style4" colspan="2"><strong>Proyecto</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2"><strong><span class="auto-style3">Nombre: </span> </strong>
                            <asp:Label ID="Lb_nombre" runat="server" CssClass="auto-style3"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Correo: </strong>
                            <asp:Label ID="Lb_correo" runat="server"></asp:Label>
                        </td>
                        <td><strong>Fecha Inicio: </strong>
                            <asp:Label ID="Lb_fecha_in" runat="server" ></asp:Label>
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
                        <td><strong>Usuario: </strong>
                            <asp:Label ID="Lb_user" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Button ID="Bt_apoyosin" runat="server" OnClick="Bt_apoyosin_Click" Text="Apoyar sin beneficio" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="2"><strong>Mis beneficios<br />
                            </strong>
                            <asp:GridView ID="GV_bene" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GV_bene_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="Valor">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Tb_valor_edit" runat="server" Text='<%# Bind("valor") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Lb_valor" runat="server" Text='<%# Bind("valor") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Beneficio">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Tb_benefico_edit" runat="server" Text='<%# Bind("descripcion") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Lb_bene" runat="server" Text='<%# Bind("descripcion") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ButtonType="Button" HeaderText="Apoyar" SelectText="Apoyar" ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Panel ID="PN_apoyar" runat="server" Visible="False">
                                <table class="auto-style1">
                                    <tr>
                                        <td colspan="3"><strong>COMPLETA LOS DATOS PARA APOYAR ESTE PROYECTO</strong></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Nombre:
                                            <asp:TextBox ID="TB_nmbre" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFV_nombre" runat="server" ControlToValidate="TB_nmbre" ErrorMessage="*" ForeColor="Red" ValidationGroup="Gv_apoyar"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>Apellido:<asp:TextBox ID="TB_apellido" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFV_apellido" runat="server" ControlToValidate="TB_apellido" ErrorMessage="*" ForeColor="Red" ValidationGroup="Gv_apoyar"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>Cuidad:
                                            <asp:TextBox ID="TB_cuidad" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFV_ciudad" runat="server" ControlToValidate="TB_cuidad" ErrorMessage="*" ForeColor="Red" ValidationGroup="Gv_apoyar"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Valor:<asp:TextBox ID="Tb_valor" runat="server" ReadOnly="True"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFV_valor" runat="server" ControlToValidate="Tb_valor" ErrorMessage="*" ForeColor="Red" ValidationGroup="Gv_apoyar"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>Beneficio:<asp:TextBox ID="TB_bene" runat="server" ReadOnly="True"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFV_bene" runat="server" ControlToValidate="TB_bene" ErrorMessage="*" ForeColor="Red" ValidationGroup="Gv_apoyar"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>Dirección:<asp:TextBox ID="TB_dire" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFV_dir" runat="server" ControlToValidate="TB_dire" ErrorMessage="*" ForeColor="Red" ValidationGroup="Gv_apoyar"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Correo:
                                            <asp:TextBox ID="TB_correo" runat="server" TextMode="Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFV_correo" runat="server" ControlToValidate="TB_correo" ErrorMessage="*" ForeColor="Red" ValidationGroup="Gv_apoyar"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="BT_cancelar" runat="server" Text="Cancelar" OnClick="BT_cancelar_Click" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Button ID="BT_apoyar" runat="server" Text="Apoyar" ValidationGroup="Gv_apoyar" OnClick="BT_apoyar_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
