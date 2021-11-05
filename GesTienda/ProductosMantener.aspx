<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="float">
        <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label><br />
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
        <div class="titulo">
            <asp:Label ID="lblTitulo" runat="server" Text="Label">Mantenimiento productos</asp:Label>
        </div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
        <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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
    </div>
    <div class="float">
        <div class="margintop">
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblIdProducto" runat="server" Text="Id. Producto"></asp:Label>
                </div>
                <div class="box">
                    <asp:TextBox ID="txtIdProducto" runat="server" Enabled="False"></asp:TextBox><br />
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblDesPro" runat="server" Text="Descripción"></asp:Label>
                </div>
                <div class="box">
                    <asp:TextBox ID="txtDesPro" runat="server" Enabled="False"></asp:TextBox><br />
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblPrePro" runat="server" Text="Precio"></asp:Label>
                </div>
                <div class="box">
                    <asp:TextBox ID="txtPrePro" runat="server" Text="0" Enabled="False"></asp:TextBox><br />
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblIdUnidad" runat="server" Text="Unidad"></asp:Label>
                </div>
                <div class="box">
                    <asp:DropDownList ID="ddlIdUnidad" runat="server" Enabled="False" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad"></asp:DropDownList><br />
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblIdTipo" runat="server" Text="Tipo Producto"></asp:Label>
                </div>
                <div class="box">
                   <asp:DropDownList ID="ddlIdTipo" runat="server" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo"></asp:DropDownList><br />
                </div>
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>

        <div class="boton">
            <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
            <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" OnClick="btnEditar_Click" />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Visible="False" OnClick="btnEliminar_Click" />
            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" Visible="False" OnClick="btnInsertar_Click" />
            <asp:Button ID="btnModificar" runat="server" Text="Modificar" Visible="False" OnClick="btnModificar_Click" />
            <asp:Button ID="btnBorrar" runat="server" Text="Borrar" Visible="False" OnClick="btnBorrar_Click" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" Visible="False" />
        </div>
    </div>
</asp:Content>
