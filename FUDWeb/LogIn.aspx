<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FUDWeb.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="PnlLogin" runat="server" DefaultButton="LkbLogin">
        <div class="row" style="margin: 3rem; padding: 3rem;">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4" style="border-color: black; border-style: solid;">
                        <div class="text-center" style="margin-top: 4rem; margin-bottom: 4rem;">
                            <h4>Iniciar Sesión.
                            </h4>
                        </div>
                        <div class="col-md-12" style="padding: 1rem;">
                            <asp:TextBox ID="TxtUsr" CssClass="form-control" runat="server" placeholder="Usuario"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="padding: 1rem;">
                            <asp:TextBox ID="TxtPswd" CssClass="form-control" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="padding: 1rem;">
                            <asp:LinkButton ID="LkbLogin" Text="Ingresar" CssClass="pull-right btn btn-success" runat="server" OnClick="LkbLogin_Click"></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
