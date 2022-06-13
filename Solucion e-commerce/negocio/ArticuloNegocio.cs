﻿using System;
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
                datos.setearConsulta("SELECT a.nombre, codigo, a.descripcion, urlImagen, Precio, a.IdMarca, m.nombre as Marca ,a.IdCategoria, c.nombre as Categoria, a.idTipo, t.nombre as Tipo, a.idSubcategoria, sc.talle, a.idTemporada, temp.nombre, descuento, a.estado, e.nombre   FROM Articulo a, Marca m, Categoria c, Estado e, Tipo t , Subcategoria sc, Temporada temp WHERE m.Id = a.IdMarca and c.Id = a.IdCategoria and e.Id = a.estado and sc.Id = a.idSubcategoria and temp.Id = a.idTemporada and t.Id = a.idTipo");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Articulo aux = new Articulo();

                    //aux.ID = (int)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector["nombre"];

                    aux.Descripcion = (string)datos.Lector["descripcion"];
                    if (!(datos.Lector["UrlImagen"] is DBNull))
                        aux.URLImagen = (string)datos.Lector["UrlImagen"];
                  
                    aux.Tag = new Estado();
                    aux.Tag.ID = (int)datos.Lector["estado"];
                    aux.Tag.Nombre = (string)datos.Lector["nombre"];

                    aux.IDCategoria = new Categoria();
                    aux.IDCategoria.ID = (int)datos.Lector["idCategoria"];
                    aux.IDCategoria.Nombre = (string)datos.Lector["nombre"];

                    aux.IDSubcategoria = new SubCategoria();
                    aux.IDSubcategoria.ID = (int)datos.Lector["idSubCategoria"];
                    aux.IDSubcategoria.Talle = (int)datos.Lector["talle"];

                    aux.Brand = new Marca();
                    aux.Brand.ID = (int)datos.Lector["idMarca"];
                    aux.Brand.Nombre = (string)datos.Lector["nombre"];

                    aux.Season.ID = (int)datos.Lector["temporada"];
                    aux.Season.Nombre = (string)datos.Lector["nombre"];
                    
                    aux.Descuento = (int)datos.Lector["descuento"];
                    
                    aux.Precio = (decimal)datos.Lector["precio"];
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