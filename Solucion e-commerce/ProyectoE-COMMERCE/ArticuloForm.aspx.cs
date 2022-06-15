using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using dominio;
using negocio;

namespace ProyectoE_COMMERCE
{
    public partial class ArticuloForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            CategoriaNegocio categoriaNegocio = new CategoriaNegocio();

            try
            {
                ddlCategoria.DataSource = categoriaNegocio.Listar();
            }
            catch (Exception ex)
            {

                MessageBox.Show("ex.ToString()");
            }
            */
            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

        }
    }
}