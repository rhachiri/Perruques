using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestionnaire.VenteLivraison
{
    public partial class VenteModele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnVendre_Click(object sender,EventArgs e)
        {
            int? varIdModele = Convert.ToInt32(txtIdModele.Text);

            Button objBouton = (Button)sender;
            GridViewRow rangeeGV = (GridViewRow)objBouton.NamingContainer;
            String varQuantite = ((TextBox)rangeeGV.FindControl("txtQtVendu")).Text;
            int varQuantiteInt = Convert.ToInt32(varQuantite);
            PerruquesDSTTableAdapters.ModeleTableAdapter adapteurModele = new PerruquesDSTTableAdapters.ModeleTableAdapter();
            adapteurModele.VenteModele(varIdModele, varQuantiteInt);
            ModeleGV.DataBind();


        }
    }
}