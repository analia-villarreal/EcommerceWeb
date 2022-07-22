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
                datos.setearConsulta("INSERT INTO Pago VALUES(@idPedido, @idFormaPago, @fechaPago, 0)");


                datos.setearParametros("@idPedido", nuevo.idPed.ID);
                datos.setearParametros("@idFormaPago", nuevo.FormaDePago.ID);
                datos.setearParametros("@fechaEnvio", nuevo.FechaPago);


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