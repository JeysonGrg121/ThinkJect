﻿using Npgsql;
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
            dataAdapter.SelectCommand.Parameters.Add("_user", NpgsqlDbType.Integer).Value = idea.User_id;
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
            dataAdapter.SelectCommand.Parameters.Add("_nombre_proyecto", NpgsqlDbType.Text).Value = val.Nombre_proyecto;
            dataAdapter.SelectCommand.Parameters.Add("_id_user", NpgsqlDbType.Integer).Value = val.Id_user;

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

    //funcion login
    public DataTable login(E_login log)
    {
        DataTable validacion = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_usuarios", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Text).Value = log.User;
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Text).Value = log.Clave;

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
    // funcion para insertar los datos del registro del usario
    public DataTable Insertar_usuario(E_registro_login registro)
    {
        DataTable insertar = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_insert_login", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_nombre_usuario", NpgsqlDbType.Text).Value = registro.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido_usuario", NpgsqlDbType.Text).Value = registro.Apellido;
            dataAdapter.SelectCommand.Parameters.Add("_user_name", NpgsqlDbType.Text).Value = registro.Username;
            dataAdapter.SelectCommand.Parameters.Add("_contrasena", NpgsqlDbType.Text).Value = registro.Contrasena;
            dataAdapter.SelectCommand.Parameters.Add("_correo_usuario", NpgsqlDbType.Text).Value = registro.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_id_rol", NpgsqlDbType.Integer).Value =registro.Rol;
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
    //obtener poryectos publicados del usuario

    public DataTable obtener_proyectos_publicados(int id)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_proyecto_pendientes_rol", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id;

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
    //obtener todos los datos del proyecto del usuario logeado
    public DataTable obtener_proyectos_publicados_user(int id, int id_data)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_proyecto_vista_publicado", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id;
            dataAdapter.SelectCommand.Parameters.Add("_id_data", NpgsqlDbType.Integer).Value = id_data;

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

    //registar beneficios

    public DataTable registar_benefiso(int id, int id_proyecto, string Json)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_insert_beneficos", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_user", NpgsqlDbType.Integer).Value = id;
            dataAdapter.SelectCommand.Parameters.Add("_id_proyecto", NpgsqlDbType.Integer).Value = id_proyecto;
            dataAdapter.SelectCommand.Parameters.Add("_beneficios", NpgsqlDbType.Text).Value = Json;

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
    //obtener proyectos publicados

    public DataTable obtener_proyectos_publicados_home_page(DateTime fecha)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_proyecto_home_page", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_fecha", NpgsqlDbType.Date).Value = fecha;
            

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

    // obtener toda inormacion del proyecto del home page

    public DataTable proyectos_publicados_home_page(int id)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_proyecto_informacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id;


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
    //obtener que proyecto ya tiene beneficos
    public DataTable beneficios_info(int id)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_proyecto_informacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id;


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
    //seleccionar datos de apoyo proyecto

    public DataTable aopyo_datos(int id)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_obtener_info_apoyo", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id;


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

    //insertar datos en tabla apoyo

    public DataTable apoyo_insert(int id_proyecto, string lista)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_insert_apoyo", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_proyecto", NpgsqlDbType.Integer).Value = id_proyecto;
            dataAdapter.SelectCommand.Parameters.Add("_datos", NpgsqlDbType.Text).Value = lista;

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
    //actualizar datos apoyo
    public DataTable apoyo_update(int id_proyecto, string lista)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_actualizar_datos_apoyo", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id_proyecto;
            dataAdapter.SelectCommand.Parameters.Add("_datos", NpgsqlDbType.Text).Value = lista;

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
    //update de apoyo validado por administrador.
    public DataTable update(int id_proyecto, double valor)
    {
        DataTable obtenercategoria = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proyecto.f_actualizar_pago", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = id_proyecto;
            dataAdapter.SelectCommand.Parameters.Add("_valor", NpgsqlDbType.Double).Value = valor;

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