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
        Session["fecha_actual"] = DateTime.Now;
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

    protected void DL_proyectos_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detalles")
        {
            int id_datalist = int.Parse(e.CommandArgument.ToString());
            Session["id_producto"] = id_datalist;
            Response.Redirect("Apoyar_proyecto.aspx");
        }
    }

 
}