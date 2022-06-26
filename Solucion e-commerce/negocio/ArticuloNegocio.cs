﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio;

namespace negocio
{
    public class ArticuloNegocio
    {
        public List<Articulo> Listar(bool estado = true)
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta(Diccionario.LISTAR_ARTICULOS);

                datos.ejecutarLectura();
                int ide = 0;
                while (datos.Lector.Read())
                {
                    ide++;
                    Articulo aux = new Articulo();

                    aux.ID = ide; //hay que corregir esto, se deberia utilizar aux.ID = (int)datos.Lector["Id"];
                                  //pero por alguna razon crashea el sistema
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

                    aux.EstadoComercial = new EstadoComercial();
                    aux.EstadoComercial.ID = (int)datos.Lector["idEstadoComercial"];
                    aux.EstadoComercial.Nombre = (string)datos.Lector["nombre"];

                    aux.Descuento = (int)datos.Lector["descuento"];

                    if (estado == false && aux.EstadoNegocios == false) lista.Add(aux);
                    if (estado == true && aux.EstadoNegocios == true) lista.Add(aux);


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
                datos.setearParametros("@estadoActivo", nuevo.EstadoNegocios);
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
                datos.setearParametros("@nombre", art.Nombre);
                datos.setearParametros("@descripcion", art.Descripcion);
                datos.setearParametros("@URLImagen", art.URLImagen);
                datos.setearParametros("@idTipo", art.Tipo.ID);
                datos.setearParametros("@idColor", art.Color.ID);
                datos.setearParametros("@idCategoria", art.Categoria.ID);
                datos.setearParametros("@idMarca", art.Marca.ID);
                datos.setearParametros("@descuento", art.Descuento);
                datos.setearParametros("@precio", art.Precio);
                datos.setearParametros("@idEstadoComercial", art.EstadoComercial.ID);
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




    }
}
   