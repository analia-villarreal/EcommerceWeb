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
        public List<ItemChico> ItemsChicos { get; set; }
        public int pagina { get; set; }




        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["pagina"] != null)
            {
                pagina = int.Parse(Request.QueryString["pagina"].ToString());

            }
            else
            {
                pagina = 1;
            }



            ItemChicoNegocio negocioCategorias = new ItemChicoNegocio();

            ItemsChicos = negocioCategorias.Listar("Categoria");
            dgvCategorias.DataSource = negocioCategorias.ListarPorPagina("Categoria", pagina);
            dgvCategorias.DataBind();

        }

        protected void dgvCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvCategorias.SelectedDataKey.Value.ToString();

            Session["itemChicoABM"] = "Categoria";
            Response.Redirect("ItemChicoForm.aspx?ID=" + id);

        }


    }
}