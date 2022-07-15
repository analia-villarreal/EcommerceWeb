using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class PedidoNegocio
    {

        public void AgregarPedido(Pedido nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("INSERT INTO Pedido VALUES (@idUsuario,@idFormaPago,@retiraPorSucursal,@pagoConfirmado,@fechaInicioPedido,@fechaPago,@idEnvio,1)");
                datos.setearParametros("@idUsuario", nuevo.IdUsuario);
                datos.setearParametros("@idFormaPago", nuevo.formaPago);
                datos.setearParametros("@dretiraPorSucursal", nuevo.RetiraSucursal);
                datos.setearParametros("@pagoConfirmado", nuevo.PagoConfirmado);
                datos.setearParametros("@fechaInicioPedido", nuevo.Fecha);
                datos.setearParametros("@fechaPago", nuevo.FechaPago);
                datos.setearParametros("@idEnvio", nuevo.EnvioPedido);
              
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
        public void AgregarArtXPed(int num, Articulo art, int cant)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("INSERT INTO ARTICULOXPEDIDO VALUES ('" + num + "','" + art.ID + "','" + art.Precio + "','" + cant + "' )");

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
