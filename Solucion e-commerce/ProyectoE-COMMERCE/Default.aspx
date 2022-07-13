<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoE_COMMERCE._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<asp:GridView CssClass="table" ID="dgvArticulos" runat="server" OnRowDataBound="dgvArticulos_RowDataBound" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" ></asp:GridView>--%>

    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="https://dash.vtexassets.com/assets/vtex.file-manager-graphql/images/46389bc2-d30f-4e7d-8f6e-fe6b6f4b8e3a___e63b50f14a64efd7b603c5f3e4c638fe.jpg" alt="First slide">
            </div>
        </div>
    </div>

    <%--    <h1 class="title">Catalogo de Articulos</h1>--%>

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


    <div class="row">

        <!--ACA VAN LOS FILTROS-->
        <div class="col-3 contain-filtros">

            <h5>Buscar por Filtros</h5>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                    Envio Gratis
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                <label class="form-check-label" for="defaultCheck1">
                    6 Cuotas
                </label>
            </div>

        </div>
        <!--------------------------------->

        <div class="col-9">

            <h3 class="title-3">Nuevos</h3>
            <div class="row row-cols-1 row-cols-md-3 g-3">
                <% foreach (dominio.Models.Articulo item in listaArticulos)
                    { %>

                <div class="col">
                    <div class="card shadow-card">
                        <div class="card-img">
                            <img src="<%= item.URLImagen %>" onerror="this.src='<%=negocio.Models.Diccionario.IMAGE_NOTFOUND%>'" class="card-img-top" alt="...">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><%= item.Nombre %></h5>
                            <p class="card-text"><%= item.Descripcion %></p>
                            <p class="card-text precio">$<%= item.Precio %></p>
                            <a class="btn btn-danger" style="display: block" href="miCarrito?id=<%= item.ID %>">Agregar al Carrito</a>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>



        </div>


    </div>

</asp:Content>
