using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Pago
    {
        public int ID { get; set; }
        public Pedido idPed { get; set; }
        public FormaPago FormaDePago { get; set; }
        public DateTime  FechaPago{ get; set; }
        public bool PagoConfirmado { get; set; }

    }
}