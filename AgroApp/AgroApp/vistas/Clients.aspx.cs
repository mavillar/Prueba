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

        //DataList lista;

        protected void Page_Load(object sender, EventArgs e) {

            //lista.DataSourceID = "DestinosDataSource";
            //lista.DataBind();
            texto.Text = "Sesion Iniciada...";

        }

        protected void gridClientes_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            texto.Text = "Aqui estamos";
;        }

        protected void gridClientes_InitNewRow(object sender, DevExpress.Web.Data.ASPxDataInitNewRowEventArgs e)
        {
            texto.Text = "Nuevo registro";
        }

        protected void gridClientes_StartRowEditing(object sender, DevExpress.Web.Data.ASPxStartRowEditingEventArgs e)
        {
            texto.Text = "Editando registro";
        }

        protected void gridClientes_DetailRowExpandedChanged(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewDetailRowEventArgs e)
        {
            texto.Text = "Detail Row";
        }

    }
}