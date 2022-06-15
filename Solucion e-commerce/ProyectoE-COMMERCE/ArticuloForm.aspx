﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArticuloForm.aspx.cs" Inherits="ProyectoE_COMMERCE.ArticuloForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtID" class="form-label">ID</label>
                <asp:TextBox runat="server" ID="textID" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="textNombre" class="form-label">Nombre</label>
                <asp:TextBox runat="server" ID="textNombre" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="textCodigo" class="form-label">Codigo</label>
                <asp:TextBox runat="server" ID="textCodigo" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="textDescripcion" class="form-label">Descripcion</label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="textDescripcion" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="textURLImagen" class="form-label">URL Imagen</label>
                <asp:TextBox runat="server" ID="textURLImagen" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="ddlTipo" class="form-label">Tipo</label>
                <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlCategoria" class="form-label">Categoria</label>
                <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlSubcategoria" class="form-label">Talle</label>
                <asp:DropDownList ID="ddlSubcategoria" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlMarca" class="form-label">Marca</label>
                <asp:DropDownList ID="ddlMarca" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlTemporada" class="form-label">Temporada</label>
                <asp:DropDownList ID="ddlTemporada" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="textDescuento" class="form-label">Descuento</label>
                <asp:TextBox runat="server" TextMode="Number" ID="txtDescuento" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="textPrecio" class="form-label">Precio</label>
                <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="ddlEstado" class="form-label">Estado</label>
                <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Button Cssclass="btn btn-primary" ID="btnAceptar" OnClick="btnAgregar_Click" runat="server" Text="Aceptar" />
            </div>
            <a href="About.aspx">Cancelar</a>
        </div>
    </div>

</asp:Content>