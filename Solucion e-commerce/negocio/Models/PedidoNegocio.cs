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
                datos.setearParametros("@idUsuario", nuevo.IdUsuario.ID);
                datos.setearParametros("@idFormaPago", nuevo.formaPago.ID);
                datos.setearParametros("@retiraPorSucursal", nuevo.RetiraSucursal);
                datos.setearParametros("@pagoConfirmado", nuevo.PagoConfirmado);
                datos.setearParametros("@fechaInicioPedido", nuevo.Fecha);
                datos.setearParametros("@fechaPago", nuevo.FechaPago);
                datos.setearParametros("@idEnvio", nuevo.EnvioPedido.ID);

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
