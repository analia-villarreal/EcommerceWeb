<%@ Page Title="miCarrito" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="miCarrito.aspx.cs" Inherits="ProyectoE_COMMERCE.miCarrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        window.history.pushState(null, null, '<%=Request.Url.LocalPath%>');
    </script>

    <div class="container align-content-center">
        <div class="row" style="margin-top: 50px">
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

            <div class="col-7 text-white" style="margin-right: 30px; padding-top: 25px; padding-bottom: 15px; background-color: #151515">

                <%foreach (dominio.Models.Articulo item in listaArticulosCarro)
                    {%>

                <div class="miflex">
                    <%--                        <div class="col border">
                            <h4><%= item.Codigo %></h4>
                        </div>--%>
                    <img class="" src="<%= item.URLImagen %>" onerror="this.src='<%=negocio.Models.Diccionario.IMAGE_NOTFOUND%>'" style="width: 15%" />


                    <p style="display: inline-block; text-align: center; margin-bottom: 0rem;"><%= item.Nombre %></p>

                    <%--                     <div class="col border">
                            <p><%= item.Descripcion %></p>
                        </div>--%>

                    <p style="display: inline-block; text-align: center; margin-bottom: 0rem; font-weight: bold">$<%= item.Precio * cantArticulos.Find(x => x.id == item.ID).cant %></p>


                    <%--                  <div style="display: inline-block; border: 1px solid rgba(255,255,255,0.2); padding: 0px; border-radius: 5px">--%>
                    <div>
                        <a class="icon-resta" style="display: inline-block;" href="miCarrito?idmenos=<%= item.ID %>">-</a>

                        <p style="display: inline-block; text-align: center; margin: 0 15px;"><%= cantArticulos.Find(x => x.id == item.ID).cant %></p>

                        <a class="icon-suma" style="display: inline-block;" href="miCarrito?idmas=<%= item.ID %>">+</a>
                    </div>
                    <%--                    </div>--%>



                    <a style="display: inline-block; text-align: center" href="miCarrito?idelim=<%= item.ID %>"><i class="fa-solid fa-trash text-danger"></i></a>
                </div>



                <%  } %>
            </div>



            <div class="col-4 text-white" style="margin: 0; padding: 0; padding-bottom: 10px; background-color: #151515">
                <h3 style="text-align: center; background-color: #808080; padding-top: 10px">Resumen de Compra</h3>
                <%--    <hr />--%>
                <div class="col-sm" style="display: flex; justify-content: space-around">
                    <p style="font-weight: bold; font-size: 1.8rem">Total</p>
                    <p style="font-weight: bold; font-size: 1.8rem">$<%= obtenerPrecioTotal() %></p>
                </div>
                <div class="col-sm">
                    <asp:Button Text="Generar Pedido" ID="GenerarPedido" CssClass="btn btn-success btn-lg" Style="display: block; width: 100%; margin: 0 auto" OnClick="GenerarPedido_Click" runat="server" />
                </div>

            </div>





        </div>

    </div>


</asp:Content>
