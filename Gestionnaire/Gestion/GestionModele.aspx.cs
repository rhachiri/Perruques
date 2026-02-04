using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestionnaire.Gestion
{
    public partial class GestionModele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbAjouter_Click(object sender, EventArgs e)
        {
            ModeleDS.InsertParameters["Code"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtCodeIns")).Text;

            ModeleDS.InsertParameters["Style"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtStyleIns")).Text;

            ModeleDS.InsertParameters["Coupe"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtCoupeIns")).Text;

            ModeleDS.InsertParameters["Couleur"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtCouleurIns")).Text;

            ModeleDS.InsertParameters["Longueur"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtLongueurIns")).Text;

            ModeleDS.InsertParameters["Genre"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtGenreIns")).Text;

            ModeleDS.InsertParameters["Prix"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtPrixIns")).Text;

            ModeleDS.InsertParameters["Qstock"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtStockIns")).Text;

            ModeleDS.InsertParameters["Qreserve"].DefaultValue = ((TextBox)ModeleGV.FooterRow.FindControl("txtReserveIns")).Text;

           


            ModeleDS.InsertParameters["IdFournisseur"].DefaultValue = ((DropDownList)ModeleGV.FooterRow.FindControl("ddlFournisseurIns")).SelectedValue;
            ModeleDS.Insert();
        }
    }
}



