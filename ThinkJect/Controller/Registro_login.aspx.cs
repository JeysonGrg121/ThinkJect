using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Registro_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  
      //  Response.Redirect("Home_Thinkject.aspx");
    

    protected void Bt_registrar_usuario_Click(object sender, EventArgs e)
    {
        E_registro_login registro = new E_registro_login();
        registro.Nombre = Tb_nombre_usuario.Text;
        registro.Apellido = Tb_apellido_usuario.Text;
        registro.Username = Tb_username.Text;
        registro.Contrasena = Tb_contrasena.Text;
        registro.Correo = Tb_correo_usuario.Text;

        DAO idea = new DAO();
        DataTable val;
        val = idea.Insertar_usuario(registro);
        ClientScriptManager cm = this.ClientScript;
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Acabas de quedar registrado satisfactoriamente.');</script>");
        limpiar_campos();   //Metodo de limpiar 

        // Limpiamos los datos ingresados en las cajas de texto del registro de usuario
     
    }
    private void limpiar_campos()
    {
        Tb_nombre_usuario.Text = "";
        Tb_apellido_usuario.Text = "";
        Tb_username.Text = "";
        Tb_contrasena.Text = "";
        Tb_correo_usuario.Text = "";
    }


    protected void Ib_volver_home_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home_Thinkject.aspx");
    }
}