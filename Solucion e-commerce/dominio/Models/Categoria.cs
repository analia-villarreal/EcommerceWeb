using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Categoria
    {
        public int ID { get; set; }
        public string NombreCategoria { get; set; }
        public bool EstadoCategoria { get; set; }

        public override string ToString()
        {
            return NombreCategoria;

        }
    }
}