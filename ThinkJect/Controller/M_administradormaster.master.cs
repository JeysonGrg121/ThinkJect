using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_M_administradormaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Aqui logica login y permiso de administrasor para ingreso a la plataforma
    }

    protected void Bt_proyectos_Click(object sender, EventArgs e)
    {
        //accion del boton para rediriguir a formulario de proyectos a publicar.
        Response.Redirect("Proyecto_pendiente.aspx");
    }
}
