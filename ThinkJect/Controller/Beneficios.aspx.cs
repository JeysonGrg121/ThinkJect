using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Beneficios : System.Web.UI.Page
{
    protected static List<Beneficioscs> lista = new List<Beneficioscs>();
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


        Beneficioscs valor = new Beneficioscs();
        valor.Valor = Tb_valor.Text;
        valor.Descripcion = Tb_beneficio.Text;
        lista.Add(valor);

        GV_lista.DataSource = lista;
        GV_lista.DataBind();
        Bt_registrar.Visible = true;
        limpar();

    }



    protected void Bt_registrar_Click(object sender, EventArgs e)
    {
        string Json = JsonConvert.SerializeObject(lista);
        int id_user = int.Parse(Session["id"].ToString());
        int id_proyect = int.Parse(Session["id_producto"].ToString());
        DAO registrar = new DAO();
        DataTable reg = registrar.registar_benefiso(id_user, id_proyect,Json);
        if(reg.Rows.Count == 0)
        {
            Lb_mensaje.Text = "Se registraron los beneficios correctamente.";
            GV_lista.Visible = false;
            Bt_añadir.Visible = false;
            Bt_registrar.Visible = false;
        }
        else
        {
            Lb_mensaje.Text = "Error al registrar los beneficios, intentalo de nuevo.";
            lista = null;
            Bt_registrar.Visible = false;
            GV_lista.DataBind();
        }

    }
    
    public void limpar()
    {
        Tb_beneficio.Text = "";
        Tb_valor.Text = "";
    }
}
