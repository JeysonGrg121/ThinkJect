using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Apoyar_proyecto : System.Web.UI.Page
{
    static string beneficios;
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (Session["id_producto"] == null)
        {
            Response.Redirect("Home_Thinkject.aspx");
        }
        else
        {
            int id_data = int.Parse(Session["id_producto"].ToString());
            DAO traer = new DAO();
            DataTable buscar = traer.proyectos_publicados_home_page(id_data);

            Lb_nombre.Text = buscar.Rows[0]["nombre_proyecto"].ToString();
            Lb_categoria.Text = buscar.Rows[0]["nombre_categoria"].ToString();
            Lb_descrip.Text = buscar.Rows[0]["descripcion"].ToString();
            Lb_aso.Text = buscar.Rows[0]["asociacion"].ToString();
            Lb_correo.Text = buscar.Rows[0]["correo"].ToString();
            Lb_fecha_in.Text = buscar.Rows[0]["fecha_incio"].ToString();
            Lb_fecha_fin.Text = buscar.Rows[0]["fecha_fin"].ToString();
            Lb_meta.Text = buscar.Rows[0]["presupuesto"].ToString();
            Lb_recolectado.Text = buscar.Rows[0]["recolectado"].ToString();
            IM_proyecto.ImageUrl = buscar.Rows[0]["foto"].ToString();
            Lb_user.Text = buscar.Rows[0]["usuario"].ToString();
            beneficios = buscar.Rows[0]["beneficios"].ToString();
            deserealizar();

        }
    }

    public void deserealizar()
    {
        var deficinicion = new { Valor = "", Descripcion = "" };
        var lista = new[] { deficinicion };
        var beneficios1 = beneficios;
        var lis = JsonConvert.DeserializeAnonymousType(beneficios1,lista);
        GV_bene.DataSource = lis;
        GV_bene.DataBind();
    }

    protected void Bt_volver_Click(object sender, EventArgs e)
    {
        Session["id_producto"] = null;
        Response.Redirect("Home_Thinkject.aspx");
    }
}