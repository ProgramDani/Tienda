<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesTienda.Default" %>

<!DOCTYPE html>
<html lang="es">
    <head>
      <meta charset="UTF-8">
      <link href="./Estilos/Style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="cabecera1">comerciodaw.com</div>
        <div id="cabecera2">TIENDA ONLINE - SHOPPING DAW</div>
        <div class="titulo">GesTienda</div>
        <asp:Login runat="server" align="center">
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr class="tituloTabla">
                                <td align="center" colspan="2">Iniciar sesión</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Correo electrónico::</asp:Label>
                                </td>
                                <td class="box">
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="ctl02">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                </td>
                                <td class="box">
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="ctl02">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="ctl02" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
        <div class="footer">
            <br />
                <br />
                © Desarrollo de Aplicaciones Web interactivas con Acceso a Datos
                <br />
                IES Mare Nostrum (Alicante)
        </div>
    </body>
</html>
    

