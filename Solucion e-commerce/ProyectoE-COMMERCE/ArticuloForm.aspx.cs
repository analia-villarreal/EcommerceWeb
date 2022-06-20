using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using dominio;
using negocio;

namespace ProyectoE_COMMERCE
{
    public partial class ArticuloForm1 : System.Web.UI.Page
    {
        private void Cargar_Desplegables()
        {
            
            CategoriaNegocio categoriaNegocio = new CategoriaNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlCategoria.DataSource = categoriaNegocio.Listar();
                    ddlCategoria.DataValueField = "ID";
                    ddlCategoria.DataTextField = "Nombre";
                    ddlCategoria.DataBind();
                }
                
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }
            
            ColorNegocio colorNegocio = new ColorNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlColor.DataSource = colorNegocio.Listar();
                    ddlColor.DataValueField = "ID";
                    ddlColor.DataTextField = "Nombre";
                    ddlColor.DataBind();

                }
             
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }

            TipoNegocio tipoNegocio = new TipoNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlTipo.DataSource = tipoNegocio.Listar();
                    ddlTipo.DataValueField = "ID";
                    ddlTipo.DataTextField = "Nombre";
                    ddlTipo.DataBind();
                }
                
            }
            catch (Exception ex)
            {

                MessageBox.Show("ex.ToString()");
            }

            TalleNegocio talleNegocio = new TalleNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlTalle.DataSource = talleNegocio.Listar();
                    ddlTalle.DataValueField = "ID";
                    ddlTalle.DataTextField = "Nombre";
                    ddlTalle.DataBind();
                }
                
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }

            EstadoNegocio estadoNegocio = new EstadoNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlEstado.DataSource = estadoNegocio.Listar();
                    ddlEstado.DataValueField = "ID";
                    ddlEstado.DataTextField = "Nombre";
                    ddlEstado.DataBind();

                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }

            MarcaNegocio marcaNegocio = new MarcaNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlMarca.DataSource = marcaNegocio.Listar();
                    ddlMarca.DataValueField = "ID";
                    ddlMarca.DataTextField = "Nombre";
                    ddlMarca.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar_Desplegables();

          
            

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Articulo art = new Articulo();
       
            art.Nombre = textNombre.Text;
            art.Codigo = textCodigo.Text;
            art.Descripcion = textDescripcion.Text;
            art.URLImagen = textURLImagen.Text;
            art.Tipo = (Tipo)ddlTipo.SelectedItem;
            art.Color = (Color)ddlColor.SelectedItem;
            art.Categoria = (Categoria)ddlCategoria.SelectedItem;



        }
    }
}