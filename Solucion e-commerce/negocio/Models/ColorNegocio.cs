using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class ColorNegocio
    {
        public List<Color> Listar()
        {
            List<Color> lista = new List<Color>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("SELECT ID, nombreColor from Color");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Color aux = new Color();

                    aux.ID = (int)datos.Lector["ID"];
                    aux.NombreColor = (string)datos.Lector["nombreColor"];
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

        public void Agregar (Color nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.AGREGAR_COLOR);
                datos.setearParametros("@nombre", nuevo.NombreColor);
                datos.ejecutarAccion();
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

        public void Modificar (Color modif)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.MODIFICAR_COLOR);
                datos.setearParametros("@ID", modif.ID);
                datos.setearParametros("@nombre", modif.NombreColor);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                datos.cerrarConexion();
            }

        }



    }
}
