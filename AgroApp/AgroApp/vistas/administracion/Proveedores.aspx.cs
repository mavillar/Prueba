using DevExpress.Web.ASPxGridView;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgroApp
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ASPxGridView1_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["proveedorID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void ASPxGridView1_BeforePerformDataSelect1(object sender, EventArgs e)
        {
            Session["proveedorID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }


    }
}