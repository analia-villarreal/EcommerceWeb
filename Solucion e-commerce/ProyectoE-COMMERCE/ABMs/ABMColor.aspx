<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABMColor.aspx.cs" Inherits="ProyectoE_COMMERCE.ABMs.ABMColor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    


    <div class="row">

        <div class="col">

            <asp:GridView runat="server" ID="dgvColores"  DataKeyNames="ID"  CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvColores_SelectedIndexChanged">

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Color" DataField="Nombre" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                 
                    
                </Columns>

            </asp:GridView>
            <a href="ItemChicoForm.aspx">Agregar</a>

        </div>
    </div>

        <% if ((ItemsChicos.Count / (double)15) > 1)
        { %>
    
         <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">

            <!-- CODIGO PARA MOSTRAR EL PREVIO -->

           <% if (pagina == 1)
              { %>
                            <li class="page-item disabled">
                                <a class="page-link" href="ABMColor.aspx?pagina=<%=pagina-1 %>" tabindex="-1">Previo</a>
                            </li>

                <% }
                else { %>

                            <li class="page-item">
                                <a class="page-link" href="ABMColor.aspx?pagina=<%=pagina-1 %>" tabindex="-1">Previo</a>
                            </li>

              <%} %>


              <!-- CODIGO PARA MOSTRAR LAS PAGINAS -->
            
              <% for (int i = 0; i < ((ItemsChicos.Count / 15)+1); i++)
                  { %>
                         <li class="page-item"><a class="page-link" href="ABMColor.aspx?pagina=<%=i+1 %>"><%=i+1 %></a></li>

              <%  } %>


              <!-- CODIGO PARA MOSTRAR EL SIGUIENTE -->

                         <% if (pagina == ((ItemsChicos.Count / 15)+1))
              { %>
                            <li class="page-item disabled">
                                <a class="page-link" href="ABMColor.aspx?pagina=<%=pagina+1 %>" >Siguiente</a>
                            </li>

                <% }
                else { %>

                            <li class="page-item">
                                <a class="page-link" href="ABMColor.aspx?pagina=<%=pagina+1 %>" tabindex="-1">Siguiente</a>
                            </li>

              <%} %>


          </ul>
        </nav>

    
    

        <% } %>





</asp:Content>
