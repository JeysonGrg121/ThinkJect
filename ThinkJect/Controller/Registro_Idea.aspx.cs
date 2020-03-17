using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Registro_Idea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Bt_resgistrar_Click(object sender, EventArgs e)
    {
        E_RegistroIdea registro = new E_RegistroIdea();
        registro.Nombre = Tb_nombreIdea.Text;
        registro.Descripcion = Tb_Descripcion.Text;
        registro.Asosicacion = Tb_asociacion.Text;
        registro.Meta = double.Parse(Tb_meta.Text);
        registro.Correo = Tb_Correo.Text;
        registro.Tiempo = Tb_tiempo.Text;
        registro.Categoria = int.Parse(DDL_Cateroria.Text);
        string extension = System.IO.Path.GetExtension(FU_foto.PostedFile.FileName);
        string saveLocation = "~\\Imagenes\\Proyecto\\";
        ClientScriptManager cm = this.ClientScript;
        string nombreArchivo = System.IO.Path.GetFileName(FU_foto.PostedFile.FileName);
        if ((extension.Equals(".jpg") || extension.Equals(".jpg") || extension.Equals(".png")))
        {
            saveLocation = saveLocation + nombreArchivo;
        }
        else
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El formato del archivo es invalido');</script>");
            return;
        }
        if (System.IO.File.Exists(Server.MapPath(saveLocation)))
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Ya existe un archivo en el servidor con ese nombre');</script>");
            return;
        }
        if (FU_foto.HasFile)
        {
            FU_foto.SaveAs(MapPath("~\\Imagenes\\Proyecto\\" + FU_foto.FileName));
        }
        registro.Image = saveLocation;
        DAO idea = new DAO();
        DataTable val;
        val = idea.Insertar(registro);

        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Solicitud enviada, Por Favor revise el correo los proximos dias.');</script>");
        limpar();
    }

    private void limpar()
    {
        Tb_asociacion.Text = "";
        Tb_Correo.Text = "";
        Tb_Descripcion.Text = "";
        Tb_meta.Text = "";
        Tb_nombreIdea.Text = "";
        Tb_tiempo.Text = "";
    }

}