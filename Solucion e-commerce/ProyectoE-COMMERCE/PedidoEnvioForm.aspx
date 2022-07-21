<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PedidoEnvioForm.aspx.cs" Inherits="ProyectoE_COMMERCE.PedidoEnvioForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-6-md">
                <div>

                    <asp:Label Text="Detalle Pedido" runat="server" />

                    <%foreach (dominio.Models.DetallePedido item in (List<dominio.Models.DetallePedido>)Session["Pedido"])
                        {%>
                    <div class="miflex">
                        <h3 style="text-align: center; background-color: #808080; padding-top: 10px">Detalle Pedido <%= item.IDPedido %></h3>
                        <p><%= item.IDPedido %></p>
                        <p><%= item.IDArticulo %></p>
                        <p><%= item.Precio %></p>
                        <p><%= item.Cantidad %></p>
                        <p><%= item.ImporteTotal %></p>
                    </div>

                    <% }%>
                </div>
            </div>



            <div class="col-6-md">
                <div class="row">
                    <asp:Label Text="Elija forma de envio" runat="server" />

                    <asp:RadioButton ID="rbDireccion" GroupName="Retiro" runat="server" />
                    <asp:RadioButton ID="rbSucursal" Text="Retira por Sucursal" GroupName="Retiro" runat="server" />

                </div>



            </div>
        </div>
    </div>
</asp:Content>
