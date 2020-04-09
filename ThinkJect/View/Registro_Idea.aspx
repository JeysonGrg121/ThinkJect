<%@ Page Title="" Language="C#" MasterPageFile="~/View/M_Usuariomaster.master" AutoEventWireup="true" CodeFile="~/Controller/Registro_Idea.aspx.cs" Inherits="View_Registro_Idea" %>

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
            <td>
                <asp:Label ID="Lb_Head" runat="server" Text="Solicita Registar Tu Nuevo Proyecto"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Nombre idea:
                <asp:TextBox ID="Tb_nombreIdea" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_nombre" runat="server" ControlToValidate="Tb_nombreIdea" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Descrpcion:
                <asp:TextBox ID="Tb_Descripcion" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_descripcion" runat="server" ControlToValidate="Tb_Descripcion" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Nombre Asociacion:
                <asp:TextBox ID="Tb_asociacion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_asociacion" runat="server" ControlToValidate="Tb_asociacion" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Categoria:
                <asp:DropDownList ID="DDL_Cateroria" runat="server" DataSourceID="ODS_categoria" DataTextField ="nombre_categoria" DataValueField="id">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_categoria" runat="server" SelectMethod="obtenerCategoria" TypeName="DAO"></asp:ObjectDataSource>
                <br />
                Foto proyecto: <asp:FileUpload ID="FU_foto" runat="server" />
                <asp:RequiredFieldValidator ID="RFV_image" runat="server" ControlToValidate="FU_foto" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Meta Economica:
                <asp:TextBox ID="Tb_meta" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_meta" runat="server" ControlToValidate="Tb_meta" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Correo Responsable:
                <asp:TextBox ID="Tb_Correo" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_correo" runat="server" ControlToValidate="Tb_Correo" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                Tiempo Estimado (meses - maximo 6 meses):
                <asp:TextBox ID="Tb_tiempo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_tiempo" runat="server" ControlToValidate="Tb_tiempo" ErrorMessage="*" ForeColor="Red" ValidationGroup="GRFV_Resgitro"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Bt_resgistrar" runat="server" OnClick="Bt_resgistrar_Click" Text="Enviar Solicitud" ValidationGroup="GRFV_Resgitro" />
            </td>
              
        </tr>
    </table>
</asp:Content>

