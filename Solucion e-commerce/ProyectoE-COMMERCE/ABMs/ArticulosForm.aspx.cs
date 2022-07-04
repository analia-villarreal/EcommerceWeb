
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
    public partial class ArticulosForm : System.Web.UI.Page
    {
        public ArticulosForm()
        {

            //InitializeComponent();

        }
        public List<Articulo> listaArt { get; set; }

        private Articulo art = null;
        private void Cargar_Desplegables()
        {
            TipoNegocio tipoNegocio = new TipoNegocio();
            ColorNegocio colorNegocio = new ColorNegocio();
            TalleNegocio talleNegocio = new TalleNegocio();
            CategoriaNegocio categoriaNegocio = new CategoriaNegocio();
            MarcaNegocio marcaNegocio = new MarcaNegocio();
            TemporadaNegocio temporadaNegocio = new TemporadaNegocio();
            EstadoComercialNegocio estadoNegocio = new EstadoComercialNegocio();


            try
            {
                if (!IsPostBack)
                {
                    ddlTipo.DataSource = tipoNegocio.Listar();
                    ddlTipo.DataValueField = "ID";
                    ddlTipo.DataTextField = "Nombre";
                    ddlTipo.DataBind();

                    ddlColor.DataSource = colorNegocio.Listar();
                    ddlColor.DataValueField = "ID";
                    ddlColor.DataTextField = "Nombre";
                    ddlColor.DataBind();

                    ddlTalle.DataSource = talleNegocio.Listar();
                    ddlTalle.DataValueField = "ID";
                    ddlTalle.DataTextField = "Nombre";
                    ddlTalle.DataBind();

                    ddlCategoria.DataSource = categoriaNegocio.Listar();
                    ddlCategoria.DataValueField = "ID";
                    ddlCategoria.DataTextField = "Nombre";
                    ddlCategoria.DataBind();

                    ddlMarca.DataSource = marcaNegocio.Listar();
                    ddlMarca.DataValueField = "ID";
                    ddlMarca.DataTextField = "Nombre";
                    ddlMarca.DataBind();

                    ddlTemporada.DataSource = temporadaNegocio.Listar();
                    ddlTemporada.DataValueField = "ID";
                    ddlTemporada.DataTextField = "Nombre";
                    ddlTemporada.DataBind();

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

                if (!IsPostBack)
                {
                    textNombre.Text = seleccionado.Nombre;
                    textCodigo.Text = seleccionado.Codigo;
                    textDescripcion.Text = seleccionado.Descripcion;
                    textURLImagen.Text = seleccionado.URLImagen;
                    textCodigo.Text = seleccionado.Codigo;
                    textCodigo.ReadOnly = true;
                    ddlTipo.SelectedValue = seleccionado.Tipo.ID.ToString();
                    ddlColor.SelectedValue = seleccionado.Color.ID.ToString();
                    ddlTalle.SelectedValue = seleccionado.Talle.ID.ToString();
                    ddlCategoria.SelectedValue = seleccionado.Categoria.ID.ToString();
                    ddlMarca.SelectedValue = seleccionado.Marca.ID.ToString();
                    ddlTemporada.SelectedValue = seleccionado.Temporada.ID.ToString();
                    txtDescuento.Text = seleccionado.Descuento.ToString();
                    txtPrecio.Text = seleccionado.Descuento.ToString();
                    ddlEstado.Text = seleccionado.EstadoComercial.ID.ToString();
                }
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            ArticuloNegocio negocio = new ArticuloNegocio();

            try
            {
                if (art == null)
                    art = new Articulo();
                
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
                art.EstadoActivo = true;
                                             
                negocio.Agregar(art);
                MessageBox.Show("Agregado exitosamente");
                
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.ToString());
            }


        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            art = new Articulo();

            try
            {
                art.ID = int.Parse(Request.QueryString["ID"]);
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
                art.EstadoActivo = true;

                negocio.Modificar(art);
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