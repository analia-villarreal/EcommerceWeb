using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class PagoNegocio
    {
        public void Agregar(Pago nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("INSERT INTO Pago VALUES(@idPedido, @idFormaPago, @fechaPago,@pagoConfirmado)");


                datos.setearParametros("@idPedido", nuevo.idPed.ID);
                datos.setearParametros("@idFormaPago", nuevo.FormaDePago.ID);
                datos.setearParametros("@fechaPago", nuevo.FechaPago);
                datos.setearParametros("@pagoConfirmado", nuevo.PagoConfirmado);

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