using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_registro_login
/// </summary>
public class E_registro_login
{
    public E_registro_login()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    private string nombre;
    private string apellido;
    private string username;
    private string contrasena;
    private string correo;
    private int rol = 3;

    public string Nombre { get => nombre; set => nombre = value; }
    public string Apellido { get => apellido; set => apellido = value; }
    public string Username { get => username; set => username = value; }
    public string Contrasena { get => contrasena; set => contrasena = value; }
    public string Correo { get => correo; set => correo = value; }
    public int Rol { get => rol; set => rol = value; }
}