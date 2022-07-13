<%@ Page Title="miCarrito" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="miCarrito.aspx.cs" Inherits="ProyectoE_COMMERCE.miCarrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <script type="text/javascript">
        window.history.pushState(null, null, '<%=Request.Url.LocalPath%>');
        </script>
    
    <div class="container align-content-center bg-light">
        <div class="row border text-center ">
            <div class="col-sm border">
                <h2>Codigo</h2>
            </div>
            <div class="col-sm border">
                <h2>Nombre</h2>
            </div>
            <div class="col-sm border">
                <h2>Descripcion</h2>
            </div>
            <div class="col-sm border">
                <h2>Imagen</h2>
            </div>
            <div class="col-sm border">
                <h2>Cantidad</h2>
            </div>
            <div class="col-sm border">
                <h2>Precio</h2>
            </div>
            <div class="col-sm border">
                <h2>Opciones</h2>
            </div>

            <div class="w-100 border"></div>
        <%foreach(dominio.Models.Articulo item in listaArticulosCarro)
               {%>
                    
                        <div class="col border">
                            <h4><%= item.Codigo %></h4>
                        </div>
                        <div class="col border">
                            <h4><%= item.Nombre %></h4>
                        </div>
                        <div class="col border">
                            <p><%= item.Descripcion %></p>
                        </div>
                        <div class="col border">
                            <img class="img-thumbnail" src="<%= item.URLImagen %>" onerror="this.src='<%=negocio.Models.Diccionario.IMAGE_NOTFOUND%>'"  style="width:70%" />
                        </div>
                        <div class="col border">
                            <a href="miCarrito?idmas=<%= item.ID %>">+</a>
                            <p><%= cantArticulos.Find(x => x.id == item.ID).cant %></p>
                            <a href="miCarrito?idmenos=<%= item.ID %>">-</a>
                        </div>

                        <div class="col border">
                            <p>$<%= item.Precio * cantArticulos.Find(x => x.id == item.ID).cant %></p>
                        </div>

                        <div class="col border">
                            <a href="miCarrito?idelim=<%= item.ID %>">Eliminar Articulo</a> 
                        </div>
                        <div class="w-100"></div>
                    
           <%  } %>
            </div>
            <div class="col-sm border">
                <h2>Precio Total</h2>
            </div>
            <div class="col-sm border">
                <p>$<%= obtenerPrecioTotal() %></p>
            </div>
            <div class="col-sm border">
                <asp:Button Text="Generar Pedido" ID="GenerarPedido" CssClass="btn btn-success btn-lg" OnClick="GenerarPedido_Click" runat="server" />
            </div>
    </div>


</asp:Content>
