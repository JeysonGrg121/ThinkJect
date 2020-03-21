using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Descripción breve de Correo_proyecto
/// </summary>
public class Correo_proyecto
{
    public Correo_proyecto()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    Boolean estado = true;
    string merror;

    public void enviarCorreo(String correoDestino, String mensaje)
    {
        MailMessage correo = new MailMessage();
        SmtpClient protocolo = new SmtpClient();

        correo.To.Add(correoDestino);
        correo.From = new MailAddress("ThinkJect@ThinkJect.com", "Validacion de Proyecto", System.Text.Encoding.UTF8);
        correo.Subject = "Tu Proyecto en ThinkJect";
        correo.SubjectEncoding = System.Text.Encoding.UTF8;
        correo.Body = mensaje;
        correo.BodyEncoding = System.Text.Encoding.UTF8;
        correo.IsBodyHtml = false;

        protocolo.Credentials = new System.Net.NetworkCredential("thinkject@gmail.com", "thinkject2020");
        protocolo.Port = 587;
        protocolo.Host = "smtp.gmail.com";
        protocolo.EnableSsl = true;

        try
        {
            protocolo.Send(correo);

        }
        catch (SmtpException error)
        {
            estado = false;
            merror = error.Message.ToString();
        }

    }

    public Boolean Estado
    {
        get
        {
            return estado;
        }
    }

    public String mensaje_error
    {
        get
        {
            return merror;
        }
    }
}