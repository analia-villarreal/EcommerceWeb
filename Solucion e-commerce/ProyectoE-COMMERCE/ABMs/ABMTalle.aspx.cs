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
    public partial class ABMTalle : System.Web.UI.Page
    {

        public List<dominio.Models.ItemChico> listaTalle { get; set; }

        private ItemChico itemGeneral = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["ID"] != null)
            {
                int Id = int.Parse(Request.QueryString["ID"].ToString());

                ItemChicoNegocio negocio = new ItemChicoNegocio();

                listaTalle = negocio.Listar("Talle");

                ItemChico seleccionado = listaTalle.Find(x => x.ID == Id);

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
                if (itemGeneral == null)
                    itemGeneral = new Color();

                itemGeneral.Nombre = textNombre.Text;

                negocio.Agregar(itemGeneral, "Talle");
                MessageBox.Show("Agregado exitosamente");

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.ToString());
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

                negocio.Modificar(mod, "Talle");
                MessageBox.Show("Modificado exitosamente");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }


    }




}