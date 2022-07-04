<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMCategoria.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvCategorias"  DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvCategorias_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Categoria" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ItemChicoForm.aspx">Agregar</a>

        </div>
    </div>
   


</asp:Content>
