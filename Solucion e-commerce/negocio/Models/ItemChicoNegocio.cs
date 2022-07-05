using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class ItemChicoNegocio
    {
        public List<ItemChico> Listar(string tipodato)
        {
            List<ItemChico> lista = new List<ItemChico>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                
                switch (tipodato)
                {
                    case "Color":
                        datos.setearConsulta(Diccionario.LISTAR_COLOR);
                        break;
                    case "Marca":
                        datos.setearConsulta(Diccionario.LISTAR_MARCA);
                        break;
                    case "Talle":
                        datos.setearConsulta(Diccionario.LISTAR_TALLE);
                        break;
                    case "Categoria":
                        datos.setearConsulta(Diccionario.LISTAR_CATEGORIA);
                        break;

                }

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    ItemChico aux = new ItemChico();

                    aux.ID = (int)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector[tipodato];
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



        public void Agregar(ItemChico nuevo, string tipodato)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                switch (tipodato)
                {
                    case "Color":
                        datos.setearConsulta(Diccionario.AGREGAR_COLOR);
                        break;
                    case "Marca":
                        datos.setearConsulta(Diccionario.AGREGAR_MARCA);
                        break;
                    case "Talle":
                        datos.setearConsulta(Diccionario.AGREGAR_TALLE);
                        break;
                    case "Categoria":
                        datos.setearConsulta(Diccionario.AGREGAR_CATEGORIA);
                        break;

                }

                datos.setearParametros("@nombre", nuevo.Nombre);
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

        public void Modificar(ItemChico modif, string tipodato)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                switch (tipodato)
                {
                    case "Color":
                        datos.setearConsulta(Diccionario.MODIFICAR_COLOR);
                        break;
                    case "Marca":
                        datos.setearConsulta(Diccionario.MODIFICAR_MARCA);
                        break;
                    case "Talle":
                        datos.setearConsulta(Diccionario.MODIFICAR_TALLE);
                        break;
                    case "Categoria":
                        datos.setearConsulta(Diccionario.MODIFICAR_CATEGORIA);
                        break;

                }


                datos.setearParametros("@ID", modif.ID);
                datos.setearParametros("@nombre", modif.Nombre);
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
    }
}