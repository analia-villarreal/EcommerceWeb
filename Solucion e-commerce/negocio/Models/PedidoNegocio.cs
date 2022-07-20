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
                datos.setearConsulta("INSERT INTO Pedido VALUES (@idUsuario,@fechaPedido,@importeTotal,1)");
                datos.setearParametros("@idUsuario", nuevo.IdUsuario.ID);
                datos.setearParametros("@fechaPedido", nuevo.Fecha);
                datos.setearParametros("@importeTotal", nuevo.TotalPedido);
                datos.setearParametros("@EstadoPedido", nuevo.EstadoPedido);

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
        public List<DetallePedido>Listar(int id)
        {
            List<DetallePedido> lista = new List<DetallePedido>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("SELECT p.ID, art.ID, art.nombreArticulo, art.precio,axp.cantidad, p.importeTotal FROM Pedido p INNER JOIN ArticuloxPedido axp ON p.ID = axp.idPedido INNER JOIN Articulo art ON axp.idArticulo = art.ID WHERE p.estadoPedido = 1 AND p.ID=="+id);

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    DetallePedido aux = new DetallePedido();

                    aux.IDPedido = new Pedido();
                    aux.IDPedido.ID= (int)datos.Lector["idPedido"];

                    aux.IDArticulo = new Articulo();
                    aux.IDArticulo.ID=(int)datos.Lector["idArticulo"];

                    aux.NombreArt = new Articulo();
                    aux.NombreArt.Nombre = (string)datos.Lector["nombreArticulo"];

                    aux.Precio = new Articulo();
                    aux.Precio.Precio = (decimal)datos.Lector["precio"];

                    aux.Cant = new ArticuloXPedido();
                    aux.Cant.Cantidad = (int)datos.Lector["cantidad"];

                    aux.ImporteTotal = new Pedido();
                    aux.ImporteTotal.TotalPedido = (decimal)datos.Lector["totalPedido"];

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
