<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label><br />
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    <div class="titulo">
        <asp:Label ID="lblTitulo" runat="server" Text="Label">Mantenimiento productos</asp:Label>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
    <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" ReadOnly="True" SortExpression="IdProducto" />
            <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
            <asp:BoundField DataField="PrePro" HeaderText="Precio" SortExpression="PrePro" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="Primero" LastPageText="Última" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <div>
        <asp:Label ID="lblIdProducto" runat="server" Text="Id. Producto"></asp:Label>
        <asp:TextBox ID="txtIdProducto" runat="server" Enabled="False"></asp:TextBox><br />
        <asp:Label ID="lblDesPro" runat="server" Text="Descripción"></asp:Label>
        <asp:TextBox ID="txtDesPro" runat="server" Enabled="False"></asp:TextBox><br />
        <asp:Label ID="lblPrePro" runat="server" Text="Precio"></asp:Label>
        <asp:TextBox ID="txtPrePro" runat="server" Text="0" Enabled="False"></asp:TextBox><br />
        <asp:Label ID="lblIdUnidad" runat="server" Text="Unidad"></asp:Label>
        <asp:DropDownList ID="ddlIdUnidad" runat="server" Enabled="False" DataSourceID="SqlDataSource2"></asp:DropDownList><br />
        <asp:Label ID="lblIdTipo" runat="server" Text="Tipo Producto"></asp:Label>
        <asp:DropDownList ID="ddlIdTipo" runat="server" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="IdTipo"></asp:DropDownList><br />
    </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [DesTip] FROM [TIPO]"></asp:SqlDataSource>

    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" />
    <asp:Button ID="btnEditar" runat="server" Text="Editar" />
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
    <asp:Button ID="btnInsertar" runat="server" Text="Insertar" />
    <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
    <asp:Button ID="btnBorrar" runat="server" Text="Borrar" />
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />



</asp:Content>
