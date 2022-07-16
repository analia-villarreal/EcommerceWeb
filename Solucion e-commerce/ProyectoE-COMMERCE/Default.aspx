<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoE_COMMERCE._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<asp:GridView CssClass="table" ID="dgvArticulos" runat="server" OnRowDataBound="dgvArticulos_RowDataBound" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" ></asp:GridView>--%>

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="https://www.stockcenter.com.ar/dw/image/v2/BDTF_PRD/on/demandware.static/-/Sites-StockCenter-Library/default/dw2ff71db3/21jun/fulltoppercuellos.gif?sw=1440&sfrm=gif" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="https://essential.vtexassets.com/arquivos/iv-landing-d-banner-nike@2x.png" alt="Second slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
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


    <div class="row"">

        <!--ACA VAN LOS FILTROS-->
        <div class="col-3 contain-filtros" style="padding-top:30px;padding-left: 40px;
    padding-right:40px">

            <div>
            <h5>Genero</h5>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="checkhombre">
                <label class="form-check-label" for="checkhombre">
                    Hombre
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="checkmujer">
                <label class="form-check-label" for="checkmujer">
                    Mujer
                </label>
            </div>
            </div>

                        <hr />

            <div>
            <h5>Talle</h5>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="checktalle40">
                <label class="form-check-label" for="checktalle40">
                    40
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="checktalle41">
                <label class="form-check-label" for="checktalle41">
                    41
                </label>
            </div>
            </div>

                        <hr />

            <div>
            <h5>Color</h5>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="checkcolorblanco">
                <label class="form-check-label" for="checkcolorblanco">
                    Blanco
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="checkcolornegro">
                <label class="form-check-label" for="checkcolornegro">
                    Negro
                </label>
            </div>
            </div>


                        <hr />


            <div>
            <h5>Marca</h5>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="checkmarcaadidas">
                <label class="form-check-label" for="checkmarcaadidas">
                    Adidas
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="checkmarcanike">
                <label class="form-check-label" for="checkmarcanike">
                    Nike
                </label>
            </div>
            </div>


        </div>
        <!--------------------------------->



        <div class="col-9" style="padding-top:30px">

 <%--           <h3 class="title-3">Nuevos</h3>--%>
            <div class="row row-cols-1 row-cols-md-4 g-4">
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
                            <a class="btn btn-danger" style="display: block" href="miCarrito?id=<%= item.ID%>">Comprar</a>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>



        </div>


    </div>

</asp:Content>
