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
        public int IDPedido { get; set; }
        public int IDArticulo { get; set; }
        public string NombreArt { get; set; }
        public decimal Precio { get; set; }
        public int Cantidad { get; set; }
        public decimal ImporteTotal { get; set; }
       
    }
}