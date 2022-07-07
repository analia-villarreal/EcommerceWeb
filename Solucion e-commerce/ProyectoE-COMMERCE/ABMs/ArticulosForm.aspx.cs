
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

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //////////////////////configuracion inicial////////////////
                if (!IsPostBack)
                {
                    ItemChicoNegocio negocio = new ItemChicoNegocio();

                    TipoNegocio tipoNegocio = new TipoNegocio();
                    List<Tipo> listaTipo = tipoNegocio.Listar();

                    ddlTipo.DataSource = listaTipo;
                    ddlTipo.DataValueField = "ID";
                    ddlTipo.DataTextField = "nombreTipo";
                    ddlTipo.DataBind();

              
                    List<ItemChico> listaColor = negocio.Listar("Color");

                    ddlColor.DataSource = listaColor;
                    ddlColor.DataValueField = "ID";
                    ddlColor.DataTextField = "Nombre";
                    ddlColor.DataBind();

                    List<ItemChico> listaTalle = negocio.Listar("Talle");

                    ddlTalle.DataSource = listaTalle;
                    ddlTalle.DataValueField = "ID";
                    ddlTalle.DataTextField = "Nombre";
                    ddlTalle.DataBind();

                    
                    List<ItemChico> listaCategoria = negocio.Listar("Categoria");

                    ddlCategoria.DataSource = listaCategoria;
                    ddlCategoria.DataValueField = "ID";
                    ddlCategoria.DataTextField = "Nombre";
                    ddlCategoria.DataBind();


                    List<ItemChico> listaMarca = negocio.Listar("Marca");

                    ddlMarca.DataSource = listaMarca;
                    ddlMarca.DataValueField = "ID";
                    ddlMarca.DataTextField = "Nombre";
                    ddlMarca.DataBind();

                    TemporadaNegocio temporadaNegocio = new TemporadaNegocio();
                    List<Temporada> listaTemporada = temporadaNegocio.Listar();

                    ddlTemporada.DataSource = listaTemporada;
                    ddlTemporada.DataValueField = "ID";
                    ddlTemporada.DataTextField = "Nombre";
                    ddlTemporada.DataBind();

                    EstadoComercialNegocio estadoNegocio = new EstadoComercialNegocio();
                    List<EstadoComercial> listaEC = estadoNegocio.Listar();

                    ddlEstado.DataSource = listaEC;
                    ddlEstado.DataValueField = "ID";
                    ddlEstado.DataTextField = "Nombre";
                    ddlEstado.DataBind();
                }

                /////////////////////CONFIG MODIFICAR ////

                if (Request.QueryString["ID"] != null)
                {
                    string Id = Request.QueryString["ID"].ToString();

                    //int Id = int.Parse(Request.QueryString["ID"].ToString());

                    ArticuloNegocio negocio = new ArticuloNegocio();

                    List<Articulo> listaArt = negocio.Listar(Id);

                    Articulo seleccionado = listaArt[0];

                    //Articulo seleccionado = listaArt.Find(x=> x.ID == Id);

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
                    txtPrecio.Text = seleccionado.Precio.ToString();
                    ddlEstado.Text = seleccionado.EstadoComercial.ID.ToString();

                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                //Response.Redirect("", false);
            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            ArticuloNegocio negocio = new ArticuloNegocio();

            try
            {
                Articulo art = new Articulo();

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

                negocio.Agregar(art);
                //Response.Redirect("", false);

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                //Response.Redirect("", false);
            }


        }



        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            Articulo art = new Articulo();

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
                Response.Redirect("", false);
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                Response.Redirect("", false);
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}