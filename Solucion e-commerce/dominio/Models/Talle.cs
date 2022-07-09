using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Talle
    {
        public int ID { get; set; }
        public string NombreTalle { get; set; }
        public bool EstadoTalle { get; set; }

        public override string ToString()
        {
            return NombreTalle;

        }
    }
}