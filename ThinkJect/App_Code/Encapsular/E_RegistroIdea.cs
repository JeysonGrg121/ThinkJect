using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_RegistroIdea
/// </summary>
public class E_RegistroIdea
{
    public E_RegistroIdea()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private string nombre;
    private string descripcion;
    private string asosicacion;
    private int categoria;
    private string image;
    private double meta;
    private string correo;
    private string tiempo;

    public string Nombre { get => nombre; set => nombre = value; }
    public string Descripcion { get => descripcion; set => descripcion = value; }
    public string Asosicacion { get => asosicacion; set => asosicacion = value; }
    public int Categoria { get => categoria; set => categoria = value; }
    public string Image { get => image; set => image = value; }
    public double Meta { get => meta; set => meta = value; }
    public string Correo { get => correo; set => correo = value; }
    public string Tiempo { get => tiempo; set => tiempo = value; }
}