using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio
{
    public class SubCategoria
    {
        public int ID { get; set; }
        public int Talle { get; set; }
        public string Descripcion { get; set; }
        public override string ToString()
        {
            return Descripcion;
        }
    }
}