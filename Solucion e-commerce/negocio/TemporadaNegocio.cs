using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio;

namespace negocio
{
    public class TemporadaNegocio
    {
        public List<Temporada> Listar()
        {
            List<Temporada> lista = new List<Temporada>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("SELECT ID, nombre from Temporada");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Temporada aux = new Temporada();

                    aux.ID = (int)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector["nombre"];
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