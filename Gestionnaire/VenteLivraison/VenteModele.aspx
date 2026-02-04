<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VenteModele.aspx.cs" Inherits="Gestionnaire.VenteLivraison.VenteModele" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblIdModele" runat="server" Text="Entrez l Id du Modele a vendre:"></asp:Label>
            <asp:TextBox ID="txtIdModele" runat="server"></asp:TextBox>
            <asp:Button ID="btnAfficher" runat="server" Text="Afficher" />
        </div>
        <asp:ObjectDataSource ID="ModeleDS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetModeleParId" TypeName="Gestionnaire.PerruquesDSTTableAdapters.ModeleTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtIdModele" Name="IdModele" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="ModeleGV" runat="server" AutoGenerateColumns="False" DataSourceID="ModeleDS">
            <Columns>
                <asp:BoundField DataField="IdModele" HeaderText="IdModele" InsertVisible="False" ReadOnly="True" SortExpression="IdModele" />
                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                <asp:BoundField DataField="Couleur" HeaderText="Couleur" SortExpression="Couleur" />
                <asp:BoundField DataField="Coupe" HeaderText="Coupe" SortExpression="Coupe" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Longueur" HeaderText="Longueur" SortExpression="Longueur" />
                <asp:BoundField DataField="Prix" HeaderText="Prix" SortExpression="Prix" />
                <asp:BoundField DataField="Qreserve" HeaderText="Quantite reserve" SortExpression="Qreserve" />
                <asp:BoundField DataField="Qstock" HeaderText="Quantite en inventaire" SortExpression="Qstock" />
                <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:TemplateField HeaderText="Quantite vendu">
                    <ItemTemplate>
                        <asp:TextBox ID="txtQtVendu" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnVendre" OnClick="btnVendre_Click"  runat="server" Text="Vendre" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
