using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio.Models;

namespace negocio.Models
{
    public class FormaPagoNegocio
    {

        public string FormaPago()
        {
            string forma;

            AccesoDatos datos = new AccesoDatos();


            try
            {
                datos.setearConsulta("SELECT ID, nombre from FormaPago");

                datos.ejecutarLectura();

                FormaPago aux = new FormaPago();

                while (datos.Lector.Read())
                {

                    aux.ID = (int)datos.Lector["ID"];
                    aux.NombreFP = (string)datos.Lector["nombre"];
                    
                }
                forma = aux.NombreFP;
                return forma;
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