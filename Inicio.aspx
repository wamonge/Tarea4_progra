<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Hospital_Tarea.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Pagina Principal<br />
            <br />
            <asp:Menu ID="Menu1" runat="server">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Pacientes.aspx" Text="Pacientes" Value="Pacientes"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
    </form>
</body>
</html>
