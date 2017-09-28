using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClubArcada.Apps.Web.Controls
{
    public partial class NavigationCtrl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Selection == eNavigationSelection.Home)
            {
                hlkHome.Attributes.Add("class", "active");
            }
            else if (Selection == eNavigationSelection.Tournaments)
            {
                hlkTournaments.Attributes.Add("class", "active");
            }
            else if (Selection == eNavigationSelection.Lvpt)
            {
                hlkLvpt.Attributes.Add("class", "active");
            }
            else if (Selection == eNavigationSelection.Cgl)
            {
                hlkCgl.Attributes.Add("class", "active");
            }
            else if (Selection == eNavigationSelection.Ruffle)
            {
                hlkRuffle.Attributes.Add("class", "active");
            }
            else if (Selection == eNavigationSelection.Jackpot)
            {
                hlkJackpot.Attributes.Add("class", "active");
            }
            else if (Selection == eNavigationSelection.Account)
            {
                hlkAccount.Attributes.Add("class", "active");
            }
            else if (Selection == eNavigationSelection.Bonus)
            {
                hlkBonus.Attributes.Add("class", "active");
            }
            else if (Selection == eNavigationSelection.Gallery)
            {
                hlkGallery.Attributes.Add("class", "active");
            }
        }

        public eNavigationSelection Selection
        {
            get;
            set;
        }

        public enum eNavigationSelection
        {
            NotSet = 0,
            Home,
            Tournaments,
            Lvpt,
            Cgl,
            Jackpot,
            Account,
            Ruffle,
            Bonus,
            Gallery,
            Rules
        }
    }
}