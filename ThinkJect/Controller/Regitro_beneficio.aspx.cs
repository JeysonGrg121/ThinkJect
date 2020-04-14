using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Regitro_beneficio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void DL_proyectos_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detalles")
        {
            ClientScriptManager cm = this.ClientScript;
            int id_datalist = int.Parse(e.CommandArgument.ToString());
            DAO info = new DAO();
            DataTable validar = info.beneficios_info(id_datalist);
            if (validar.Rows.Count > 0)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Ya se hizo el registro de beneficios para este proyecto');</script>");
                return;
            }
            else
            {
                Session["id_producto"] = id_datalist;
                Response.Redirect("Beneficios.aspx");
            }
           
        }
    }
}