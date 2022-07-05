using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using dominio.Models;
using negocio.Models;

namespace ProyectoE_COMMERCE.ABMs
{
    public partial class ItemChicoForm : System.Web.UI.Page
    {
        
        public List<dominio.Models.ItemChico> listaColor { get; set; }

        private ItemChico itemChic = null;

        public static string mensaje { get; set; }

        public string itemABM { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            itemABM = (string)Session["itemChicoABM"];

            if (Request.QueryString["ID"] != null)
            {
                int Id = int.Parse(Request.QueryString["ID"].ToString());

                ItemChicoNegocio negocio = new ItemChicoNegocio();

                listaColor = negocio.Listar(itemABM);

                ItemChico seleccionado = listaColor.Find(x => x.ID == Id);

                if (!IsPostBack)
                {
                    textNombre.Text = seleccionado.Nombre;
                }
            
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            ItemChicoNegocio negocio = new ItemChicoNegocio();

            try
            {
                if (itemChic == null)
                    itemChic = new ItemChico();

                itemChic.Nombre = textNombre.Text;

                negocio.Agregar(itemChic,itemABM);
                mensaje = "Agregado exitosamente";
                
            }
            catch (Exception ex)
            {

                mensaje = ex.ToString();
            }


        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ItemChicoNegocio negocio = new ItemChicoNegocio();

            ItemChico mod = new ItemChico();

            try
            {
                mod.ID = int.Parse(Request.QueryString["ID"]);
                mod.Nombre = textNombre.Text;

                negocio.Modificar(mod, itemABM);
                mensaje = "Modificado exitosamente";
            }
            catch(Exception ex)
            {
                mensaje = ex.ToString();
            }


        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        protected void btnBorrarMensaje_Click(object sender, EventArgs e)
        {
            mensaje = null;
        }

        protected void btnVolverAlABM_Click(object sender, EventArgs e)
        {
            mensaje = null;
            Response.Redirect("ABM" + itemABM);
        }
    }



    
}