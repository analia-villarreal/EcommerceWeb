<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ProyectoE_COMMERCE.LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <dikv>
        <div id="loginForm">
            <div id="label-inicio">
                <div class="row">
                    <asp:Label Text="Iniciar Sesión" CssClass="modal-title" runat="server" />
                </div>
                <span>
                    <p>¿no tenes cuenta?</p>
                    <a href="#">Registrate</a>
                </span>
            </div>

            <div class="LoginForm">
                <div action="/" method="post">
                    <div class="row mb-3">
                        <asp:Label class="col-sm-2 col-form-label" Text="Nombre de Usuario" runat="server" />
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtUser" runat="server" class="form-control" />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <asp:Label Text="Contraseña" ID="PassLogin" runat="server" CssClass="col-sm-2 col-form-label" />
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtPass" runat="server" class="form-control" />
                        </div>
                        <div class="row mb-3">
                            <asp:Button ID="IniciarSesion" Text="INICIAR SESIÓN" OnClick="IniciarSesion_Click"  runat="server" />

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </dikv>

</asp:Content>
