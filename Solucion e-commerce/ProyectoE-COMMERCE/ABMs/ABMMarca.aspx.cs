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
    public partial class ABMMarca : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["itemChicoABM"] = "Marca";
            ItemChicoNegocio negocioMarcas = new ItemChicoNegocio();
            dgvMarcas.DataSource = negocioMarcas.Listar("Marca");
            dgvMarcas.DataBind();

        }
        protected void dgvMarcas_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvMarcas.SelectedDataKey.Value.ToString();

            
            Response.Redirect("ItemChicoForm.aspx?ID=" + id);

        }

        protected void dgvMarcas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvMarcas.PageIndex = e.NewPageIndex;
            dgvMarcas.DataBind();
        }


    }
}