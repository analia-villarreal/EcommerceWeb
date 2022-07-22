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
        public int ultimoNumPedido1()
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT ID FROM Pedido WHERE ID = (SELECT MAX(ID) FROM Pedido)");
                datos.ejecutarLectura();

                int num = 1;
                while (datos.Lector.Read())
                {

                    num = (int)datos.Lector["ID"];
                }

                return num;
            }

            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        protected void Confirmar_Click(object sender, EventArgs e)
        {

            try
            {
                PagoNegocio negocio = new PagoNegocio();

                try
                {

                    Pago nuevo = new Pago();

                    nuevo.idPed = new Pedido();
                    int num = ultimoNumPedido1();
                    nuevo.idPed.ID = num;
                    nuevo.FormaDePago = new FormaPago();
                    int var;

                    if (rbPago.Checked)
                    {
                        var = 1;
                        nuevo.FormaDePago.ID = var;

                    }

                    nuevo.FechaPago = DateTime.Today;

                    nuevo.PagoConfirmado = false;

                    negocio.Agregar(nuevo);

                }
                catch (Exception ex)
                {

                    Session.Add("error", ex);
                }

                EnvioNegocio negocioE = new EnvioNegocio();

                try
                {

                    Usuario user = new Usuario();

                    user = (Usuario)Session["Usuario"];

                    Envio envio = new Envio();
                    Usuario user1 = new Usuario();

                    user1 = (Usuario)Session["Usuario"];

                    envio.IdUsuario = user1;

                    int num = ultimoNumPedido1();
                    envio.IdPedido = new Pedido();
                    envio.IdPedido.ID = num;

                    envio.FormaEnvio = new FormaEnvio();
                    envio.FormaEnvio.ID = 1;

                    if (rbSucursal.Checked)
                    {
                        envio.RetiraSucursal = true;
                    }
                    else
                    {
                        envio.RetiraSucursal = false;
                    }

                    envio.IdDireccion = new Direccion();
                    if (rbDireccion.Checked)
                    {
                        envio.IdDireccion.ID = 3;
                    }
                    envio.EnvioRecibidoOK = false;
                    envio.FechaEnvio = DateTime.Now;
                    envio.EstadoEnvio = false;
                    envio.FechaRecepcion = DateTime.Today;

                    negocioE.Agregar(envio);

                    Response.Redirect("MensajeExito.aspx",false);      

                }
                catch (Exception ex)
                {

                    Session.Add("error", ex);
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                //Response.Redirect("", false);
            }


        }
    }
}