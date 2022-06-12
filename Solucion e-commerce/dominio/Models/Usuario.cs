using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dominio
{
    public class Usuario
    {
    
        public int ID { get; set; }
        public string UserName { get; set; }
        public string Contrasenia { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string email { get; set; }
        public int Roles { get; set; }
        public int IdDireccion { get; set; }
    }
}