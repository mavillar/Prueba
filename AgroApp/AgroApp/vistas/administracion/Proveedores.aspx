<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="AgroApp.Formulario_web13" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxSplitter" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRibbon" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGlobalEvents" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="https://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&amp;s=1"></script>
<script type="text/javascript">

    var map = (function () {
        var bingMap = null;
        var latitud, longitud;
        function getContenedorMap() {
            return document.getElementById("mapaCentro");
        }

        function showMap() {
            if (!bingMap) {
                alert(map.latitud + ", " + map.longitud);
                createMap();
            }
        }
        function hideMap() {
            bingMap = null;
        }
        function createMap() {
            if (typeof Microsoft.Maps.Map === "undefined") return;
            var mapOptions = {
                credentials: "AoQi8x29JLhh_iTsAec2pNK050bVHYJOI2G3sVgslKj0Bo1gP-nvP4263H4lFszY",
                mapTypeId: Microsoft.Maps.MapTypeId.road,
                zoom: 12,
                center: new Microsoft.Maps.Location(map.latitud, map.longitud),
                enableSearchLogo: false,
                showScalebar: false,
                useInertia: false,
                disableKeyboardInput: true
            };
            bingMap = new Microsoft.Maps.Map(getContenedorMap(), mapOptions);
        }
        return {
            showMap: showMap,
            createMap: createMap
        };
    })();

    function OnControlsInitializated(s, e) {
        ASPxClientUtils.AttachEventToElement(window, "resize", function (e) {
            AdjustSize();
        });
    }

    function OnInit(s, e) {
        AdjustSize();
    }

    function OnEndCallBack(s, e) {
        AdjustSize();
    }

    function AdjustSize() {
        var height = Math.max(0, document.documentElement.clientHeight);
        ProveedoresGridView.SetHeight(height);
    }

    function OnClienteDetalle(element, latitud, longitud) {
        map.latitud = latitud;
        map.longitud = longitud;
        popup.Show();
    }

</script>

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
        <SettingsPager Visible="False">
        </SettingsPager>
        <Settings ShowFilterRow="True" VerticalScrollableHeight="0" ShowVerticalScrollBar="True" />
        <SettingsText EmptyDataRow="La Tabal de Proveedores está vacía." />
        <SettingsLoadingPanel Text="Cargando Lista de Proveedores&amp;hellip;" />
        <SettingsDetail ShowDetailRow="True" />
        <Paddings Padding="0px"></Paddings>
        <ClientSideEvents Init="OnInit" EndCallback="OnEndCallBack" />
        <Templates>
            <DetailRow>
                
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="CentrosproveedorDataSource" 
                    KeyFieldName="ID" Width="75%" OnBeforePerformDataSelect="ASPxGridView1_BeforePerformDataSelect1">
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="10%">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="centro_cargaID" Visible="False" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="proveedorID" Visible="False" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Centro" FieldName="centro" VisibleIndex="4" Width="45%">
                            <PropertiesComboBox DataSourceID="CentrosDataSource" TextField="centro" ValueField="ID">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataTextColumn Caption="Latitud" FieldName="lat" VisibleIndex="5" Width="15%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Longitud" FieldName="lon" VisibleIndex="6" Width="15%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Ver en Mapa" VisibleIndex="7" Width="15%">
                            <DataItemTemplate>
                                <a href="javascript:void(0);" onclick="OnClienteDetalle(this, '<%# DataBinder.Eval(Container.DataItem, "lat") %>', '<%# DataBinder.Eval(Container.DataItem, "lon") %>')">
                                    Ver en Mapa...
                                </a>
                            </DataItemTemplate>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <SettingsPager Visible="False">
                    </SettingsPager>
                    <SettingsText EmptyDataRow="No hay Centros de Carga asignados a este Proveedor." />
                    <SettingsDataSecurity AllowEdit="False" />
                </dx:ASPxGridView>
                
            </DetailRow>
        </Templates>
        <Border BorderWidth="0px"></Border>
    </dx:ASPxGridView>

    <dx:ASPxPopupControl ID="Popup" runat="server" Width="400px" Height="400px"
        ShowPinButton="True" ShowRefreshButton="True" ShowCollapseButton="True" ShowMaximizeButton="True" 
        ClientInstanceName="popup" PopupElementID="popupArea" 
        PopupVerticalAlign="TopSides" PopupHorizontalAlign="LeftSides"
        AllowDragging="True" AllowResize="false" CloseAction="CloseButton" 
        ScrollBars="None" HeaderText="Map" ShowFooter="true" FooterText="" PopupAnimationType="Fade">
        <ContentStyle Paddings-Padding="0">
        </ContentStyle>
        <ClientSideEvents Shown="map.showMap" EndCallback="map.createMap" CloseUp="map.hideMap"></ClientSideEvents>
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div id='mapaCentro' style="position: relative; width:100%; height:100%">
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <br />

    <dx:ASPxGlobalEvents ID="ge" runat="server">
        <ClientSideEvents ControlsInitialized="OnControlsInitializated" />
    </dx:ASPxGlobalEvents>
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
                SelectCommand="SELECT ccp.*, c.centro, c.lat, c.lon
FROM AgroExport.centros_carga_proveedor as ccp INNER JOIN AgroExport.centros_de_carga as c ON c.ID=ccp.centro_cargaID 
WHERE proveedorID=2"
                InsertCommand="INSERT INTO AgroExport.centros_carga_proveedor (centro_cargaID, proveedorID) VALUES (?, ?)">

        <InsertParameters>
            <asp:Parameter Name="centro" Type="Int16" />
            <asp:SessionParameter Name="proveedorID" SessionField="proveedorID" Type="Int16" />
        </InsertParameters>
    </asp:SqlDataSource>

</asp:Content>
