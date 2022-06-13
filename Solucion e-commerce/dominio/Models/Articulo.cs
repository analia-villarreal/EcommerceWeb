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
        public string Codigo { get; set; }
        public string Descripcion { get; set; }
        public string URLImagen { get; set; }   
        public Tipo tipo { get; set; }
        public Categoria IDCategoria { get; set; }
        public SubCategoria IDSubcategoria { get; set; }
        public Marca Brand { get; set; }
        public Temporada Season { get; set; }      
        public int Descuento { get; set; }      
        public decimal Precio { get; set; }
        public Estado Tag { get; set; }


    }
}