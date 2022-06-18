using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio;

namespace negocio
{
    public class ArticuloNegocio
    {
        public List<Articulo> Listar()
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("SELECT a.nombre, codigo, a.descripcion, urlImagen, Precio, a.IdMarca, m.nombre as Marca ,a.IdCategoria, c.nombre as Categoria, a.idTipo, t.nombre as Tipo, a.idColor, co.nombre as Color,a.idTalle, talle.nombre as Talle, a.idTemporada, temp.nombre as Temporada, descuento, a.estado, e.nombre as Estado  FROM Articulo a, Marca m, Categoria c, Estado e, Tipo t ,Color co, Talle talle, Temporada temp WHERE m.Id = a.IdMarca and c.Id = a.IdCategoria and e.Id = a.estado and co.Id = a.idColor and talle.id = a.idTalle and temp.Id = a.idTemporada and t.Id = a.idTipo");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Articulo aux = new Articulo();

                    //aux.ID = (int)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector["nombre"];

                    aux.Descripcion = (string)datos.Lector["descripcion"];
                    if (!(datos.Lector["UrlImagen"] is DBNull))
                        aux.URLImagen = (string)datos.Lector["UrlImagen"];

                    aux.Codigo = (string)datos.Lector["codigo"];

                    aux.Precio = (decimal)datos.Lector["precio"];

                    aux.Marca = new Marca();
                    aux.Marca.ID = (int)datos.Lector["idMarca"];
                    aux.Marca.Nombre = (string)datos.Lector["nombre"];

                    aux.Categoria = new Categoria();
                    aux.Categoria.ID = (int)datos.Lector["idCategoria"];
                    aux.Categoria.Nombre = (string)datos.Lector["nombre"];

                    aux.Tipo = new Tipo();
                    aux.Tipo.ID = (int)datos.Lector["idTipo"];
                    aux.Tipo.Nombre = (string)datos.Lector["nombre"];

                    aux.Color = new Color();
                    aux.Color.ID = (int)datos.Lector["idColor"];
                    aux.Color.Nombre = (string)datos.Lector["nombre"];


                    aux.Talle = new Talle();
                    aux.Talle.ID = (int)datos.Lector["idTalle"];
                    aux.Talle.Nombre = (string)datos.Lector["nombre"];

                    aux.Temporada = new Temporada();
                    aux.Temporada.ID = (int)datos.Lector["idtemporada"];
                    aux.Temporada.Nombre = (string)datos.Lector["nombre"];

                    aux.Estado = new Estado();
                    aux.Estado.ID = (int)datos.Lector["estado"];
                    aux.Estado.Nombre = (string)datos.Lector["nombre"];
                    
                    aux.Descuento = (int)datos.Lector["descuento"];
                    
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