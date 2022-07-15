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
    public partial class LoginForm : System.Web.UI.Page
    {
        public bool IsAdmin()
        {
            if (Session["usuario"] != null && ((dominio.Models.Usuario)Session["usuario"]).Rol == dominio.Models.Rol.ADMIN)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            if (Session["usuario"] == null)
            {
                Session.Add("error", "Debes Loguearte");
                Response.Redirect("ErrorLogin.aspx", false);
            }
            */
        }


        protected void IniciarSesion_Click(object sender, EventArgs e)
        {

            Usuario usuario;
            UsuarioNegocio negocio = new UsuarioNegocio();

            try
            {
                usuario = new Usuario(txtUser.Text, txtPass.Text, false);
                if (negocio.Loguear(usuario))
                {
                    Session.Add("usuario", usuario);
                    var id = usuario.ID;
                    Response.Redirect("Default.aspx?ID=" + id, false);

                }
                else
                {
                    Session.Add("error", "Alguno de los datos ingresados es incorrecto.");
                    Response.Redirect("ErrorLogin.aspx", false);
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("ErrorLogin.aspx");
            }
        }

    }
}
