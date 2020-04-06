using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Beneficios : System.Web.UI.Page
{
    List<Beneficioscs> Lista = new List<Beneficioscs>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id_producto"] == null)
        {
            Response.Redirect("Regitro_beneficio.aspx");
        }
        else
        {
            int id = int.Parse(Session["id"].ToString());
            int id_data = int.Parse(Session["id_producto"].ToString());
            DAO traer = new DAO();
            DataTable buscar = traer.obtener_proyectos_publicados_user(id, id_data);

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


        }
    }

    protected void Bt_añadir_Click(object sender, EventArgs e)
    {
        Beneficioscs registrar = new Beneficioscs();
        registrar.Valor = Tb_valor.Text;
        registrar.Descripcion = Tb_beneficio.Text;

        
        Lista.Add(registrar);

        GV_lista.DataSource = Lista;
        GV_lista.DataBind();
    }



}