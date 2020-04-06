using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Validar_proyecto : System.Web.UI.Page
{
    private int id_user;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["id_producto"] == null)
        {
            Response.Redirect("Proyecto_pendiente.aspx");
        }
        else
        {
            int id = int.Parse(Session["id_producto"].ToString());
            DAO obtener = new DAO();
            DataTable buscar = obtener.Proyecto_pendinte(id);

            Lb_nombre.Text = buscar.Rows[0]["nombre"].ToString();
            Lb_descrip.Text = buscar.Rows[0]["descripcion"].ToString();
            Lb_meta.Text = buscar.Rows[0]["fondos"].ToString();
            Lb_asociacion.Text = buscar.Rows[0]["asociacion"].ToString();
            Lb_categoria.Text = buscar.Rows[0]["categoria"].ToString();
            Lb_tiempo.Text = buscar.Rows[0]["tiempo"].ToString();
            Lb_responsable.Text = buscar.Rows[0]["usuario"].ToString();
            Lb_Correo.Text = buscar.Rows[0]["correo"].ToString();
            Im_foto.ImageUrl = buscar.Rows[0]["foto"].ToString();
            id_user = int.Parse(buscar.Rows[0]["id_user"].ToString());
        }
    }

    protected void Bt_rechazar_Click(object sender, EventArgs e)
    {
        string mensaje = Tb_mensaje.Text;
        string email = Lb_Correo.Text;
        Correo_proyecto correo = new Correo_proyecto();
        correo.enviarCorreo(email, mensaje);
        int validar = 3;
        int id = int.Parse(Session["id_producto"].ToString());
        DAO val = new DAO();
        DataTable vali = val.Validar_proyecto(id, validar);
        Session["id_producto"] = null;
        Response.Redirect("Proyecto_pendiente.aspx");

    }

    protected void Bt_aprobar_Click(object sender, EventArgs e)
    {
        double recolectado = 0;
        E_AvalProyecto validar = new E_AvalProyecto();
        validar.Id_administrador = int.Parse(Session["id"].ToString());
        validar.Image = Im_foto.ImageUrl;
        validar.Asociacion = Lb_asociacion.Text;
        validar.Correo = Lb_Correo.Text;
        validar.Descripcion = Lb_descrip.Text;
        validar.Fecha_inico = DateTime.Parse(TB_incio.Text);
        validar.Fehca_fin = DateTime.Parse(Tb_fecha_fin.Text);
        validar.Nombre_categoria = Lb_categoria.Text;
        validar.Nombre_proyecto = Lb_nombre.Text;
        validar.Nombre_usuario = Lb_responsable.Text;
        validar.Presupuesto = double.Parse(Lb_meta.Text);
        validar.Recolectado = recolectado;
        validar.Id_user = id_user;
        DAO aprovar = new DAO();
        DataTable val = aprovar.insert_proyec(validar);
        string mensaje = Tb_mensaje.Text;
        string email = Lb_Correo.Text;
        Correo_proyecto correo = new Correo_proyecto();
        correo.enviarCorreo(email, mensaje);
        int verificar = 1;
        int id = int.Parse(Session["id_producto"].ToString());
        DAO ver = new DAO();
        DataTable vali = ver.Validar_proyecto(id, verificar);
        Session["id_producto"] = null;
        Response.Redirect("Proyecto_pendiente.aspx");

    }


    protected void BT_volver_Click(object sender, EventArgs e)
    {
        Session["id_producto"] = null;
        Response.Redirect("Proyecto_pendiente.aspx");
    }
}