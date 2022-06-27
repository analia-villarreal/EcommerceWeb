using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace dominio
{
    public enum Rol
    {
        normal = 1,
        admin = 2
    }


    public class Usuario
    {
        public int ID { get; set; }
        public string UserName { get; set; }
        public string Contrasenia { get; set; }
        public string Nombre_Usuario { get; set; }
        public string Apellido { get; set; }
        public string Email { get; set; }
        public Rol Rol { get; set; }
        public int IdDireccion { get; set; }
    }
    /*
    public Usuario(string User, string pass, bool admin)
    {
        UserName = User;
        Contrasenia = pass;
        Rol = admin ? 
    }
    */
}
