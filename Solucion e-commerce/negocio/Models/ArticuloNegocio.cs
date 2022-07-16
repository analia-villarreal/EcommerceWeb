using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class ArticuloNegocio
    {
        public List<Articulo> Listar()
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("SELECT a.ID, a.nombreArticulo, a.codigo, a.descripcion, a.URLImagen, a.idTipo, ti.nombreTipo, a.idColor, co.nombreColor, a.idTalle, t.nombreTalle, a.idCategoria, c.nombreCategoria, a.idMarca, m.nombreMarca, a.idTemporada, te.nombreTemporada, a.descuento, a.precio, a.idEstadoComercial, ec.nombreEC, a.estadoActivo FROM Articulo a, Tipo ti, Color co, Talle t, Categoria c, Marca m, Temporada te, EstadoComercial ec WHERE a.idTipo = ti.ID AND a.idColor = co.ID AND a.idTalle = t.ID AND a.idCategoria = c.ID AND a.idMarca = m.ID AND a.idTemporada = te.ID AND a.idEstadoComercial = ec.ID");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Articulo aux = new Articulo();

                    aux.ID = (int)datos.Lector["ID"];

                    aux.Nombre = (string)datos.Lector["nombreArticulo"];

                    aux.Codigo = (string)datos.Lector["codigo"];

                    aux.Descripcion = (string)datos.Lector["descripcion"];
                    if (!(datos.Lector["URLImagen"] is DBNull))
                        aux.URLImagen = (string)datos.Lector["URLImagen"];

                    aux.Tipo = new Tipo();
                    aux.Tipo.ID = (int)datos.Lector["idTipo"];
                    aux.Tipo.NombreTipo = (string)datos.Lector["nombreTipo"];

                    aux.Color = new Color();
                    aux.Color.ID = (int)datos.Lector["idColor"];
                    aux.Color.NombreColor = (string)datos.Lector["nombreColor"];

                    aux.Talle = new Talle();
                    aux.Talle.ID = (int)datos.Lector["idTalle"];
                    aux.Talle.NombreTalle = (string)datos.Lector["nombreTalle"];

                    aux.Categoria = new Categoria();
                    aux.Categoria.ID = (int)datos.Lector["idCategoria"];
                    aux.Categoria.NombreCategoria = (string)datos.Lector["nombreCategoria"];

                    aux.Marca = new Marca();
                    aux.Marca.ID = (int)datos.Lector["idMarca"];
                    aux.Marca.NombreMarca = (string)datos.Lector["nombreMarca"];

                    aux.Temporada = new Temporada();
                    aux.Temporada.ID = (int)datos.Lector["idtemporada"];
                    aux.Temporada.NombreTemporada = (string)datos.Lector["nombreTemporada"];

                    aux.Descuento = (int)datos.Lector["descuento"];

                    aux.Precio = (decimal)datos.Lector["precio"];

                    aux.EstadoComercial = new EstadoComercial();
                    aux.EstadoComercial.ID = (int)datos.Lector["idEstadoComercial"];
                    aux.EstadoComercial.NombreEC = (string)datos.Lector["nombreEC"];

                    aux.EstadoActivo = (bool)datos.Lector["estadoActivo"];

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
        public void Agregar(Articulo nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.AGREGAR_ARTICULO);
                //datos.setearParametros("@Id", nuevo.ID);
                datos.setearParametros("@nombre", nuevo.Nombre);
                datos.setearParametros("@codigo", nuevo.Codigo);
                datos.setearParametros("@descripcion", nuevo.Descripcion);
                datos.setearParametros("@URLImagen", nuevo.URLImagen);
                datos.setearParametros("@idTipo", nuevo.Tipo.ID);
                datos.setearParametros("@idColor", nuevo.Color.ID);
                datos.setearParametros("@idTalle", nuevo.Talle.ID);
                datos.setearParametros("@idCategoria", nuevo.Categoria.ID);
                datos.setearParametros("@idMarca", nuevo.Marca.ID);
                datos.setearParametros("@idTemporada", nuevo.Temporada.ID);
                datos.setearParametros("@descuento", nuevo.Descuento);
                datos.setearParametros("@precio", nuevo.Precio);
                datos.setearParametros("@idEstadoComercial", nuevo.EstadoComercial.ID);
                datos.setearParametros("@estadoActivo", nuevo.EstadoActivo);
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

        public void Modificar(Articulo art)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.MODIFICAR_ARTICULO);
                datos.setearParametros("@ID", art.ID);
                datos.setearParametros("@nombre", art.Nombre);
                datos.setearParametros("@descripcion", art.Descripcion);
                datos.setearParametros("@URLImagen", art.URLImagen);
                datos.setearParametros("@idTipo", art.Tipo.ID);
                datos.setearParametros("@idColor", art.Color.ID);
                datos.setearParametros("@idTalle", art.Talle.ID);
                datos.setearParametros("@idCategoria", art.Categoria.ID);
                datos.setearParametros("@idMarca", art.Marca.ID);
                datos.setearParametros("@idTemporada", art.Temporada.ID);
                datos.setearParametros("@descuento", art.Descuento);
                datos.setearParametros("@precio", art.Precio);
                datos.setearParametros("@idEstadoComercial", art.EstadoComercial.ID);
                datos.setearParametros("@estadoActivo", art.EstadoActivo);
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

        public void BajaLogica(int id)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.BAJA_ARTICULO);
                datos.setearParametros("@ID", id);
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
        public void AgregarArtXPed(int num, Articulo art, cantArticulo cant)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("INSERT INTO ARTICULOXPEDIDO VALUES ('" + num + "','" + art.ID + "','" + art.Precio + "','" + cant.cant + "' )");

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
   