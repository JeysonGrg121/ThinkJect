using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_M_Usuariomaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //logica de inicio de session
    }

    protected void Bt_registro_Click(object sender, EventArgs e)
    {
        // accion Boton redireccion a formulario de registrar para avalar proyectyo

        Response.Redirect("Registro_Idea.aspx");
    }
}
