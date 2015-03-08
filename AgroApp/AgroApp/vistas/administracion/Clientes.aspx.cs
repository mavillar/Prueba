using DevExpress.Web.ASPxGridView;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgroApp
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void clientesGridView_CustomErrorText(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomErrorTextEventArgs e)
        {
            //e.ErrorText = e.Exception.ToString();
        }

        protected void TelefonosGridView_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["clienteID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void ASPxGridView1_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["clienteID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void ASPxGridView2_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["clienteID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }
    }
}