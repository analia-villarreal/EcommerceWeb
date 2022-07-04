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
    public partial class ABMArticulo : Page
    {






        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocioArticulos = new ArticuloNegocio();



            dgvArticulos.DataSource = negocioArticulos.Listar();
            dgvArticulos.DataBind();


          

        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvArticulos.SelectedDataKey.Value.ToString();

            Response.Redirect("ArticulosForm.aspx?ID=" + id);

        }
        


    






    }
}