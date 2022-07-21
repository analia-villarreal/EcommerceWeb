<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PedidoEnvioForm.aspx.cs" Inherits="ProyectoE_COMMERCE.PedidoEnvioForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container align-content-center">
        <div class="row">
            <div>
                <div>

                    <hr />

                    <%foreach (dominio.Models.DetallePedido item in (List<dominio.Models.DetallePedido>)Session["Pedido"])
                        {%>
                    <div class="miflex">
                        <h3 style="text-align: center; background-color: #1678E0; padding-top: 10px">Detalle Pedido <%= item.IDPedido %></h3>
                        <div class="row">
                            <asp:Label Text="Numero" runat="server" />
                            <div class="col">
                                <p style="display: inline-block; text-align: center; margin-bottom: 0rem;"><%= item.IDPedido %></p>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Label Text="Articulo" runat="server" />
                            <div class="col">
                                <p style="display: inline-block; text-align: center; margin-bottom: 0rem;"><%= item.IDArticulo %></p>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Label Text="Precio" runat="server" />
                            <div class="col">
                                <p style="display: inline-block; text-align: center; margin-bottom: 0rem;">$ <%=item.Precio %></p>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Label Text="Cantidad" runat="server" />
                            <div class="col">
                                <p style="display: inline-block; text-align: center; margin-bottom: 0rem;"><%= item.Cantidad %></p>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Label Text="Importe" runat="server" />
                            <div class="col">
                                <p style="display: inline-block; text-align: center; margin-bottom: 0rem;">$ <%=item.ImporteTotal %></p>
                            </div>
                        </div>


                    </div>

                    <% }%>
                </div>
            </div>



            <div class="col-6-md">
                <div class="row">
                    <hr />
                    <hr />
                    <asp:Label Text="ELIJA FORMA DE ENVIO" runat="server" />
                    <hr />
                    <asp:RadioButton ID="rbDireccion" Checked="true" GroupName="Retiro" runat="server" />
                    <asp:RadioButton ID="rbSucursal" Text="Retira por Sucursal" GroupName="Retiro" runat="server" />
                    <hr />
                    <hr />
                    <asp:Label Text="FORMA DE PAGO" runat="server" />
                    <hr />
                    <asp:RadioButton ID="rbPago" Checked="true" runat="server" />
                    <hr />
                    <hr />
                </div>
                <div style="margin-bottom: 15px">
                    <asp:Button class="btn btn-primary btn-lg" ID="Confirmar" Text="Confirmar" runat="server" OnClick="Confirmar_Click" />
                </div>
            
                <div>   
                    <a class="btn btn-secondary btn-sm" href="miCarrito.aspx">Volver al Carrito</a>
                </div>



            </div>
        </div>
    </div>
</asp:Content>
