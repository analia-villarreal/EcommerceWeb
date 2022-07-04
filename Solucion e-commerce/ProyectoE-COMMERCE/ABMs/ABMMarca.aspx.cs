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




            ItemChicoNegocio negocioMarcas = new ItemChicoNegocio();
            ItemsChicos = negocioMarcas.Listar("Color");
            dgvMarcas.DataSource = negocioMarcas.Listar("Marca");
            dgvMarcas.DataBind();

        }
        protected void dgvMarcas_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvMarcas.SelectedDataKey.Value.ToString();

            Session["itemChicoABM"] = "Marca";
            Response.Redirect("ItemChicoForm.aspx?ID=" + id);

        }
    }
}