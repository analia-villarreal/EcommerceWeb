using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Direccion
    {
        public int ID { get; set; }
        public string NombreCalle { get; set; }
        public int NumeroDireccion { get; set; }
        public string Piso { get; set; }
        public string Localidad { get; set; }
        public string Provincia { get; set; }
        public int CP { get; set; }
        public bool EstadoDireccion { get; set; }
    }
}