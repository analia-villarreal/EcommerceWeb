﻿<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ProyectoE_COMMERCE.About" %>

<asp:Content ID="BodyContent" CssClass ="table" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvArticulos"  DataKeyNames="ID" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" CssClass="table" AutoGenerateColumns="false">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                    <asp:BoundField HeaderText="Tipo" DataField="tipo.nombre" />
                    <asp:BoundField HeaderText="Color" DataField="color.nombre" />
                    <asp:BoundField HeaderText="Precio" DataField="Precio" />
                 
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                    
                </Columns>

            </asp:GridView>
            <a href="ArticuloForm.aspx">Agregar</a>

        </div>
    </div>

</asp:Content>
