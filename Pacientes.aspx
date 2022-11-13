<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pacientes.aspx.cs" Inherits="Hospital_Tarea.Pacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 47px;
            text-align: center;
            font-size: large;
        }
        .auto-style4 {
            width: 622px;
        }
        .auto-style5 {
            text-align: left;
            height: 250px;
        }
        .auto-style6 {
            height: 392px;
        }
        .auto-style7 {
            width: 622px;
            height: 250px;
        }
    </style>
</head>
<body style="height: 583px">
    <form id="form1" runat="server">
        <div class="auto-style6" id="L13años">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">PACIENTES</td>
                </tr>
                <tr>
                    <td class="auto-style7">Cédula:
                        <asp:TextBox ID="TCodigo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cantón:&nbsp;&nbsp;
                        <asp:TextBox ID="TCanton" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Nombre:
                        <asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ciudad:&nbsp;&nbsp;
                        <asp:TextBox ID="TCiudad" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Genero:&nbsp;
                        <asp:TextBox ID="TGenero" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Teléfono:&nbsp;
                        <asp:TextBox ID="TTelefono" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Provincia:&nbsp;
                        <asp:TextBox ID="TProvincia" runat="server"></asp:TextBox>
                        &nbsp;&nbsp; Seguro:&nbsp;
                        <asp:TextBox ID="TSeguro" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Edad:
                        <asp:TextBox ID="TEdad" runat="server"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style5">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="sqlHospital" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="sqlHospital" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString2 %>" InsertCommand="Insert into Paciente values(@cedula, @nombre, @genero, @provincia, @canton, @ciudad, @telefono, @seguro, @edad)" SelectCommand="SELECT [cedula], [nombre], [genero], [provincia], [canton], [ciudad], [telefono], [seguro], [edad] FROM [Paciente]" DeleteCommand="delete Paciente where cedula = @codigo
">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TCodigo" Name="codigo" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TCodigo" Name="cedula" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TNombre" Name="nombre" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TGenero" Name="genero" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TProvincia" Name="provincia" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TCanton" Name="canton" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TCiudad" Name="ciudad" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TTelefono" Name="telefono" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TSeguro" Name="seguro" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TEdad" Name="edad" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="BAgregar" runat="server" OnClick="BAgregar_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BEliminar" runat="server" OnClick="BEliminar_Click" Text="Eliminar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BproporMF" runat="server" OnClick="Button1_Click" Text="Cantidad de M/F" />
&nbsp;&nbsp;&nbsp; Cantidad de hombres:
            <asp:Label ID="LabelM" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; Cantidad de mujeres:
            <asp:Label ID="LabelF" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BEdades" runat="server" Text="Observar edades" OnClick="BEdades_Click" />
&nbsp;&nbsp;&nbsp; Menores de 13 años:
            <asp:Label ID="L13años" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp; Entre 13 a 30 años:
            <asp:Label ID="L13a30años" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; Mayores a 30 años:
            <asp:Label ID="L30años" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BSeguros" runat="server" OnClick="BSeguros_Click" Text="Asegurados" />
&nbsp;&nbsp;&nbsp; Asegurados:
            <asp:Label ID="LSgroSI" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp; No asegurados:
            <asp:Label ID="LSgroNO" runat="server"></asp:Label>
&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
