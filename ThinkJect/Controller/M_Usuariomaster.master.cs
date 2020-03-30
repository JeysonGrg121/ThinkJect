using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_M_Usuariomaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["id"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (int.Parse(Session["id"].ToString()) == 1)
            {
                //redirecion al perfil superadmonistrador
            }
            else if (int.Parse(Session["id"].ToString()) == 2)
            {
                Response.Redirect("Perfil_Usuario.aspx");
            }
        }
    }

    protected void Bt_registro_Click(object sender, EventArgs e)
    {
        // accion Boton redireccion a formulario de registrar para avalar proyectyo

        Response.Redirect("Registro_Idea.aspx");
    }

    protected void LKB_cerrar_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Response.Redirect("Login.aspx");
    }
}
