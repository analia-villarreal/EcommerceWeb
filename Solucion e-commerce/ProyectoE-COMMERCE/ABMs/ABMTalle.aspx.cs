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
    public partial class ABMTalle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["itemChicoABM"] = "Talle";


            ItemChicoNegocio negocioTalles = new ItemChicoNegocio();

            dgvTalles.DataSource = negocioTalles.Listar("Talle");
            dgvTalles.DataBind();

        }
        protected void dgvTalles_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvTalles.SelectedDataKey.Value.ToString();

            
            Response.Redirect("ItemChicoForm.aspx?ID=" + id);

        }

        protected void dgvTalles_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvTalles.PageIndex = e.NewPageIndex;
            dgvTalles.DataBind();
        }




    }
}