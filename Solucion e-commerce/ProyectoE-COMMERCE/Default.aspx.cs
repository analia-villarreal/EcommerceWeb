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
    

    public partial class _Default : Page
    {
        public List<dominio.Articulo> listaArticulos { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            listaArticulos = negocio.Listar();

            Session.Add("catalogo", listaArticulos);
        }
    }
}