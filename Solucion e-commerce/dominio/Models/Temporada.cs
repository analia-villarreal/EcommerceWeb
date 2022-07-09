using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Temporada
    {
        public int ID { get; set; }
        public string NombreTemporada { get; set; }
        public bool EstadoTemp { get; set; }

        public override string ToString()
        {
            return NombreTemporada;

        }
    }
}