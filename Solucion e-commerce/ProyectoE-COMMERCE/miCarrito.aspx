<%@ Page Title="miCarrito" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="miCarrito.aspx.cs" Inherits="ProyectoE_COMMERCE.miCarrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        window.history.pushState(null, null, '<%=Request.Url.LocalPath%>');
    </script>

    <div class="container align-content-center bg-light">
        <div class="row">
            <%--            <div class="col-sm border">
                <h2>Codigo</h2>
            </div>--%>
            <%-- <div class="col-sm border">
                <h2>Imagen</h2>
            </div>--%>
            <%--            <div class="col-sm border">
                <h2>Nombre</h2>
            </div>--%>
            <%--            <div class="col-sm border">
                <h2>Descripcion</h2>
            </div>--%>
            <%--            <div class="col-sm border">
                <h2>Cantidad</h2>
            </div>--%>
            <%--            <div class="col-sm border">
                <h2>Precio</h2>
            </div>--%>
            <%--            <div class="col-sm border">
                <h2>Opciones</h2>
            </div>--%>

            <div class="col-8 bg-dark text-white">

                <%foreach (dominio.Models.Articulo item in listaArticulosCarro)
                    {%>

                <div style="display: flex; gap: 30px; align-content: center; justify-content: space-around; align-items: center">
                    <%--                        <div class="col border">
                            <h4><%= item.Codigo %></h4>
                        </div>--%>
                    <img class="" src="<%= item.URLImagen %>" onerror="this.src='<%=negocio.Models.Diccionario.IMAGE_NOTFOUND%>'" style="width: 15%" />


                    <h4 style="display: inline-block; text-align: center"><%= item.Nombre %></h4>

                    <%--                     <div class="col border">
                            <p><%= item.Descripcion %></p>
                        </div>--%>

                    <p style="display: inline-block; text-align: center">$<%= item.Precio * cantArticulos.Find(x => x.id == item.ID).cant %></p>

                    <div style="display: inline-block; border: 1px solid rgba(255,255,255,0.2); padding: 15px; border-radius: 5px">



                        <a style="display: inline-block; font-size: 2rem" href="miCarrito?idmas=<%= item.ID %>">+</a>

                        <p style="display: inline-block; text-align: center; margin: 0 15px;"><%= cantArticulos.Find(x => x.id == item.ID).cant %></p>

                        <a style="display: inline-block; font-size: 2rem" href="miCarrito?idmenos=<%= item.ID %>">-</a>
                    </div>



                    <a style="display: inline-block; text-align: center" href="miCarrito?idelim=<%= item.ID %>"><i class="fa-solid fa-trash text-danger"></i></a>
                </div>



                <%  } %>
            </div>



            <div class="col-4">
                <hr />
                <div class="col-sm" style="display:flex;justify-content:space-around">
                    <p style="font-weight:bold;font-size:1.8rem">Total</p>
                    <p style="font-weight:bold;font-size:1.8rem">$<%= obtenerPrecioTotal() %></p>
                </div>
                <div class="col-sm">
                    <asp:Button Text="Generar Pedido" ID="GenerarPedido" CssClass="btn btn-success btn-lg" style="display:block;width:100%;margin:0 auto" OnClick="GenerarPedido_Click" runat="server" />
                </div>

            </div>





        </div>

    </div>


</asp:Content>
