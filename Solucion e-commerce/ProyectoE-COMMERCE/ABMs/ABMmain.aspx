<%@ Page Title="ABMmain" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMmain.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMmain" %>

<asp:Content ID="BodyContent" CssClass ="table" ContentPlaceHolderID="MainContent" runat="server">


        <%-- ABM de Colores --%>
    <p>
      <button class="btn btn-primary" type="button" data-bs-toggle="collapse" href="#colores" aria-expanded="true" aria-controls="colores"> 
        ABM de Colores
      </button>
    </p>
    

    <div class="collapse" id ="colores">
    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dvgColores"  DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                 
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ABMColor.aspx">Agregar</a>

        </div>
    </div>
    </div>


    
    <%-- ABM de Articulos --%>
    <p>
      <button class="btn btn-primary" type="button" data-bs-toggle="collapse" href="#articulos" aria-expanded="true" aria-controls="articulos"> 
        ABM de Articulos
      </button>
    </p>
    

    <div class="collapse" id ="articulos">
    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvArticulos"  DataKeyNames="ID" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" CssClass="table" AutoGenerateColumns="false">

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
            <a href="ABMArticulos.aspx">Agregar</a>

        </div>
    </div>
    </div>

</asp:Content>
