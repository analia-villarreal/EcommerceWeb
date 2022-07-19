using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace negocio.Models
{
    public class Direccion
    {
        public int ID { get; set; }
        public string NombreCalle { get; set; }
        public int NumeroCalle { get; set; }
        public int Piso { get; set; }
        public string Localidad { get; set; }
        public string Provincia { get; set; }
        public int CP { get; set; }
        public bool EstadoDir { get; set; }
    }
}