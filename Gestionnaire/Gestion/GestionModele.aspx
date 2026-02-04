<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionModele.aspx.cs" Inherits="Gestionnaire.Gestion.GestionModele" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ObjectDataSource ID="ModeleDS" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetModele" TypeName="Gestionnaire.PerruquesDSTTableAdapters.ModeleTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="IdModele" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Code" Type="String" />
                <asp:Parameter Name="Style" Type="String" />
                <asp:Parameter Name="Coupe" Type="String" />
                <asp:Parameter Name="Couleur" Type="String" />
                <asp:Parameter Name="Longueur" Type="Int32" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="Prix" Type="Decimal" />
                <asp:Parameter Name="Qstock" Type="Int32" />
                <asp:Parameter Name="Qreserve" Type="Int32" />
                <asp:Parameter Name="IdFournisseur" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdModele" Type="Int32" />
                <asp:Parameter Name="Code" Type="String" />
                <asp:Parameter Name="Style" Type="String" />
                <asp:Parameter Name="Coupe" Type="String" />
                <asp:Parameter Name="Couleur" Type="String" />
                <asp:Parameter Name="Longueur" Type="Int32" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="Prix" Type="Decimal" />
                <asp:Parameter Name="Qstock" Type="Int32" />
                <asp:Parameter Name="Qreserve" Type="Int32" />
                <asp:Parameter Name="IdFournisseur" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="ModeleGV" runat="server" AutoGenerateColumns="False" DataSourceID="ModeleDS" ShowFooter="True">
            <Columns>
                <asp:TemplateField HeaderText="IdModele" InsertVisible="False" SortExpression="IdModele">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("IdModele") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("IdModele") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Code" SortExpression="Code">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Code") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Code") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCodeIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Couleur" SortExpression="Couleur">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Couleur") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Couleur") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCouleurIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Coupe" SortExpression="Coupe">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Coupe") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Coupe") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCoupeIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Genre" SortExpression="Genre">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Genre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Genre") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtGenreIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Longueur" SortExpression="Longueur">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Longueur") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Longueur") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtLongueurIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prix" SortExpression="Prix">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Prix") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Prix") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPrixIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Qreserve" SortExpression="Qreserve">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Qreserve") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Qreserve") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtReserveIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Qstock" SortExpression="Qstock">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Qstock") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Qstock") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtStockIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Style" SortExpression="Style">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Style") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("Style") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtStyleIns" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nom" SortExpression="Nom">
                    <EditItemTemplate>
                       
                        <asp:DropDownList ID="ddlModele" runat="server" DataSourceID="FournisseurDS" DataTextField="Nom" DataValueField="IdFournisseur" SelectedValue='<%# Bind("IdFournisseur") %>'></asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("Nom") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlFournisseurIns" runat="server" DataSourceID="FournisseurDS" DataTextField="Nom" DataValueField="IdFournisseur"></asp:DropDownList>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Mettre à jour"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifier"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbAjouter" runat="server" OnClick="lbAjouter_Click">Ajouter</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="Supprimer"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>

                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="FournisseurDS" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetFournisseur" TypeName="Gestionnaire.PerruquesDSTTableAdapters.FournisseurTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="IdFournisseur" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nom" Type="String" />
                <asp:Parameter Name="Courriel" Type="String" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="IdSegment" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdFournisseur" Type="Int32" />
                <asp:Parameter Name="Nom" Type="String" />
                <asp:Parameter Name="Courriel" Type="String" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="IdSegment" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
