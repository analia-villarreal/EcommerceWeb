using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio.Models
{
    public class Articulo
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Codigo { get; set; }
        public string Descripcion { get; set; }
        public string URLImagen { get; set; }   
        public Tipo Tipo { get; set; }
        public Color Color { get; set; }         
        public Talle Talle { get; set; }   
        public Categoria Categoria { get; set; }
        public Marca Marca { get; set; }
        public Temporada Temporada { get; set; }      
        public int Descuento { get; set; }      
        public decimal Precio { get; set; }
        public EstadoComercial EstadoComercial { get; set; }
        public bool EstadoActivo { get; set; }
    }
    public class cantArticulo
    {
        public int id { get; set; }
        public int cant { get; set; }

        public cantArticulo(int a, int b)
        {
            id = a;
            cant = b;
        }
    }

}