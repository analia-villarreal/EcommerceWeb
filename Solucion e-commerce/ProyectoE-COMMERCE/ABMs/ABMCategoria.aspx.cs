using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio.Models;
using dominio.Models;

namespace ProyectoE_COMMERCE.ABMs
{
    public partial class ABMCategoria : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            Session["itemChicoABM"] = "Categoria";


            ItemChicoNegocio negocioCategorias = new ItemChicoNegocio();
            
            dgvCategorias.DataSource = negocioCategorias.Listar("Categoria");
            dgvCategorias.DataBind();

        }

        protected void dgvCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvCategorias.SelectedDataKey.Value.ToString();

            
            Response.Redirect("ItemChicoForm.aspx?ID=" + id);

        }

        protected void dgvCategorias_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvCategorias.PageIndex = e.NewPageIndex;
            dgvCategorias.DataBind();
        }


    }
}