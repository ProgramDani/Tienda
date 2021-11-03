<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="titulos">
        <div class="contenidotitulo">
            <asp:Label ID="Label1" runat="server" Text="Label">Aplicación Web GesTienda</asp:Label><br />
        </div>
        <div class="center">
            <asp:Label ID="Label2" runat="server" Text="Label">Error en tiempo de ejecucción</asp:Label><br />
        </div>
    </div>
    <div class="borde">
        <asp:Label ID="Label3" runat="server" Text="Label">Error ASP.NET:</asp:Label><br />
        <asp:Label ID="lblErrorASP" ForeColor="red" runat="server"></asp:Label><br />
        <asp:Label ID="Label4" runat="server" Text="Label">Error ADO.NET:</asp:Label><br />
        <asp:Label ID="lblErrorADO" ForeColor="red" runat="server"></asp:Label><br />
    </div>
</asp:Content>
