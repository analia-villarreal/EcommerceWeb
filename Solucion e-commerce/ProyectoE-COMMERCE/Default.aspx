<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoE_COMMERCE._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<asp:GridView CssClass="table" ID="dgvArticulos" runat="server" OnRowDataBound="dgvArticulos_RowDataBound" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" ></asp:GridView>--%>

    <h1 class="title">Catalogo de Articulos</h1>
     <%--
    <div class="containerProductos">

        <% foreach (dominio.Articulo item in listaArticulos)
            { %>
        <div class="card">
            <img src="<%= item.URLImagen %>" alt="Articulo" onerror="this.src='<%=negocio.Diccionario.IMAGE_NOTFOUND%>'" />
            <h4><%= item.Nombre %></h4>
            <p><%= item.Descripcion %></p>
            <a href="miCarrito?id=<%= item.ID %>">Agregar</a>
        </div>
        <% } %>
    </div>
    --%>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <% foreach (dominio.Models.Articulo item in listaArticulos)
            { %>

            <div class="col">
                <div class="card">
                    <img src="<%= item.URLImagen %>" onerror="this.src='<%=negocio.Models.Diccionario.IMAGE_NOTFOUND%>'" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%= item.Nombre %></h5>
                        <p class="card-text"><%= item.Descripcion %></p>
                        <a href="miCarrito?id=<%= item.ID %>">Agregar al Carrito</a>
                    </div>
                </div>
            </div>
         <% } %>
    </div>
    



</asp:Content>
