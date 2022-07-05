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
            Session["itemChicoABM"] = "Color";



            ItemChicoNegocio negocioColores = new ItemChicoNegocio();

            dgvColores.DataSource = negocioColores.Listar("Color");
            dgvColores.DataBind();

        }

        protected void dgvColores_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvColores.SelectedDataKey.Value.ToString();

            
            Response.Redirect("ItemChicoForm.aspx?ID=" + id);

        }

        protected void dgvColores_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvColores.PageIndex = e.NewPageIndex;
            dgvColores.DataBind();
        }



    }
}