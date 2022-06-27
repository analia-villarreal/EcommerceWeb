<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ProyectoE_COMMERCE.LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div>
        <div class="row mb-3">
            <asp:Label class="col-sm-2 col-form-label" Text="Email" runat="server" />
            <div class="col-sm-10">
                <input type="email" class="form-control" id="inputEmail3">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword3">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary full-width">Iniciar Sesión</button>
            </div>
            <div class="col-sm-10">
                <p class=" text-center">¿No tenes cuenta?</p>
                <a href="RegisterForm.aspx">Crear Cuenta</a>
            </div>

        </div>


    </div>
</asp:Content>
