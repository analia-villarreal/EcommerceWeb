<%@ Page Title="ABMmain" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMmain.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMmain" %>

<asp:Content ID="BodyContent" CssClass ="table" ContentPlaceHolderID="MainContent" runat="server">


        <%-- ABM de Categorias --%>
     <p>
      <button class="btn btn-primary" type="button" data-bs-toggle="collapse" href="#categorias" aria-expanded="true" aria-controls="categorias"> 
        ABM de Categorias
      </button>
    </p>
    

    <div class="collapse" id ="categorias">
    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvCategorias"  DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvCategorias_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Categoria" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ABMItemChico.aspx">Agregar</a>

        </div>
    </div>
    </div>




        <%-- ABM de Marcas --%>
     <p>
      <button class="btn btn-primary" type="button" data-bs-toggle="collapse" href="#marcas" aria-expanded="true" aria-controls="marcas"> 
        ABM de Marcas
      </button>
    </p>
    

    <div class="collapse" id ="marcas">
    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvMarcas"  DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvMarcas_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Marca" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ABMItemChico.aspx">Agregar</a>

        </div>
    </div>
    </div>



        <%-- ABM de Talles --%>
     <p>
      <button class="btn btn-primary" type="button" data-bs-toggle="collapse" href="#talles" aria-expanded="true" aria-controls="talles"> 
        ABM de Talles
      </button>
    </p>
    

    <div class="collapse" id ="talles">
    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvTalles"  DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvTalles_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Numero de Talle" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ABMItemChico.aspx">Agregar</a>

        </div>
    </div>
    </div>




        <%-- ABM de Colores --%>
    <p>
      <button class="btn btn-primary" type="button" data-bs-toggle="collapse" href="#colores" aria-expanded="true" aria-controls="colores"> 
        ABM de Colores
      </button>
    </p>
    

    <div class="collapse" id ="colores">
    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvColores"  DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvColores_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Color" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ABMItemChico.aspx">Agregar</a>

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
