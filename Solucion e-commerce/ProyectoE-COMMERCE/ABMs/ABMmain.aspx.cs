using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio.Models;
using negocio.Models;

namespace ProyectoE_COMMERCE.ABMs
{
    public partial class ABMmain : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocioArticulos = new ArticuloNegocio();
            ItemChicoNegocio negocioColores = new ItemChicoNegocio();
            ItemChicoNegocio negocioTalles = new ItemChicoNegocio();

            dgvArticulos.DataSource = negocioArticulos.Listar();
            dgvArticulos.DataBind();
            
            dgvColores.DataSource = negocioColores.Listar("Color");
            dgvColores.DataBind();

            dgvTalles.DataSource = negocioTalles.Listar("Talle");
            dgvTalles.DataBind();


        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvArticulos.SelectedDataKey.Value.ToString();

            Response.Redirect("ABMArticulos.aspx?ID=" + id);

        }
        
        protected void dgvColores_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvColores.SelectedDataKey.Value.ToString();

            Response.Redirect("ABMColor.aspx?ID=" + id);

        }

        protected void dgvTalles_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvTalles.SelectedDataKey.Value.ToString();

            Response.Redirect("ABMTalle.aspx?ID=" + id);

        }


    }
}