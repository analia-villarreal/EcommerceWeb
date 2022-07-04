<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArticulosForm.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ArticulosForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="form-group">
        <div class="row">
            <div class="col-6">
                <div class="mb-3 row">
                    <label for="textNombre" class="col-sm-2 col-form-label">Nombre</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="textNombre" CssClass="form-control" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="textCodigo" class="col-sm-2 col-form-label">Codigo</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="textCodigo" CssClass="form-control" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="textDescripcion" class="col-sm-2 col-form-label">Descripcion</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="textDescripcion" CssClass="form-control" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="textURLImagen" class="col-sm-2 col-form-label">URL Imagen</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="textURLImagen" CssClass="form-control" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlTipo" class="col-sm-2 col-form-label">Tipo</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-select"></asp:DropDownList>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlColor" class="col-sm-2 col-form-label">Color</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlColor" runat="server" CssClass="form-select"></asp:DropDownList>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlTalle" class="col-sm-2 col-form-label">Talle</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlTalle" runat="server" CssClass="form-select"></asp:DropDownList>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlCategoria" class="col-sm-2 col-form-label">Categoria</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-select"></asp:DropDownList>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlMarca" class="col-sm-2 col-form-label">Marca</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlMarca" runat="server" CssClass="form-select"></asp:DropDownList>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlTemporada" class="col-sm-2 col-form-label">Temporada</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlTemporada" runat="server" CssClass="form-select"></asp:DropDownList>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="textDescuento" class="col-sm-2 col-form-label">Descuento</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" TextMode="Number" ID="txtDescuento" CssClass="form-control" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="textPrecio" class="col-sm-2 col-form-label">Precio</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control" />
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="ddlEstado" class="col-sm-2 col-form-label">Estado</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-select"></asp:DropDownList>
                    </div>
                </div>
                <%if (Request.QueryString["ID"] != null)
                    {%>
                <div class="mb-3 row">
                    <div class="col-sm-10">
                        <asp:Button CssClass="btn btn-primary" ID="btnModificar" OnClick="btnModificar_Click" runat="server" Text="Modificar" />
                    </div>
                    <div class="col-sm-10">
                        <asp:Button CssClass="btn btn-primary" ID="btnEliminar" OnClick="btnEliminar_Click" runat="server" Text="Eliminar" />
                    </div>
                </div>
                <%}
                    else
                    {%>
                <div class="mb-3">
                    <asp:Button CssClass="btn btn-primary" ID="btnAceptar" OnClick="btnAgregar_Click" runat="server" Text="Aceptar" />
                </div>
                <%}%>
                <a href="ABMArticulo.aspx">Cancelar</a>
            </div>
        </div>
    </div>


</asp:Content>
