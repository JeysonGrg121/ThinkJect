using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO
/// </summary>
public class DAO
{
    //Funcion para obtener categoria de proyectos
    public DataTable obtenerCategoria()
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_categoria", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(obtenercategoria);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return obtenercategoria;
    }
    // funcion para insertar idea para aval proyecto
    public DataTable Insertar(E_RegistroIdea idea)
    {
        DataTable insertar = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_insert_idea", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = idea.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_descripcion", NpgsqlDbType.Text).Value = idea.Descripcion;
            dataAdapter.SelectCommand.Parameters.Add("_asiciacion", NpgsqlDbType.Text).Value = idea.Asosicacion;
            dataAdapter.SelectCommand.Parameters.Add("_categoria", NpgsqlDbType.Integer).Value = idea.Categoria;
            dataAdapter.SelectCommand.Parameters.Add("_meta", NpgsqlDbType.Double).Value = idea.Meta;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Text).Value = idea.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_tiempo", NpgsqlDbType.Text).Value = idea.Tiempo;
            dataAdapter.SelectCommand.Parameters.Add("_image", NpgsqlDbType.Text).Value = idea.Image;
            conection.Open();
            dataAdapter.Fill(insertar);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return insertar;
    }

    //obtener proyectos pendientes en area administrado
    public DataTable obtenerproyectos()
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_proyecto_pendientes", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(obtenercategoria);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return obtenercategoria;
    }
}