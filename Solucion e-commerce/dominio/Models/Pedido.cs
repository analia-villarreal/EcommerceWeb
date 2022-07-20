using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Pedido
    {
        public int ID { get; set; }
        public DateTime Fecha { get; set; }
        public List<Articulo> listaCarrito { get; set; }
        public Usuario IdUsuario  { get; set; }
        public decimal TotalPedido { get; set; }
        public bool EstadoPedido { get; set; }

    }

    public class DetallePedido
    {
        public Pedido IDPedido { get; set; }
        public Articulo IDArticulo { get; set; }
        public Articulo NombreArt { get; set; }
        public Articulo Precio { get; set; }
        public ArticuloXPedido Cant { get; set; }
        public Pedido ImporteTotal { get; set; }
       
    }
}