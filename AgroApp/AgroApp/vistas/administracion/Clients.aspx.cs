using AgroApp.clases;
using DevExpress.Web.ASPxGridView;
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

            Session["clienteID"] = 125;

        }

        protected void gridClientes_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
        }

        protected void gridClientes_InitNewRow(object sender, DevExpress.Web.Data.ASPxDataInitNewRowEventArgs e)
        {
        }

        protected void bNewDestino_Click(object sender, EventArgs e)
        {
            if (gridClientes.IsNewRowEditing)
            {
            }
            else
            {
                try
                {
                    int val = gridClientes.EditingRowVisibleIndex;
                    String dat = gridClientes.GetRowValues(val, "ID").ToString();
                    Session["clienteID"] = Convert.ToInt64(dat);
                    //texto.Text = "Insertando: " + Session["clienteID"]+ " -> "+dat;
                    DestinosClienteDataSource.Insert();
                    DestinosClienteDataSource.DataBind();
                }
                catch (Exception xc)
                {
                    
                    //texto.Text = "Error:"+xc.ToString();
                }                
            }
        }

        protected void DestinosClienteDataSource_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            //texto.Text = "Registro insertado...";
        }
    }
}