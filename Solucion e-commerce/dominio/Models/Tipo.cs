using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio
{
    public class Tipo
    {
        
        public int ID { get; set; }
        public string Nombre { get; set; }

        public override string ToString()
        {
            return Nombre;
        }
        
    }
}