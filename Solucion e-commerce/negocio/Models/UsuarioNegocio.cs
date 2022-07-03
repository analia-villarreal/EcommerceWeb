using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class UsuarioNegocio
    {
        public bool Loguear(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT ID, idRol FROM Usuario WHERE nombreUsuario=@UserName AND pass=@pass");
                datos.setearParametros("@UserName", usuario.UserName);
                datos.setearParametros("@pass", usuario.Pass);

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    usuario.ID = (int)datos.Lector["ID"];
                    usuario.Rol = (int)(datos.Lector["idRol"]) == 1 ? Rol.ADMIN : Rol.NORMAL;
                    return true;

                }
                return false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }


        }
       

    }
}