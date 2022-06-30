<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMItemChico.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMItemChico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>ABM de <%=Session["itemChicoABM"] %></h1>


    <div class="form-group">
        <div class="row">
            <div class="col-6">
                <div class="mb-3 row">
                    <label for="textNombre" class="col-sm-2 col-form-label">Nombre</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="textNombre" CssClass="form-control" />
                    </div>
                    <%if (Request.QueryString["ID"] != null)
                        {%>
                    <div class="mb-3 row">
                        <div class="col-sm-10">
                            <asp:Button CssClass="btn btn-primary" ID="btnModificar" OnClick="btnModificar_Click" runat="server" Text="Modificar" />
                        </div>
                        <div class="col-sm-10">
                            <asp:Button CssClass="btn btn-primary" ID="btnEliminar" OnClick="btnEliminar_Click" runat="server" Text="Eliminar" />
                        </div>
                    </div>
                    <%}
                        else
                        {%>
                    <div class="mb-3">
                        <asp:Button CssClass="btn btn-primary" ID="btnAceptar" OnClick="btnAgregar_Click" runat="server" Text="Aceptar" />
                    </div>
                    <%}%>
                    <a href="ABMmain.aspx">Cancelar</a>
                </div>
            </div>
        </div>
    </div>





</asp:Content>
