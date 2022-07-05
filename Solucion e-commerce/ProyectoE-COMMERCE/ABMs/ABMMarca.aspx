<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMMarca.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMMarca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvMarcas"  
                OnPageIndexChanging="dgvMarcas_PageIndexChanging" AllowPaging="true" PageSize="15"
                DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvMarcas_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Marca" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ItemChicoForm.aspx">Agregar</a>

        </div>
    </div>

    


</asp:Content>
