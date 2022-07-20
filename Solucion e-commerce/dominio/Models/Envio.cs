using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Envio
    {
        public int ID { get; set; }
        public Usuario IdUsuario { get; set; }
        public Pedido IdPedido { get; set; }
        public Direccion IdDireccion { get; set; }
        public FormaEnvio FormaEnvio { get; set; }
        public bool RetiraSucursal { get; set; }
        public bool EnvioRecibidoOK { get; set; }
        public DateTime FechaEnvio { get; set; }
        public DateTime FechaRecepcion { get; set; }
        public bool EstadoEnvio { get; set; }




    }
}