<%@ Page Title="ABMArticulo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMArticulo.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMArticulo" %>

<asp:Content ID="BodyContent" CssClass ="table" ContentPlaceHolderID="MainContent" runat="server">



    

    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvArticulos"  DataKeyNames="ID" 
              OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" CssClass="table" AutoGenerateColumns="false"
              OnPageIndexChanging="dgvArticulos_PageIndexChanging" AllowPaging="true" PageSize="5">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                    <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                    <asp:BoundField HeaderText="Tipo" DataField="Tipo.Nombre"  />  
                    <asp:BoundField HeaderText="Color" DataField="Color.Nombre" /> 
                    <asp:BoundField HeaderText="Precio" DataField="Precio" />          
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                </Columns>

            </asp:GridView>
            <a href="ArticulosForm.aspx">Agregar</a>

        </div>
    </div>
    

</asp:Content>
