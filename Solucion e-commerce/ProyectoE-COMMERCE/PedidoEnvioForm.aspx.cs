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
        public List<dominio.Models.DetallePedido> listaPedido { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    List<DetallePedido> listaPedido = new List<DetallePedido>();

                    int IdPedido = int.Parse(Request.QueryString["ID"].ToString());

                    PedidoNegocio negocio = new PedidoNegocio();

                    listaPedido = negocio.Listar(IdPedido);

                    Session.Add("Pedido",listaPedido);

                    DireccionNegocio negocioD= new DireccionNegocio();

                    Usuario user=new Usuario();

                    user = (Usuario)Session["Usuario"];

                    rbDireccion.Text = negocioD.ListarDireccion(user.ID);

                    FormaPagoNegocio negocioFP = new FormaPagoNegocio();

                    rbPago.Text = negocioFP.FormaPago();

                }
            }

        }

        protected void Confirmar_Click(object sender, EventArgs e)
        {

        }
    }
}