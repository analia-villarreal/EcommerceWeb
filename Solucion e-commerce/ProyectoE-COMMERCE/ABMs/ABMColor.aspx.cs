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
    public partial class ABMColor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ItemChicoNegocio negocioColores = new ItemChicoNegocio();

            dgvColores.DataSource = negocioColores.Listar("Talle");
            dgvColores.DataBind();

        }

        protected void dgvColores_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvColores.SelectedDataKey.Value.ToString();

            Session["itemChicoABM"] = "Color";
            Response.Redirect("ItemChicoForm.aspx?ID=" + id);

        }
    }
}