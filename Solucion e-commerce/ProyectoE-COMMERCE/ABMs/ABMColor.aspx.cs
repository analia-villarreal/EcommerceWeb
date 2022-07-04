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



            ItemChicoNegocio negocioColores = new ItemChicoNegocio();

            dgvColores.DataSource = negocioColores.ListarPorPagina("Color", pagina);
            ItemsChicos = negocioColores.Listar("Color");
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