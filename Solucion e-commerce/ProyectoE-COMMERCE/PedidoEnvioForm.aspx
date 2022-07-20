<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PedidoEnvioForm.aspx.cs" Inherits="ProyectoE_COMMERCE.PedidoEnvioForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-6-md">
                <asp:Label Text="Detalle Pedido" runat="server" />
            </div>
            <div class="col-6-md">
                <div>
                    <asp:Label Text="Elija forma de envio" runat="server" />
                    <%//foreach (dominio.Direccion item in collection)
                    //{

                    //}%>
                </div>
                <asp:CheckBox ID="cbxRetiraPorSucursal" runat="server" />
                <asp:Label Text="Forma de envio" runat="server" />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>


            </div>
        </div>
    </div>
</asp:Content>
