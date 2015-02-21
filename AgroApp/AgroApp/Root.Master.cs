using System;
using DevExpress.Web.ASPxClasses;

namespace AgroApp {
    public partial class Root : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {
            MainSplitter.GetPaneByName("HeaderPane").Size = ASPxWebControl.GlobalTheme == "Moderno" ? 101 : 87;
            MainSplitter.GetPaneByName("HeaderPane").MinSize = ASPxWebControl.GlobalTheme == "Moderno" ? 101 : 87;
        }
    }
}