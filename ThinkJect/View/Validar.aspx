<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_administradormaster.master" AutoEventWireup="true" CodeFile="~/Controller/Validar.aspx.cs" Inherits="View_Validar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br />
    <table class="w-100">
        <tr>
            <td class="auto-style2"><strong>VALIDAR APOYOS</strong></td>
        </tr>
        <tr>
            <td>
        <asp:GridView ID="GV_apoyo" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GV_apoyo_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Nombre">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lb_nmbre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lb_apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ciudad">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ciudad") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lb_ciudad" runat="server" Text='<%# Bind("Ciudad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="$ Apoyo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Valor") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lb_apoyo" runat="server" Text='<%# Bind("Valor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Beneficio">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Beneficio") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lb_Beneficio" runat="server" Text='<%# Bind("Beneficio") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Direccion">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Direccion") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lb_dir" runat="server" Text='<%# Bind("Direccion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Correo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Correo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lb_correo" runat="server" Text='<%# Bind("Correo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" HeaderText="Seleccionar" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="PN_Validar" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style2" colspan="3"><strong>VALIDE</strong></td>
                        </tr>
                        <tr>
                            <td>Nombre:<asp:TextBox ID="Tb_nombre" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td>Apelldio:
                                <asp:TextBox ID="Tb_ape" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td>Apoyo:<asp:TextBox ID="Tb_apoyo" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Beneficio:<asp:TextBox ID="TB_bene" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td>Direccion:<asp:TextBox ID="Tb_dir" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td>Correo:<asp:TextBox ID="Tb_corre" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Estado de Validacion:
                                <asp:DropDownList ID="DDL_validar" runat="server">
                                    <asp:ListItem Value="1">NO VALIDAR</asp:ListItem>
                                    <asp:ListItem Value="2">VALIDAR</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <asp:Button ID="BT_Cancelar" runat="server" OnClick="BT_Cancelar_Click" Text="CANCELAR" />
                            </td>
                            <td>&nbsp;</td>
                            <td class="text-center">
                                <asp:Button ID="BT_Validar" runat="server" OnClick="BT_Validar_Click" Text="APROVAR" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

