using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio.Models;
using negocio.Models;


namespace ProyectoE_COMMERCE
{
    public partial class PedidoEnvioForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["num"] != null)
            {
                int IdPedido = int.Parse(Request.QueryString["num"].ToString());

                ArticuloNegocio negocio = new ArticuloNegocio();

                List<Articulo> listaPedido = negocio.Listar();

                Session.Add("Pedido", listaPedido);

                DireccionNegocio negocioD = new DireccionNegocio();

               



            }
        }
    }
}