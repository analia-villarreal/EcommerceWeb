using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class EstadoComercialNegocio
    {
        public List<EstadoComercial> Listar()
        {
            List<EstadoComercial> lista = new List<EstadoComercial>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("SELECT ID, nombreEC from EstadoComercial");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    EstadoComercial aux = new EstadoComercial();

                    aux.ID = (int)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector["nombreEC"];
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
