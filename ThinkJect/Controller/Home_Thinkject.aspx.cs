using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Home_Thinkject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Bt_ingresar_Click(object sender, EventArgs e)
    {
        //Dirigir a logueo
        Response.Redirect("Login.aspx");
    }

    protected void Bt_registro_login_Click(object sender, EventArgs e)
    {
        //Dirigir al registro del usuario
        Response.Redirect("Registro_login.aspx");
    }
}