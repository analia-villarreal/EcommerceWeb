using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class DireccionNegocio
    {
        public string ListarDireccion(int id)
        {
            string lista;
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("SELECT d.nombreCalle, d.numeroCalle,d.localidad FROM Direccion d INNER JOIN Usuario u ON d.ID = u.idDireccion WHERE u.ID =" + id);

                datos.ejecutarLectura();
                Direccion aux = new Direccion();

                while (datos.Lector.Read())
                {
                                      
                    //aux.ID = (int)datos.Lector["ID"];
                    aux.NombreCalle = (string)datos.Lector["nombreCalle"];
                    aux.NumeroCalle = (int)datos.Lector["numeroCalle"];
                    //aux.Piso = (int)datos.Lector["piso"];
                    aux.Localidad = (string)datos.Lector["localidad"];
                    //aux.Provincia = (string)datos.Lector["provincia"];
                    //aux.CP = (int)datos.Lector["codigoPostal"];
                    //aux.EstadoDir = (bool)datos.Lector["estadoDir"];
                    
                }
                lista = aux.NombreCalle + " " + aux.NumeroCalle + " " + aux.Localidad;
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();

            }
        }
    }
}
