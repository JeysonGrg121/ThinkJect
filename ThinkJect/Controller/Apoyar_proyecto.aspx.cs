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
    static string datos;
    protected static List<E_datos_apoyo> lista = new List<E_datos_apoyo>();
    
    
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

    protected void GV_bene_SelectedIndexChanged(object sender, EventArgs e)
    {
        PN_apoyar.Visible = true;
        Label valor;
        Label bene;
        GridViewRow gr = GV_bene.SelectedRow;

        valor = (Label)gr.FindControl("Lb_valor");
        bene = (Label)gr.FindControl("Lb_bene");
        TB_bene.Text = bene.Text;
        Tb_valor.Text = valor.Text;
    }

    protected void Bt_apoyosin_Click(object sender, EventArgs e)
    {
        TB_bene.ReadOnly = false;
        Tb_valor.ReadOnly = false;
        PN_apoyar.Visible = true;
        TB_bene.Text = "No aplica";
        TB_bene.ReadOnly = true;
    }

    protected void BT_cancelar_Click(object sender, EventArgs e)
    {
        PN_apoyar.Visible = false;
        limpar();
    }

    public void limpar()
    {
        TB_nmbre.Text = "";
        TB_apellido.Text = "";
        Tb_valor.Text = "";
        TB_cuidad.Text = "";
        TB_bene.Text = "";
        TB_dire.Text = "";
        TB_correo.Text = "";

    }

    protected void BT_apoyar_Click(object sender, EventArgs e)
    {
        int id_proyecto = int.Parse(Session["id_producto"].ToString());
        DAO obtener = new DAO();
        DataTable obt = obtener.aopyo_datos(id_proyecto);
        if (obt.Rows.Count > 0)
        {
            datos = obt.Rows[0]["apoyo"].ToString();
            E_datos_apoyo datos1 = new E_datos_apoyo();
            datos1.Nombre = TB_nmbre.Text;
            datos1.Apellido = TB_apellido.Text;
            datos1.Ciudad = TB_cuidad.Text;
            datos1.Valor = Tb_valor.Text;
            datos1.Beneficio = TB_bene.Text;
            datos1.Direccion = TB_dire.Text;
            datos1.Correo = TB_correo.Text;
            datos1.Validado = "No validado";
            lista.Add(datos1);

            string correo = TB_correo.Text;
            string mesaje = "Se le informa que ud puede hacer la transaccion a la siguiente cuenta de ahorros xxxxxxx.";
            Correo_proyecto destino = new Correo_proyecto();
            destino.enviarCorreo(correo,mesaje);

            string json = JsonConvert.SerializeObject(lista);

            string dt = data( datos,json);
            DAO insert = new DAO();
            DataTable insertar = insert.apoyo_update(id_proyecto, dt);
            limpar();
            lista.Clear();            
            PN_apoyar.Visible = false;
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solicitud Enviada Revise su correo.');</script>");
            return;
        }
        else
        {
            E_datos_apoyo datos1 = new E_datos_apoyo();
            datos1.Nombre = TB_nmbre.Text;
            datos1.Apellido = TB_apellido.Text;
            datos1.Ciudad = TB_cuidad.Text;
            datos1.Valor = Tb_valor.Text;
            datos1.Beneficio = TB_bene.Text;
            datos1.Direccion = TB_dire.Text;
            datos1.Correo = TB_correo.Text;
            datos1.Validado = "No validado";
            lista.Add(datos1);
            string correo = TB_correo.Text;
            string mesaje = "Se le informa que ud puede hacer la transaccion a la siguiente cuenta de ahorros xxxxxxx.";
            Correo_proyecto destino = new Correo_proyecto();
            destino.enviarCorreo(correo, mesaje);
            string json = JsonConvert.SerializeObject(lista);
            DAO insert = new DAO();
            DataTable insertar = insert.apoyo_insert(id_proyecto, json);
            limpar();
            lista.Clear();
            
            PN_apoyar.Visible = false;
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solicitud Enviada Revise su correo.');</script>");
            return;
        }
        
    }

    public string data (string datos, string json)
    {
        datos = datos.Replace('[', '¡');
        json = json.Replace('[', ' ');
        string data = datos.Replace(']', ' ') + "," + json.Replace(']', '!');
        data = data.Replace('¡', '[');
        data = data.Replace('!', ']');
        return data;
    }
    
}