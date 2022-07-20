<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PedidoEnvioForm.aspx.cs" Inherits="ProyectoE_COMMERCE.PedidoEnvioForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-6-md">
                <div>
                    <asp:Label Text="Detalle Pedido" runat="server" />
                    <%foreach (dominio.Models.DetallePedido item in listaPedido)
                        {%>
                        <div class="miflex">
                            <h3 style="text-align: center; background-color: #808080; padding-top: 10px">Detalle Pedido <%= item.IDPedido %></h3>
                            <p><%= item.IDPedido %></p>
                            <p><%= item.IDArticulo %></p>
                            <p><%= item.Precio %></p>
                            <p><%= item.Cant %></p>
                             <p><%= item.ImporteTotal %></p>
                        </div>
                    <% }%>
                </div>
            </div>
            <div class="col-6-md">
                <div>
                    <asp:Label Text="Elija forma de envio" runat="server" />

                </div>
                <asp:CheckBox ID="cbxRetiraPorSucursal" runat="server" />
                <asp:Label Text="Forma de envio" runat="server" />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>


            </div>
        </div>
    </div>
</asp:Content>
