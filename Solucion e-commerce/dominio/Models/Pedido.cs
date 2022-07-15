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
        //public Direccion IdDireccion{ get; set; }
        public FormaPago formaPago { get; set; }
        public bool RetiraSucursal { get; set; } // esto puede estar en el envio.
        public bool PagoConfirmado { get; set; }
        public DateTime FechaPago { get; set; }
        public Envio EnvioPedido { get; set; }
    

    }
}