using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Tipo
    {
        public int ID { get; set; }
        public string NombreTipo { get; set; }
        public bool EstadoTipo { get; set; }

        public override string ToString()
        {
            return NombreTipo;

        }


    }
}