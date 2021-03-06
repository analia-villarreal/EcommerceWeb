using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class TalleNegocio
    {
        public List<Talle> Listar()
        {
            List<Talle> lista = new List<Talle>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta(Diccionario.LISTAR_TALLE);

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Talle aux = new Talle();

                    aux.ID = (int)datos.Lector["ID"];
                    aux.NombreTalle = (string)datos.Lector["nombreTalle"];
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
