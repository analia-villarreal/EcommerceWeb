using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class DireccionNegocio
    {
        public List<Direccion> Listar()
        {
            List<Direccion> lista = new List<Direccion>();
            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {

                    Direccion aux = new Direccion();
                    ArticuloxPedido aux1 = new ArticuloxPedido();

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
