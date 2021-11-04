<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="~/Estilos/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="cabecera1">comerciodaw.com</div>
        <div id="cabecera2">TIENDA ONLINE - SHOPPING DAW</div>
        <div class="titulo1">GesTienda</div>
        <div class="titulo2">Registro de Usuario</div>

              <div class="cuerpo">
                <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label1" runat="server" Text="Label">Correo Electrónico</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtCorCli" runat="server" ControlToValidate="txtCodPre" Width="218px"></asp:TextBox>
                    </div>
                </div>
                  <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label2" runat="server" Text="Label">Contraseña</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtPassword1" runat="server" ControlToValidate="txtCodPre"></asp:TextBox>
                    </div>
                </div>
                  <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label3" runat="server" Text="Label">Correo Introduzca nuevamente la Contraseña</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtPassword2" runat="server" ControlToValidate="txtCodPre"></asp:TextBox>
                    </div>
                </div>
                  <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label4" runat="server" Text="Label">NIF/NIE/CIF</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtIdCliente" runat="server" ControlToValidate="txtCodPre" Width="181px"></asp:TextBox>
                    </div>
                </div>
                  <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label5" runat="server" Text="Label">Nombre/Razón Social</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtNomCli" runat="server" ControlToValidate="txtCodPre" Width="393px"></asp:TextBox>
                    </div>
                </div>
                  <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label6" runat="server" Text="Label">Dirección</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtDirCli" runat="server" ControlToValidate="txtCodPre" Width="363px"></asp:TextBox>
                    </div>
                </div>
                  <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label7" runat="server" Text="Label">Población</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtPobCli" runat="server" ControlToValidate="txtCodPre" Width="316px"></asp:TextBox>
                    </div>
                </div>
                  <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label8" runat="server" Text="Label">Código Postal</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtCpoCli" runat="server" ControlToValidate="txtCodPre"></asp:TextBox>
                    </div>
                </div>
                  <div class="linea">
                    <div class="Texto">
                        <asp:Label ID="Label9" runat="server" Text="Label">Teléfono</asp:Label>
                    </div>
                    <div class="box">
                        <asp:TextBox ID="txtTelCli" runat="server" ControlToValidate="txtCodPre" Width="262px"></asp:TextBox>
                    </div>
                </div>
                <div class="linea">
                    <div class="BotonEnviar">
                        <asp:Button ID="Button1" runat="server" Text="Insertar" OnClick="Button1_Click" />
                    </div>
                    <div class="link">
                    <asp:LinkButton ID="LinkButton1" runat="server">Ir a Inicio</asp:LinkButton>
                    </div>
                </div>
                   <asp:Label ID="lblMensajes" runat="server" Text="Label" ForeColor="Red" Visible="true"></asp:Label>
             </div>
             
       
        <div class="footer">
            <br />
            <br />
            © Desarrollo de Aplicaciones Web interactivas con Acceso a Datos
            <br />
            IES Mare Nostrum (Alicante)
        </div>
    </form>
</body>
</html>
