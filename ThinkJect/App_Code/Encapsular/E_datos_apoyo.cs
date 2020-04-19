using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_datos_apoyo
/// </summary>
public class E_datos_apoyo
{
    public E_datos_apoyo()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private string nombre;
    private string apellido;
    private string ciudad;
    private string valor;
    private string beneficio;
    private string direccion;
    private string correo;
    private string validado;

    public string Nombre { get; set; }
    public string Apellido { get ; set ; }
    public string Ciudad { get ; set ; }
    public string Valor { get ; set ; }
    public string Beneficio { get; set ; }
    public string Direccion { get ; set ; }
    public string Correo { get; set; }
    public string Validado { get; set; }
}