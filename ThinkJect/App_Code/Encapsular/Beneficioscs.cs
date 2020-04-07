using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Beneficioscs
/// </summary>
public class Beneficioscs
{
    public Beneficioscs()
    {
        valor = string.Empty;
        descripcion = string.Empty;
    }
    public Beneficioscs(string val, string desc)
    {
        this.valor = val;
        this.descripcion = desc;

    }

    private string valor;
    private string descripcion;

    public string Valor
    {
        get ; 
        set ; 
    }

    public string Descripcion
    {
        get; 
        set; 
    } 

}