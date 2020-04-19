using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Validar : System.Web.UI.Page
{
    static string apoyos;
    static int integer;

    protected void Page_Load(object sender, EventArgs e)
    {        
        if (Session["id_producto"] == null)
        {
            Response.Redirect("Validar_trans.aspx");
        }
        else
        {
            int id_data = int.Parse(Session["id_producto"].ToString());
            DAO obtener = new DAO();
            DataTable obt = obtener.aopyo_datos(id_data);
            apoyos = obt.Rows[0]["apoyo"].ToString();
            deserealizar();



        }
    }

    public void deserealizar()
    {
        var deficinicion = new { Nombre = "", Apellido = "", Ciudad = "", Valor = "", Beneficio = "", Direccion = "", Correo = ""};
        var lista = new[] { deficinicion };
        var beneficios1 = apoyos;
        var lis = JsonConvert.DeserializeAnonymousType(beneficios1, lista);
        GV_apoyo.DataSource = lis;
        GV_apoyo.DataBind();
    }

    protected void GV_apoyo_SelectedIndexChanged(object sender, EventArgs e)
    {
        integer = int.Parse(GV_apoyo.SelectedIndex.ToString());
        //GV_apoyo.Rows[integer].Visible = false;
        Label NOMBRE, APELLIDO, CIUDAD, VALOR, BENEFICIO, DIRECCION, CORREO;
        GridViewRow gr = GV_apoyo.SelectedRow;
        NOMBRE = (Label)gr.FindControl("Lb_nmbre");
        APELLIDO = (Label)gr.FindControl("Lb_apellido");
        CIUDAD = (Label)gr.FindControl("Lb_ciudad");
        VALOR = (Label)gr.FindControl("Lb_apoyo");
        BENEFICIO = (Label)gr.FindControl("Lb_Beneficio");
        DIRECCION = (Label)gr.FindControl("Lb_dir");
        CORREO = (Label)gr.FindControl("Lb_correo");
        Tb_nombre.Text = NOMBRE.Text;
        TB_bene.Text = BENEFICIO.Text;
        Tb_ape.Text = APELLIDO.Text;
        Tb_apoyo.Text = VALOR.Text;
        Tb_corre.Text = CORREO.Text;
        Tb_dir.Text = DIRECCION.Text;
        PN_Validar.Visible = true;
    }

    protected void BT_Cancelar_Click(object sender, EventArgs e)
    {
        PN_Validar.Visible = false;
        limpiar();
    }
    public void limpiar()
    {
        Tb_nombre.Text = "";
        Tb_ape.Text  = "";
        Tb_apoyo.Text = "";
        TB_bene.Text = "";
        Tb_corre.Text = "";
        Tb_dir.Text = "";
    }

    protected void BT_Validar_Click(object sender, EventArgs e)
    {
        if (int.Parse(DDL_validar.SelectedValue.ToString()) == 1)
        {
            GV_apoyo.Rows[integer].Visible = false;
            PN_Validar.Visible = false;
            limpiar();
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('La transaccion se completo');</script>");
            return;
        }else if(int.Parse(DDL_validar.SelectedValue.ToString()) == 2)
        {
            GV_apoyo.Rows[integer].Visible = false;
            double valor = double.Parse(Tb_apoyo.Text);
            int id_data = int.Parse(Session["id_producto"].ToString());
            DAO validar = new DAO();
            DataTable val = validar.update(id_data, valor);
            PN_Validar.Visible = false;
            limpiar();
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se valido correctamente');</script>");
            return;
        }


    }
}