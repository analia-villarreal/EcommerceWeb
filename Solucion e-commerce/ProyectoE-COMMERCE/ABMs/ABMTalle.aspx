<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMTalle.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMTalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />


    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvTalles"  
                OnPageIndexChanging="dgvTalles_PageIndexChanging" AllowPaging="true" PageSize="15"
                DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvTalles_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Numero de Talle" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ItemChicoForm.aspx">Agregar</a>

        </div>
    </div>




</asp:Content>
