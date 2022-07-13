<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ProyectoE_COMMERCE.LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div style="margin: 50px 0; color: #fff">
        <div id="loginForm" class="text-center">


            <div class="LoginForm row justify-content-center">
                <div action="/" method="post">

                    <div class="col-6" style="margin: -30px auto; background-color: #151515;padding:50px;border-radius:10px">

                        <asp:Label Text="Iniciar Sesión" Style="text-transform:uppercase;font-size:1.8rem" CssClass="modal-title" runat="server" />

                        <!--NOMBRE-->
                        <div class="row mb-4" style="margin-top:30px">
                            <asp:Label class="col-sm-3 col-form-label" Text="Nombre de Usuario" runat="server" />
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtUser" runat="server" class="form-control" />
                            </div>
                        </div>

                        <!--pass-->
                        <div class="row mb-4">
                            <asp:Label Text="Contraseña" ID="PassLogin" runat="server" CssClass="col-sm-3 col-form-label" />
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtPass" runat="server" class="form-control" />
                            </div>
                        </div>

                        <!--BUTTON-->

                        <div class="row mb-4">
                            <asp:Label Text="" ID="button" runat="server" CssClass="col-sm-3 col-form-label" />
                            <div class="col-sm-9">
                                <asp:Button ID="IniciarSesion" Text="INICIAR SESIÓN" OnClick="IniciarSesion_Click" CssClass="btn btn-danger" Style="display: block; width: 100%" runat="server" />
                            </div>
                        </div>
                        <!--BUTTON-->

                        <p style="">¿No tenes cuenta?</p>
                        <a href="#" class="text-danger" style="text-decoration:none">Registrate</a>


                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
