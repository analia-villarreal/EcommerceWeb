using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class EnvioNegocio
    {
        public void Agregar(Envio nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("INSERT INTO Envios VALUES (@idUsuario,@idPedido,idDireccion,@idFormaEnvio,@retiraPorSucursal,0,1,@fechaEnvio,@fechaEntrega)");

                datos.setearParametros("@idUsuario", nuevo.IdUsuario.ID);
                datos.setearParametros("@idPedido", nuevo.IdPedido.ID);
                datos.setearParametros("@idDireccion", nuevo.IdDireccion.ID);
                datos.setearParametros("@idFormaEnvio", nuevo.FormaEnvio.ID);
                datos.setearParametros("@retiraPorSucursal", nuevo.RetiraSucursal);
                datos.setearParametros("@envioConfirmado", nuevo.EnvioRecibidoOK);
                datos.setearParametros("@estado", nuevo.EstadoEnvio);
                datos.setearParametros("@fechaEnvio", nuevo.FechaEnvio);
                datos.setearParametros("@fechaEntrega", nuevo.FechaRecepcion);

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