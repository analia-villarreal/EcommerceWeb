using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Color
    {
        public int ID { get; set; }
        public string NombreColor { get; set; }
        public bool EstadoColor { get; set; }

        public override string ToString()
        {
            return NombreColor;

        }
    }
}