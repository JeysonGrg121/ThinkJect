using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_AvalProyecto
/// </summary>
public class E_AvalProyecto
{
    public E_AvalProyecto()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    private string nombre_proyecto;
    private string nombre_categoria;
    private int id_administrador;
    private string nombre_usuario;
    private string image;
    private string descripcion;
    private DateTime fecha_inico;
    private DateTime fehca_fin;
    private double presupuesto;
    private string asociacion;
    private string correo;
    private double recolectado;

    public string Nombre_proyecto { get => nombre_proyecto; set => nombre_proyecto = value; }
    public string Nombre_categoria { get => nombre_categoria; set => nombre_categoria = value; }
    public int Id_administrador { get => id_administrador; set => id_administrador = value; }
    public string Nombre_usuario { get => nombre_usuario; set => nombre_usuario = value; }
    public string Image { get => image; set => image = value; }
    public string Descripcion { get => descripcion; set => descripcion = value; }
    public DateTime Fecha_inico { get => fecha_inico; set => fecha_inico = value; }
    public DateTime Fehca_fin { get => fehca_fin; set => fehca_fin = value; }
    public double Presupuesto { get => presupuesto; set => presupuesto = value; }
    public string Asociacion { get => asociacion; set => asociacion = value; }
    public string Correo { get => correo; set => correo = value; }
    public double Recolectado { get => recolectado; set => recolectado = value; }
}

   
