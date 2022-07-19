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
                datos.setearConsulta("INSERT INTO Pedido VALUES (@idUsuario,@fechaPedido,1)");
                datos.setearParametros("@idUsuario", nuevo.IdUsuario.ID);
                datos.setearParametros("@fechaPedido", nuevo.Fecha);
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
        public List<Pedido> Listar()
        {
            List<Pedido> lista = new List<Pedido>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Pedido aux = new Pedido();
                    ArticuloxPedido aux1=new ArticuloxPedido();

                    aux.ID = (int)datos.Lector["ID"];
                    aux.Fecha=(DateTime)datos.Lector["fechaPedido"];
                    aux.IdUsuario.ID = (int) datos.Lector["idUsuario"];
                    aux.TotalPedido = (decimal)datos.Lector["importeTotal"];
                    aux.EstadoPedido=(bool)datos.Lector["estadoPedido"];
                    
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
