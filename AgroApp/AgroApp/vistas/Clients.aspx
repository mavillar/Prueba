<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="AgroApp.Clients" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGlobalEvents" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
     <script type="text/javascript">
         var keyValue;
         function OnClienteDetalle(element, key) {
             fichaClienteCallbackPanel.setContentHtml("");
             clientePopUp.ShowAtElement(element);
             keyValue = key;
         }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

     <dx:ASPxPopupControl runat="server" ID="clientePopUp" ClientInstanceName="clientePopUp"
                            PopupHorizontalAlign="Center"
                            PopupVerticalAlign="Middle"
                            LoadingPanelText="Cargando perfil de Cliente&amp;hellip;"
                            HeaderText="Ficha de Cliente">
         <ClientSideEvents Shown="function(s, e) {
	
}" />
         <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <dx:ASPxCallbackPanel ID="fichaClienteCallbackPanel" ClientInstanceName="fichaClienteCallbackPanel"
                                    runat="server" Width="500px" Height="500px" RenderMode="Table" ScrollBars="Auto">
                    <PanelCollection>
                        <dx:PanelContent runat="server">
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <dx:ASPxGridView ID="gridClientes" runat="server" 
                        AutoGenerateColumns="False" DataSourceID="ClientesDataSource" 
                        KeyFieldName="ID" Width="100%" Caption="Listado de Clientes" 
                        ClientInstanceName="grid" 
                        OnRowInserting="gridClientes_RowInserting" 
                        OnDetailRowExpandedChanged="gridClientes_DetailRowExpandedChanged" 
                        OnInitNewRow="gridClientes_InitNewRow" 
                        OnStartRowEditing="gridClientes_StartRowEditing">

        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="1">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="nombre" VisibleIndex="3" Caption="Nombre">
                <PropertiesTextEdit Width="270px" Style-BackColor="#ccffcc" Style-Border-BorderWidth="0px">
                    <Style BackColor="#CCFFCC">
                        <Border BorderWidth="0px"></Border>
                    </Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="cif" VisibleIndex="4">
                <PropertiesTextEdit DisplayFormatString="c">
                    <MaskSettings Mask="<A-Z>00.000.000" ErrorText="Formato para el CIF incorrecto." />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="tlf_fijo" VisibleIndex="5" Caption="Telefono Fijo">
                <PropertiesTextEdit DisplayFormatString="c">
                    <MaskSettings Mask="+00 (000) 000 000" />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="movil_1" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="pais" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="contacto" VisibleIndex="21">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Ver" VisibleIndex="27">
                <DataItemTemplate>
                    <a href="javascript:void(0);" onclick="OnClienteDetalle(this, '<%# Container.KeyValue %>')">
                        Ver Detalles...
                    </a>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Código Postal" FieldName="cp" Visible="False" VisibleIndex="22">
                <PropertiesTextEdit DisplayFormatString="c">
                    <MaskSettings Mask="00000" ErrorText="Formato de Código Postal no válido." />
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Fax" FieldName="fax" Visible="False" VisibleIndex="0">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Dirección Web" FieldName="web" Visible="False" VisibleIndex="23">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Dirección" FieldName="direccion" Visible="False" VisibleIndex="24">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Ciudad" FieldName="ciudad" Visible="False" VisibleIndex="25">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Localidad" FieldName="localidad" Visible="False" VisibleIndex="26">
            </dx:GridViewDataTextColumn>
            
        </Columns>
        <SettingsBehavior AllowSelectByRowClick="True" ColumnResizeMode="Control" ConfirmDelete="True" AllowFocusedRow="True" AllowSelectSingleRowOnly="True" />
        <SettingsPager AlwaysShowPager="True">
        </SettingsPager>
        <Settings ShowFilterRow="True" />
        <SettingsLoadingPanel Text="Cargando datos&amp;hellip;" />
        <Paddings Padding="0px" />
        <Templates>
            <EditForm>
                <div style="padding:5px">
                    <dx:ASPxPageControl ID="UsuarioPageControl" runat="server" Width="100%" Theme="Office2010Blue" LoadingPanelText="Cargando datos&hellip;" Font-Bold="True" Font-Size="Small" ForeColor="#003366" ShowLoadingPanelImage="False" ShowLoadingPanel="False">
                        <TabPages>
                            <dx:TabPage Text="Información Básica">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">

                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Nombre"></dx:ASPxLabel>
                                        <dx:ASPxGridViewTemplateReplacement ID="TemplateReplacementNombre" runat="server"
                                                                            ReplacementType="EditFormCellEditor" ColumnID="nombre" />

                                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="cif"></dx:ASPxLabel>
                                        <dx:ASPxGridViewTemplateReplacement ID="TemplateReplacementCIF" runat="server"
                                                                            ReplacementType="EditFormCellEditor" ColumnID="cif" />

                                        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="tlf_fijo"></dx:ASPxLabel>
                                        <dx:ASPxGridViewTemplateReplacement ID="TemplateReplacementTlf" runat="server"
                                                                            ReplacementType="EditFormCellEditor" ColumnID="tlf_fijo" />
                                        
                                        <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Código Postal"></dx:ASPxLabel>
                                        <dx:ASPxGridViewTemplateReplacement ID="ASPxGridViewTemplateReplacement1" runat="server"
                                                                            ReplacementType="EditFormCellEditor" ColumnID="cp" />
                                        
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Text="Dirección de Envío">

                            </dx:TabPage>
                            <dx:TabPage Text="Destinos Habituales">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <dx:ASPxGridView ID="ClientesEnviosGridView" runat="server" Width="250px">
                                            <Columns>

                                                <dx:GridViewCommandColumn   ShowClearFilterButton="True" 
                                                                            ShowDeleteButton="True" 
                                                                            ShowEditButton="True" 
                                                                            ShowNewButtonInHeader="True" 
                                                                            VisibleIndex="1">
                                                </dx:GridViewCommandColumn>
                                                <dx:GridViewDataComboBoxColumn  FieldName="destino" 
                                                                                Caption="Destino" 
                                                                                VisibleIndex="3"
                                                            PropertiesComboBox-DataSourceID="DestinosDataSource" 
                                                            PropertiesComboBox-TextField="destino"
                                                            PropertiesComboBox-ValueField="ID">

                                                </dx:GridViewDataComboBoxColumn>
                                            </Columns>
                                        </dx:ASPxGridView>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Text="Comisionistas">

                            </dx:TabPage>
                            <dx:TabPage Text="Otros">

                            </dx:TabPage>
                        </TabPages>
                    </dx:ASPxPageControl>
                    <div style="text-align:right;padding:2px">
                        <dx:ASPxGridViewTemplateReplacement ID="UpdateButton" runat="server" ReplacementType="EditFormUpdateButton" />
                        <dx:ASPxGridViewTemplateReplacement ID="CancelButton" runat="server" ReplacementType="EditFormCancelButton" />
                    </div>
                </div>
            </EditForm>
        </Templates>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="ClientesDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM AgroExport.clientes" 
                    DeleteCommand="DELETE FROM AgroExport.clientes WHERE ID=@ID" 
                    InsertCommand="INSERT INTO AgroExport.clientes (nombre, cif, tlf_fijo, cp) VALUES (@nombre, @cif, @tlf_fijo, @cp)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre"    Type="String" />
            <asp:Parameter Name="cif"       Type="String" />
            <asp:Parameter Name="tlf_fijo"  Type="String" />
            <asp:Parameter Name="cp"        Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="EnviosDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
                    SelectCommand="SELECT dc.*, d.destino FROM AgroExport.destinos_cliente as dc INNER JOIN AgroExport.destinos as d ON d.ID=dc.destinoID WHERE dc.clienteID=@clienteID" 
                    DeleteCommand="DELETE FROM AgroExport.destinos_cliente WHERE ID=@ID" 
                    InsertCommand="INSERT INTO AgroExport.destinos_cliente (clienteID, destinoID) VALUES (@clienteID, @destinoID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="clienteID"    Type="Int64" />
            <asp:Parameter Name="destinoID"    Type="Int16" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="clienteID"    Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
     <asp:SqlDataSource ID="DestinosDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM AgroExport.destinos">
    </asp:SqlDataSource>
     <br />
     <dx:ASPxTextBox ID="texto" runat="server" Width="170px">
     </dx:ASPxTextBox>
    </asp:Content>
