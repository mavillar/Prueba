using AgroApp.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgroApp
{
    public partial class Clients : System.Web.UI.Page {

        //List<DestinosCliente> listaDestinosCliente;

        protected void Page_Load(object sender, EventArgs e) {

            

        }

        protected void gridClientes_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            texto.Text = "row inserting";
        }

        protected void gridClientes_InitNewRow(object sender, DevExpress.Web.Data.ASPxDataInitNewRowEventArgs e)
        {
            texto.Text = "new row";
        }

        protected void bNewDestino_Click(object sender, EventArgs e)
        {
            //DestinosClienteDataSource.Insert();
            texto.Text = "Insertando...";
        }

    }
}