<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMColor.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMColor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    


    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvColores"  DataKeyNames="ID" 
                OnPageIndexChanging="dgvColores_PageIndexChanging" AllowPaging="true" PageSize="15"
                CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvColores_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Color" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ItemChicoForm.aspx">Agregar</a>

        </div>
    </div>

        





</asp:Content>
