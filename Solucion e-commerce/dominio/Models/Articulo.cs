using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio
{
    public class Articulo
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string URLImagen { get; set; }
        public int IDTipo { get; set; }
        public int IDCategoria { get; set; }
        public int IDSubcategoria { get; set; }
        public int IDmarca { get; set; }
        public int Temporada { get; set; }
        public int Descuento { get; set; }
        public decimal Precio { get; set; }
    }
}