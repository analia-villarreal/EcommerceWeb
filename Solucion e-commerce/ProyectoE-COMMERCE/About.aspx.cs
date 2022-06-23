using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace ProyectoE_COMMERCE
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            dgvArticulos.DataSource = negocio.Listar();
            dgvArticulos.DataBind();
        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvArticulos.SelectedDataKey.Value.ToString();
            Response.Redirect("ArticuloForm.aspx? ID=" + id);


        }

        
        protected string DevolverCaracteristica(int IDbusqueda, string tipoDato)
        {
            AccesoDatos datos = new AccesoDatos();

            string aDevolver = "error";

            try
            {
                datos.setearConsulta(Diccionario.BUSCAR_POR_ID_TIPO);
                datos.setearParametros("@aBuscar", tipoDato);
                datos.setearParametros("@ID", IDbusqueda);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    aDevolver = (string)datos.Lector["nombre"];
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();

            }

            return aDevolver;

        }  ///Consultar a maxi como embeber el resultado de esta funcion en el .aspx

    }
}