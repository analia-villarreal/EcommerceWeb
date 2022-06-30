using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class UsuarioNegocio
    {
        /*public bool Loguear(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT ID, u.idRol, r.nombreRol as Rol FROM Usuario u, Rol r WHERE u.idRol = r.ID AND Username = @nombreUsuario AND contrasenia=@contraseñaUsuario");
                datos.setearParametros("@nombreUsuario", usuario.UserName);
                datos.setearParametros("@contraseñaUsuario", usuario.Contrasenia);

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    //usuario.ID = datos.Lector["ID"];

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }
        */

    }
}