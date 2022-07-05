<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ItemChicoForm.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ItemChicoForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script>
        $(document).ready(function () {
            $("#myModal").modal('show');
        });
    </script>
 
    
    
    <h1>ABM de <%=Session["itemChicoABM"] %></h1>


    <div class="form-group">
        <div class="row">
            <div class="col-6">
                <div class="mb-3 row">
                    <label for="textNombre" class="col-sm-2 col-form-label">Nombre</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="textNombre" CssClass="form-control" />
                    </div>
                    <%if (Request.QueryString["ID"] != null)
                        {%>
                    <div class="mb-3 row">
                        <div class="col-sm-10">
                            <asp:Button CssClass="btn btn-primary" ID="btnModificar" OnClick="btnModificar_Click"   runat="server" Text="Modificar" />
                        </div>
                        <div class="col-sm-10">
                            <asp:Button CssClass="btn btn-primary" ID="btnEliminar" OnClick="btnEliminar_Click"  runat="server" Text="Eliminar" />
                        </div>
                    </div>
                    <%}
                        else
                        {%>
                    <div class="mb-3">
                        <asp:Button CssClass="btn btn-primary" ID="btnAceptar" OnClick="btnAgregar_Click"  runat="server" Text="Aceptar"/>
                    </div>
                    <%}%>
                    <a href="ABMArticulo.aspx">Cancelar</a>
                </div>
            </div>
        </div>
    </div>



<!-- Modal -->
    <%if (mensaje != null)
            {%>
<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Subscribe our Newsletter</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
				<p><%=mensaje %></p>


                <asp:Button ID="btnBorrarMensaje" CssClass="btn btn-primary" OnClick="btnBorrarMensaje_Click" runat="server" Text="Agregar nuevo item"   />
                <asp:Button ID="btnVolverAlABM" CssClass="btn btn-primary" OnClick="btnVolverAlABM_Click" runat="server" Text="Volver al ABM" />
            </div>
        </div>
    </div>
</div>

        <%  } %>








</asp:Content>
