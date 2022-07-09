using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Marca
    {
        public int ID { get; set; }
        public string NombreMarca { get; set; }
        public bool EstadoMarca { get; set; }

        public override string ToString()
        {
            return NombreMarca;

        }
    }
}