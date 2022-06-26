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
        public List<dominio.Articulo> listaArt { get; set; }
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

            EstadoComercialNegocio estadoNegocio = new EstadoComercialNegocio();

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

            TemporadaNegocio temporadaNegocio = new TemporadaNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlTemporada.DataSource = temporadaNegocio.Listar();
                    ddlTemporada.DataValueField = "ID";
                    ddlTemporada.DataTextField = "Nombre";
                    ddlTemporada.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }

            EstadoComercialNegocio estadoComercialNegocio = new EstadoComercialNegocio();

            try
            {
                if (!IsPostBack)
                {
                    ddlEstado.DataSource = estadoComercialNegocio.Listar();
                    ddlEstado.DataValueField = "ID";
                    ddlEstado.DataTextField = "Nombre";
                    ddlEstado.DataBind();
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

            if (Request.QueryString["ID"]!= null)
            {
                int Id = int.Parse(Request.QueryString["ID"].ToString());

                ArticuloNegocio negocio = new ArticuloNegocio();

                listaArt = negocio.Listar();    

                Articulo seleccionado = listaArt.Find(x=> x.ID == Id);

                textNombre.Text = seleccionado.Nombre;
                textCodigo.Text = seleccionado.Codigo;
                textDescripcion.Text = seleccionado.Descripcion;
                textURLImagen.Text = seleccionado.URLImagen;
                textCodigo.Text = seleccionado.Codigo;
                textCodigo.ReadOnly = true;

            }

          
            

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Articulo art = new Articulo();

            ArticuloNegocio negocio = new ArticuloNegocio();

            art.Nombre = textNombre.Text;
            art.Codigo = textCodigo.Text;
            art.Descripcion = textDescripcion.Text;
            art.URLImagen = textURLImagen.Text;
            art.Tipo = new Tipo();
            art.Tipo.ID = int.Parse(ddlTipo.SelectedValue);
            art.Color = new Color();
            art.Color.ID = int.Parse(ddlColor.SelectedValue);
            art.Talle = new Talle();
            art.Talle.ID = int.Parse(ddlTalle.SelectedValue);
            art.Categoria = new Categoria();
            art.Categoria.ID = int.Parse(ddlCategoria.SelectedValue);
            art.Marca = new Marca();
            art.Marca.ID = int.Parse(ddlMarca.SelectedValue);
            art.Temporada = new Temporada();
            art.Temporada.ID = int.Parse(ddlTemporada.SelectedValue);
            art.Descuento = int.Parse(txtDescuento.Text);
            art.Precio = decimal.Parse(txtPrecio.Text);
            art.EstadoComercial = new EstadoComercial();
            art.EstadoComercial.ID = int.Parse(ddlEstado.SelectedValue);
            art.EstadoNegocios = true;

            negocio.Agregar(art);
            MessageBox.Show("Agregado exitosamente");

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}