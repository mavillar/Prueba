using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgroApp
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Insert();
            }
            catch (Exception exc)
            {
                lMsg.Text = "No se ha podido insertar el nuevo usuario, sosio!";
            }
            
        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            lMsg.Text = "listo...";
            GridView1.DataBind();
            msg.Text = "Barbaro!";
        }

        protected void bSend_Click(object sender, EventArgs e)
        {
            lMsg.Text = "El titulo...";
        }
    }
}