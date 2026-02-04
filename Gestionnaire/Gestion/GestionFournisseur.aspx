<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionFournisseur.aspx.cs" Inherits="Gestionnaire.Gestion.GestionFournisseur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="FournisseurGV" runat="server" AutoGenerateColumns="False" DataSourceID="FournisseurDS" ShowFooter="True">
                <Columns>
                    <asp:TemplateField HeaderText="IdFournisseur" InsertVisible="False" SortExpression="IdFournisseur">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("IdFournisseur") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("IdFournisseur") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>

                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Nom" SortExpression="Nom">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nom") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFournisseurNomIns" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Courriel" SortExpression="Courriel">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Courriel") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Courriel") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCourrielIns" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="telephone" SortExpression="telephone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("telephone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("telephone") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtTelephoneIns" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Segment" SortExpression="Nom1">
                        <EditItemTemplate>
                            
                            <asp:DropDownList ID="ddlSegment" runat="server" DataSourceID="SegmentDS" DataTextField="Nom" DataValueField="IdSegment" SelectedValue='<%# Bind("IdSegment") %>'></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Nom1") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlSegmentIns" runat="server" DataSourceID="SegmentDS" DataTextField="Nom" DataValueField="IdSegment"></asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Mettre à jour"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifier"></asp:LinkButton>
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
        </div>
        <asp:ObjectDataSource ID="SegmentDS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetSegment" TypeName="Gestionnaire.PerruquesDSTTableAdapters.SegmentTableAdapter"></asp:ObjectDataSource>
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
