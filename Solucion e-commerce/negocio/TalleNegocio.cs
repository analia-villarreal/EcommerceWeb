using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio;

namespace negocio
{
    public class TalleNegocio
    {
        public List<Talle> Listar()
        {
            List<Talle> lista = new List<Talle>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("SELECT ID, nombreTalle from Talle");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Talle aux = new Talle();

                    aux.ID = (int)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector["nombreTalle"];
                    lista.Add(aux);


                }
                return lista;
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
