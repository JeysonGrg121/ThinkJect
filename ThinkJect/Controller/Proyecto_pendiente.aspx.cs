using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Proyecto_pendiente : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void DL_proyectos_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName=="detalles")
        {
            int id_datalist = int.Parse(e.CommandArgument.ToString());
            Session["id_producto"] = id_datalist;
            Response.Redirect("Validar_proyecto.aspx");
        }
    }
}