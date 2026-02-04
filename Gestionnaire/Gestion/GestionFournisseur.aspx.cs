using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestionnaire.Gestion
{
    public partial class GestionFournisseur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAjouter_Click(object sender, EventArgs e)
        {
            FournisseurDS.InsertParameters["Nom"].DefaultValue = ((TextBox)FournisseurGV.FooterRow.FindControl("txtFournisseurNomIns")).Text;
            FournisseurDS.InsertParameters["Courriel"].DefaultValue = ((TextBox)FournisseurGV.FooterRow.FindControl("txtCourrielIns")).Text;
            FournisseurDS.InsertParameters["telephone"].DefaultValue = ((TextBox)FournisseurGV.FooterRow.FindControl("txtTelephoneIns")).Text;
            FournisseurDS.InsertParameters["IdSegment"].DefaultValue = ((DropDownList)FournisseurGV.FooterRow.FindControl("ddlSegmentIns")).SelectedValue;
            FournisseurDS.Insert();
        }
    }
}