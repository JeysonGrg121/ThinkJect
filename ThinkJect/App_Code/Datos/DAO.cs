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
    //obtener informacion detallada del proyecto seleccionado

    public DataTable Proyecto_pendinte(int id)
    {
        DataTable obtener_proyecto = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_proyecto_vista", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id;

            conection.Open();
            dataAdapter.Fill(obtener_proyecto);
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
        return obtener_proyecto;
    }
    //actualizar validado de proyectos pendienres 
    public DataTable Validar_proyecto(int id, int validar)
    {
        DataTable validacion = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_actualizar_proyectos_pendientes", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id;
            dataAdapter.SelectCommand.Parameters.Add("_validar", NpgsqlDbType.Integer).Value = validar;

            conection.Open();
            dataAdapter.Fill(validacion);
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
        return validacion;
    }
    //insertar proyecto validado
    public DataTable insert_proyec(E_AvalProyecto val)
    {
        DataTable validar = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_insert_public_proyect", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_nombre_usuario", NpgsqlDbType.Text).Value = val.Nombre_usuario;
            dataAdapter.SelectCommand.Parameters.Add("_nombre_categoria", NpgsqlDbType.Text).Value = val.Nombre_categoria;
            dataAdapter.SelectCommand.Parameters.Add("_foto", NpgsqlDbType.Text).Value = val.Image;
            dataAdapter.SelectCommand.Parameters.Add("_descrpcion", NpgsqlDbType.Text).Value = val.Descripcion;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_inicio", NpgsqlDbType.Date).Value = val.Fecha_inico;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_fin", NpgsqlDbType.Date).Value = val.Fehca_fin;
            dataAdapter.SelectCommand.Parameters.Add("_presupuesto", NpgsqlDbType.Double).Value = val.Presupuesto;
            dataAdapter.SelectCommand.Parameters.Add("_recolectado", NpgsqlDbType.Double).Value = val.Recolectado;
            dataAdapter.SelectCommand.Parameters.Add("_asociacion", NpgsqlDbType.Text).Value = val.Asociacion;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Text).Value = val.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_id_administrador", NpgsqlDbType.Integer).Value = val.Id_administrador;

            conection.Open();
            dataAdapter.Fill(validar);
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
        return validar;
    }
}