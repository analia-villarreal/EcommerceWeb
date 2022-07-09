using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class EstadoComercial
    {
        public int ID { get; set; }
        public string NombreEC { get; set; }
        public bool EstadoEC { get; set; }

        public override string ToString()
        {
            return NombreEC;

        }
    }
}
