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

        public List<Talle> ListarPorPagina()
        {
            List<Talle> lista = new List<Talle>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta(Diccionario.LISTAR_TALLE_POR_PAGINA);
                datos.setearParametros("@ID", 0);
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

        public List<Talle> ListarPorPagina(int pagina)
        {
            List<Talle> lista = new List<Talle>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta(Diccionario.LISTAR_TALLE_POR_PAGINA);
                datos.setearParametros("@ID", pagina);
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
