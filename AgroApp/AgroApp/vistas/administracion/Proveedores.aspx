<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="AgroApp.Formulario_web13" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxSplitter" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRibbon" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxGridView ID="ProveedoresGridView" runat="server" AutoGenerateColumns="False"
            Border-BorderWidth="0px"
            Paddings-Padding="0px"                            
            DataSourceID="ProveedoresDataSource" 
            KeyFieldName="ID" Width="100%" 
            Caption="LISTA DE PROVEEDORES"
            ClientInstanceName="ProveedoresGridView">

        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Nombre del Proveedor" FieldName="proveedor" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="cif" Visible="False" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="campos_personalizados" Visible="False" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="direccion" Visible="False" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Localidad" FieldName="localidad" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="cp" Visible="False" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ciudad" Visible="False" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="paisID" Visible="False" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Telefono Contacto" FieldName="telefono" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="orden" Visible="False" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Latitud" FieldName="lat" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Longitud" FieldName="lon" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="zoom" Visible="False" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="centros_cargaID" Visible="False" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="notas" Visible="False" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="centro" Visible="False" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="deleted" Visible="False" VisibleIndex="17">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn Caption="Mapa" VisibleIndex="18">
            </dx:GridViewDataTextColumn>
        </Columns>
        <SettingsBehavior AllowSelectByRowClick="True" />
        <Settings ShowFilterRow="True" />
        <SettingsLoadingPanel Text="Cargando Lista de Proveedores&amp;hellip;" />
        <SettingsDetail ShowDetailRow="True" />
        <Paddings Padding="0px"></Paddings>
        <Templates>
            <DetailRow>
                
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="CentrosproveedorDataSource" 
                    KeyFieldName="ID" Width="300px" OnBeforePerformDataSelect="ASPxGridView1_BeforePerformDataSelect1">
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="centro_cargaID" Visible="False" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="proveedorID" Visible="False" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Centro" FieldName="centro" VisibleIndex="4" Width="70%">
                            <PropertiesComboBox DataSourceID="CentrosDataSource" TextField="centro" ValueField="ID">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                    </Columns>
                    <SettingsPager Visible="False">
                    </SettingsPager>
                    <SettingsDataSecurity AllowEdit="False" />
                </dx:ASPxGridView>
                
            </DetailRow>
        </Templates>
        <Border BorderWidth="0px"></Border>
    </dx:ASPxGridView>


    <asp:SqlDataSource ID="CentrosDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM AgroExport.centros_de_carga WHERE deleted=0"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ProveedoresDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM AgroExport.proveedores"></asp:SqlDataSource>
    <asp:SqlDataSource ID="CentrosproveedorDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>"
                ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>"
                SelectCommand="SELECT ccp.*, c.centro FROM AgroExport.centros_carga_proveedor as ccp INNER JOIN AgroExport.centros_de_carga as c ON c.ID=ccp.centro_cargaID WHERE proveedorID=@proveedorID"
                InsertCommand="INSERT INTO AgroExport.centros_carga_proveedor (centro_cargaID, proveedorID) VALUES (?, ?)">

        <SelectParameters>
            <asp:SessionParameter Name="proveedorID" SessionField="proveedorID" Type="Int16" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="centro" Type="Int16" DefaultValue="3" />
            <asp:SessionParameter Name="proveedorID" SessionField="proveedorID" Type="Int16" />
        </InsertParameters>
    </asp:SqlDataSource>

</asp:Content>
