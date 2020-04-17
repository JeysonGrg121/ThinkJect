using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_M_home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Lb_registrase_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registro_login.aspx");
    }

    protected void Lb_registrase_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
