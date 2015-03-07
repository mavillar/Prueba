<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="ListaDestinosCliente.aspx.cs" Inherits="AgroApp.Formulario_web12" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ClientesDataSource" KeyFieldName="ID" Width="100%">
        <ClientSideEvents SelectionChanged="function(s, e) {
	if ( e.isSelected ) {
		var key = s.GetRowKey(e.visibleIndex);
Session[&quot;clienteID&quot;]=key;

alert('Last Key = ' + key);
		
	}
}" />
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="nombre" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="cif" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="tlf_fijo" Visible="False" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="fax" Visible="False" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="movil" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="email" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="direccion" Visible="False" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="cp" Visible="False" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ciudad" Visible="False" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="localidad" Visible="False" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="pais" Visible="False" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="notas" Visible="False" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="rapple" Visible="False" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="contacto" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="web" Visible="False" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="iva" Visible="False" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="hasIVA" Visible="False" VisibleIndex="18">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="deleted" Visible="False" VisibleIndex="19">
            </dx:GridViewDataCheckColumn>
        </Columns>
        <SettingsBehavior AllowSelectByRowClick="True" ConfirmDelete="True" />
        <Settings ShowFilterRow="True" />
        <SettingsDetail ShowDetailRow="True" />
        <SettingsCommandButton>
            <NewButton ButtonType="Image">
                <Image IconID="mail_newcontact_32x32">
                </Image>
            </NewButton>
        </SettingsCommandButton>
        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
        <Templates>
            <DetailRow>
                <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False"
                        DataSourceID="DestinosClienteDataSource"
                        OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect"
                        KeyFieldName="ID">
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="1" Width="50px" ShowNewButtonInHeader="True">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Añadir Destino a Cliente" FieldName="destino" VisibleIndex="2" Width="250px">
                            <PropertiesComboBox DataSourceID="DestinosDataSource" TextField="destino" ValueField="ID">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                    </Columns>
                    <SettingsCommandButton>
                        <NewButton ButtonType="Image">
                            <Image IconID="mail_newcontact_16x16">
                            </Image>
                        </NewButton>
                    </SettingsCommandButton>
                    <SettingsDataSecurity AllowEdit="False" />
                </dx:ASPxGridView>
            </DetailRow>
        </Templates>
    </dx:ASPxGridView>
    <br />

    <div style="float:left;">
    </div>
    <div style="float:left;">

    </div>
    <asp:SqlDataSource ID="DestinosClienteDataSource" runat="server"
            ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>"
            ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>"
            InsertCommand="INSERT INTO AgroExport.destinos_cliente (clienteID, destinoID) VALUES ($clienteID, $destinoID)"
            SelectCommand="SELECT dc.*, d.destino FROM AgroExport.destinos_cliente as dc INNER JOIN AgroExport.destinos as d ON d.ID=dc.destinoID WHERE dc.clienteID=@clienteID">

        <InsertParameters>
            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int64" />
            <asp:FormParameter FormField="ID" Name="destinoID" Type="Int16" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int64" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="DestinosDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" SelectCommand="SELECT ID, destino FROM AgroExport.destinos WHERE deleted=0"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ClientesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" SelectCommand="SELECT * FROM AgroExport.clientes WHERE deleted=0"></asp:SqlDataSource>
</asp:Content>
