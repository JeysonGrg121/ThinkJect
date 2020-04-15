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
        var deficinicion = new { Nombre = "", Apellido = "", Ciudad = "", Valor = "", Beneficio = "", Direccion = "", Correo = "" };
        var lista = new[] { deficinicion };
        var beneficios1 = apoyos;
        var lis = JsonConvert.DeserializeAnonymousType(beneficios1, lista);
        GV_apoyo.DataSource = lis;
        GV_apoyo.DataBind();
    }
}