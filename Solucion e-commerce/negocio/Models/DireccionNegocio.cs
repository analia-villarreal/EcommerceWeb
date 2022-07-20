using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class DireccionNegocio
    {
        public List<Direccion> Listar(int id)
        {
            List<Direccion> lista = new List<Direccion>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("SELECT ID, nombreCalle, numeroCalle, piso, localidad, provincia, codigoPostal, estadoDir=1 FROM Direccion");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Direccion aux = new Direccion();

                    aux.ID = (int)datos.Lector["ID"];
                    aux.NombreCalle = (string)datos.Lector["nombreCalle"];
                    aux.NumeroCalle = (int)datos.Lector["numeroCalle"];
                    aux.Piso = (int)datos.Lector["piso"];
                    aux.Localidad = (string)datos.Lector["localidad"];
                    aux.Provincia = (string)datos.Lector["provincia"];
                    aux.CP = (int)datos.Lector["codigoPostal"];
                    aux.EstadoDir = (bool)datos.Lector["estadoDir"];

                    lista.Add(aux);
                }
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
