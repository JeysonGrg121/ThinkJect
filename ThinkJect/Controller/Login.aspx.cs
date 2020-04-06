using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Iniciar_Click(object sender, EventArgs e)
    {
        E_login login = new E_login();
        login.User = Tx_Usuario.Text;
        login.Clave = Tx_Clave.Text;

        DAO log = new DAO();
        DataTable inico;
        inico = log.login(login);

        if (inico.Rows.Count > 0) //if (int.Parse(inico.Rows[0]["id"].ToString()) > 0)
        {
            Session["id"] = inico.Rows[0]["id"].ToString();
            Session["nombre"] = inico.Rows[0]["nombre_usuario"].ToString();
            Session["apellido"] = inico.Rows[0]["apellido_usuario"].ToString();
            Session["rol"] = inico.Rows[0]["id_rol"].ToString();

            if (int.Parse(Session["rol"].ToString()) == 1)
            {
                //rediereccion al perfin surperadministrador

            }else if (int.Parse(Session["rol"].ToString()) == 2)
            {
                Response.Redirect("Perfil_administrador.aspx");

            }else if (int.Parse(Session["rol"].ToString()) == 3)
            {
                Response.Redirect("Perfil_Usuario.aspx");
            }
        }
        else
        {
            Lb_error.Visible = true;
            Lb_error.Text = "Error en los datos";
            //Session["id"] = null;
        }
    }

    protected void IB_volver_home_login_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home_Thinkject.aspx");
    }
}