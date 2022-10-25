<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="FUDWeb.FUD.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="margin: 3rem; padding: 3rem;">

        <h4>Página Principal.</h4>

        <div class="row">
            <asp:LinkButton ID="LkbNuevoForm" runat="server" Text="+ Nuevo Formato" OnClick="LkbNuevoForm_Click"></asp:LinkButton>
        </div>

        <div class="row">
            <table class="table table-sm">
                <thead>
                    <tr>
                        <th></th>
                        <th>Folio</th>
                        <th>Estatus</th>
                        <th>Servidor/a público/a o autoridad</th>
                        <th>Fecha de Creación</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">
                            <asp:LinkButton ID="LkbDocto" runat="server" Text="Ver Formato"></asp:LinkButton>
                            |
                            <asp:LinkButton ID="LkbDescargar" runat="server" Text="Descargar Formato"></asp:LinkButton>
                        </th>
                        <td>FUD_001</td>
                        <td>TERMINADO</td>
                        <td>RAFAEL JULIÁN GARCÍA GAMIÑO</td>
                        <td>24 / Octubre / 2022 11:06:42 am</td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <asp:LinkButton ID="LkbDocto1" runat="server" Text="Ver Formato"></asp:LinkButton>
                            |
                            <asp:LinkButton ID="LkbDescargar2" runat="server" Text="Descargar Formato"></asp:LinkButton>
                        </th>
                        <td>FUD_002</td>
                        <td>PENDIENTE</td>
                        <td>RAFAEL JULIÁN GARCÍA GAMIÑO</td>
                        <td>23 / Octubre / 2022 01:42:09 pm</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <asp:Repeater ID="RptFUDs" runat="server">
            <HeaderTemplate>
                <table class="table table-sm text-center">
                    <thead>
                        <tr class="table-danger">
                            <th></th>
                            <th>Folio</th>
                            <th>Estatus</th>
                            <th>Servidor/a público/a o autoridad</th>
                            <th>Fecha de Creación</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:LinkButton ID="LkbAtender" runat="server" Text='<i class="fa-solid fa-person-circle-check"></i>' data-bs-toggle="tooltip" data-bs-placement="top" title="Atender" CommandName="Atender" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "IdTicket") %>'></asp:LinkButton>
                    </td>
                    <td class='<%# DataBinder.Eval(Container.DataItem, "Color") %>'><%# DataBinder.Eval(Container.DataItem, "StatusT") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Folio") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Nombre") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Area") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                        </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
