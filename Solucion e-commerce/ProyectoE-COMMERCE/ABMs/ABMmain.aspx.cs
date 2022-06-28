using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace ProyectoE_COMMERCE.ABMs
{
    public partial class ABMmain : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            dgvArticulos.DataSource = negocio.Listar();
            dgvArticulos.DataBind();

            dvgColores.DataSource = negocio.Listar();
            dvgColores.DataBind();

        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvArticulos.SelectedDataKey.Value.ToString();

            Response.Redirect("ABMArticulos.aspx?ID=" + id);

        }
        /*
        protected void dgvColores_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvColores.SelectedDataKey.Value.ToString();

            Response.Redirect("ABMArticulos.aspx?ID=" + id);

        }
        */

    }
}