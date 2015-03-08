<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="AgroApp.Formulario_web11" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGlobalEvents" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
<script type="text/javascript">
    function OnControlsInitializated(s, e) {
        ASPxClientUtils.AttachEventToElement(window, "resize", function (e) {
            AdjustSize();
        });
    }

    function OnInit(s, e) {
        AdjustSize();
    }

    function OnEndCallback(s, e) {
        AdjustSize();
    }

    function AdjustSize() {
        var height = Math.max(0, document.documentElement.clientHeight);
        clientesGridView.SetHeight(height);
    }

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="clientesGridView" runat="server" AutoGenerateColumns="False"
                     ClientInstanceName="clientesGridView"
                     DataSourceID="UsuariosDataSource" 
                     KeyFieldName="ID"
                     Width="100%" OnCustomErrorText="clientesGridView_CustomErrorText" Caption="TABLA DE CLIENTES">
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Nombre" FieldName="nombre" VisibleIndex="2" Width="20%">
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="CIF" FieldName="cif" VisibleIndex="3" Width="10%">
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="tlf_fijo" Caption="Telefono Fijo" Visible="False" VisibleIndex="4">
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="fax" Caption="Nº de Fax" Visible="False" VisibleIndex="5">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Móvil Contacto" FieldName="movil" VisibleIndex="6" Width="10%">
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Correo Electrónico" FieldName="email" VisibleIndex="7" Width="30%">
                <PropertiesTextEdit NullDisplayText="Se requiere asociar este Cliente a una cuenta de Correo electrónico."
                    Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
                
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="direccion" Caption="Dirección Postal" Visible="False" VisibleIndex="8">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="cp" Caption="Código Postal" Visible="False" VisibleIndex="9">
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ciudad" Caption="Cuidad" Visible="False" VisibleIndex="10">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="localidad" Caption="Localidad" Visible="False" VisibleIndex="11">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="País" FieldName="pais" VisibleIndex="12" Width="10%">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Persona de Contacto" FieldName="contacto" VisibleIndex="15" Width="15%">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="rapple" Caption="Rapple" Visible="False" VisibleIndex="14">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="web" Visible="False" VisibleIndex="16">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="iva" Caption="% IVA" Visible="False" VisibleIndex="17">
                <EditFormSettings Visible="True" />
                <PropertiesTextEdit Width="250px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px">
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="hasIVA" Caption="¿Factura con iVA?" Visible="False" VisibleIndex="18">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataMemoColumn FieldName="notas" Caption="Nostas" Visible="False" VisibleIndex="13">
                <EditFormSettings Visible="True" />
                <PropertiesMemoEdit Width="100%" Height="50px" Style-BackColor="#FFFFFF" Style-Border-BorderWidth="0px" >
<Style BackColor="White">
<Border BorderWidth="0px"></Border>
</Style>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
        <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" />
        <Settings ShowFilterRow="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Auto" />
        <SettingsLoadingPanel Text="Cargando Tabla de Clientes...&amp;hellip;" />
        <SettingsPager PageSize="25" Visible="False" />
        <ClientSideEvents Init="OnInit" EndCallback="OnEndCallBack" />
        <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
        <SettingsCommandButton>
            <NewButton Text="Nuevo">
            </NewButton>
            <EditButton ButtonType="Image">
                <Image IconID="mail_editcontact_16x16" ToolTip="Editar Cliente">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image">
                <Image IconID="edit_delete_16x16" ToolTip="Eliminar Cliente">
                </Image>
            </DeleteButton>
        </SettingsCommandButton>
        <Templates>
            <DetailRow>
                <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
                    <TabPages>
                        <dx:TabPage Text="Telefonos Fijos y Móviles">
                            <TabImage IconID="chart_chartsrotate_16x16">
                            </TabImage>
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <dx:ASPxGridView ID="TelefonosGridView" runat="server" AutoGenerateColumns="False" 
                                            DataSourceID="TelefonosClientesDataSource" KeyFieldName="ID" Width="100%" 
                                            OnBeforePerformDataSelect="TelefonosGridView_BeforePerformDataSelect">
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="15%">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="clienteID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Nº de Telefono" FieldName="movil" ShowInCustomizationForm="True" VisibleIndex="3" Width="20%">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Tipo Telefono" FieldName="tipo" ShowInCustomizationForm="True" VisibleIndex="4" Width="20%">
                                                <PropertiesComboBox DataSourceID="XMLTipoTelefonosDataSource" DisplayFormatString="g" TextField="tipo" ValueField="ID">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataMemoColumn Caption="Notas" FieldName="notas" ShowInCustomizationForm="True" VisibleIndex="5" Width="45%">
                                            </dx:GridViewDataMemoColumn>
                                        </Columns>
                                        <SettingsPager Visible="False">
                                        </SettingsPager>
                                        <SettingsDataSecurity AllowEdit="False" />
                                    </dx:ASPxGridView>
                                    
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                        <dx:TabPage Text="Emails">
                            <TabImage IconID="mail_mail_16x16">
                            </TabImage>
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EmailsDataSource" KeyFieldName="ID" OnBeforePerformDataSelect="ASPxGridView1_BeforePerformDataSelect" Width="100%">
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="1" Width="15%">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="clienteID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Correo Electrónico" FieldName="email" ShowInCustomizationForm="True" VisibleIndex="4" Width="25%">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataCheckColumn FieldName="deleted" ShowInCustomizationForm="True" Visible="False" VisibleIndex="6">
                                            </dx:GridViewDataCheckColumn>
                                            <dx:GridViewDataMemoColumn Caption="Notas" FieldName="notas" ShowInCustomizationForm="True" VisibleIndex="5" Width="60%">
                                            </dx:GridViewDataMemoColumn>
                                        </Columns>
                                        <SettingsPager Visible="False">
                                        </SettingsPager>
                                        <SettingsDataSecurity AllowEdit="False" />
                                    </dx:ASPxGridView>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                        <dx:TabPage Text="Opciones de Envío">
                            <TabImage IconID="mail_send_16x16">
                            </TabImage>
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                        DataSourceID="OpcionesEnvioDataSource"
                                        KeyFieldName="ID" Width="100%" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect">
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="15%">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="destinoID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="tipo_paletID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Destino" FieldName="destino" ShowInCustomizationForm="True" Width="20%" VisibleIndex="7">
                                                <PropertiesComboBox DataSourceID="DestinosDataSource" TextField="destino" ValueField="ID">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Tipo de Palet" ShowInCustomizationForm="True" VisibleIndex="8" Width="20%" FieldName="tipo">
                                                <PropertiesComboBox DataSourceID="TipoPaletDataSource" TextField="tipo" ValueField="ID">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataMemoColumn Caption="Notas" FieldName="notas" ShowInCustomizationForm="True" VisibleIndex="9" Width="45%">
                                            </dx:GridViewDataMemoColumn>
                                        </Columns>
                                        <SettingsPager Visible="False">
                                        </SettingsPager>
                                        <SettingsDataSecurity AllowEdit="False" />
                                    </dx:ASPxGridView>
                                    <asp:SqlDataSource ID="OpcionesEnvioDataSource" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>"
                                            ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>"
                                            SelectCommand="SELECT coe.*, d.destino, tp.tipo
                                FROM AgroExport.clientes_opciones_envio as coe LEFT JOIN AgroExport.destinos as d ON d.ID=coe.destinoID LEFT JOIN AgroExport.tipo_palet as tp ON tp.ID=coe.tipo_paletID
                                WHERE coe.clienteID=@clienteID AND coe.deleted=0"
                                            InsertCommand="INSERT INTO AgroExport.clientes_opciones_envio (clienteID, destinoID, tipo_paletID, notas) VALUES (?, ?, ?, ?)"
                                            DeleteCommand="UPDATE AgroExport.clientes_opciones_envio SET deleted=1 WHERE ID=@ID">

                                        <SelectParameters>
                                            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int16" />
                                        </SelectParameters>
                                        <InsertParameters>
                                            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int16" />
                                            <asp:Parameter Name="destino" Type="Int16" />
                                            <asp:Parameter Name="tipo" Type="Int16" />
                                            <asp:Parameter Name="notas" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                        <dx:TabPage Text="Comisionistas">
                            <TabImage IconID="people_usergroup_16x16">
                            </TabImage>
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
                                            DataSourceID="ComisionistasClienteDataSource" 
                                            KeyFieldName="ID" Width="100%">
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="20%">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="clienteID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="comisionistaID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataCheckColumn FieldName="deleted" ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                            </dx:GridViewDataCheckColumn>
                                            <dx:GridViewDataMemoColumn Caption="Notas" FieldName="notas" ShowInCustomizationForm="True" VisibleIndex="7" Width="50%">
                                            </dx:GridViewDataMemoColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Nombre del Comisionista" FieldName="nombre" ShowInCustomizationForm="True" VisibleIndex="6" Width="30%">
                                                <PropertiesComboBox DataSourceID="ComisionistasDataSource" TextField="nombre" ValueField="ID">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                        </Columns>
                                        <SettingsPager Visible="False">
                                        </SettingsPager>
                                        <SettingsDataSecurity AllowEdit="False" />
                                    </dx:ASPxGridView>
                                    <asp:SqlDataSource ID="ComisionistasClienteDataSource" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
                                            ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
                                            SelectCommand="SELECT cc.*, CONCAT(c.nombre, &quot; &quot;, c.apellidos) as nombre 
FROM AgroExport.clientes_comisionistas as cc LEFT JOIN AgroExport.comisionistas as c ON c.ID=cc.comisionistaID
WHERE cc.clienteID=@clienteID AND cc.deleted=0"
                                            InsertCommand="INSERT INTO AgroExport.clientes_comisionistas (clienteID, comisionistaID, notas)
                                        VALUES (?, ?, ?)"
                                            DeleteCommand="UPDATE AgroExport.clientes_comisionistas SET deleted=1 WHERE ID=@ID">

                                        <SelectParameters>
                                            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int16" />
                                        </SelectParameters>
                                        <InsertParameters>
                                            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int16" />
                                            <asp:Parameter Name="nombre" Type="Int16" />
                                            <asp:Parameter Name="notas" Type="String" />
                                        </InsertParameters>

                                    </asp:SqlDataSource>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                    </TabPages>
                </dx:ASPxPageControl>
            </DetailRow>
        </Templates>
    </dx:ASPxGridView>
    <dx:ASPxGlobalEvents ID="ge" runat="server">
        <ClientSideEvents ControlsInitialized="OnControlsInitializated" />
    </dx:ASPxGlobalEvents>
    <asp:SqlDataSource ID="UsuariosDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>"
            ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>"
            SelectCommand="SELECT * FROM AgroExport.clientes WHERE deleted=0"
            DeleteCommand="UPDATE AgroExport.clientes SET deleted=1 WHERE ID=@ID"
            InsertCommand="INSERT INTO AgroExport.clientes (nombre, cif, tlf_fijo, fax, movil, email, direccion, cp, ciudad, localidad, pais, notas, rapple, contacto, web, iva, hasIVA)
                                                    VALUES (@nombre, @cif, @tlf_fijo, @fax, @movil, @email, @direccion, @cp, @ciudad, @localidad, @pais, @notas, @rapple, @contacto, @web, @iva, @hasIVA)"
            UpdateCommand="UPDATE AgroExport.clientes SET nombre=@nombre, 
                                                          cif=@cif,
                                                          tlf_fijo=@tlf_fijo,
                                                          fax=@fax,
                                                          movil=@movil,
                                                          email=@email,
                                                          direccion=@direccion,
                                                          cp=@cp,
                                                          ciudad=@ciudad,
                                                          localidad=@localidad,
                                                          pais=@pais,
                                                          notas=@notas,
                                                          rapple=@rapple,
                                                          contacto=@contacto,
                                                          web=@web,
                                                          iva=@iva,
                                                          hasIVA=@hasIVA
                           WHERE ID=@ID">

        <UpdateParameters>
            <asp:FormParameter Name="nombre" Type="String" FormField="nombre" />
            <asp:FormParameter Name="cif" Type="String" FormField="cif" />
            <asp:FormParameter Name="tlf_fijo" Type="String" FormField="tlf_fijo" />
            <asp:FormParameter Name="fax" Type="String" FormField="fax" />
            <asp:FormParameter Name="movil" Type="String" FormField="movil" />
            <asp:FormParameter Name="email" Type="String" FormField="email" />
            <asp:FormParameter Name="direccion" Type="String" FormField="direccion" />
            <asp:FormParameter Name="cp" Type="String" FormField="cp" />
            <asp:FormParameter Name="ciudad" Type="String" FormField="ciudad" />
            <asp:FormParameter Name="localidad" Type="String" FormField="localidad" />
            <asp:FormParameter Name="pais" Type="String" FormField="pais" />
            <asp:FormParameter Name="notas" Type="String" FormField="notas" />
            <asp:FormParameter Name="rapple" Type="String" FormField="rapple" />
            <asp:FormParameter Name="contacto" Type="String" FormField="contacto" />
            <asp:FormParameter Name="web" Type="String" FormField="web" />
            <asp:FormParameter Name="iva" Type="String" FormField="iva" />
            <asp:FormParameter Name="hasIVA" Type="Boolean" FormField="hasIVA" />
        </UpdateParameters>
        <InsertParameters>
            <asp:FormParameter Name="nombre" Type="String" FormField="nombre" />
            <asp:FormParameter Name="cif" Type="String" FormField="cif" />
            <asp:FormParameter Name="tlf_fijo" Type="String" FormField="tlf_fijo" />
            <asp:FormParameter Name="fax" Type="String" FormField="fax" />
            <asp:FormParameter Name="movil" Type="String" FormField="movil" />
            <asp:FormParameter Name="email" Type="String" FormField="email" />
            <asp:FormParameter Name="direccion" Type="String" FormField="direccion" />
            <asp:FormParameter Name="cp" Type="String" FormField="cp" />
            <asp:FormParameter Name="ciudad" Type="String" FormField="ciudad" />
            <asp:FormParameter Name="localidad" Type="String" FormField="localidad" />
            <asp:FormParameter Name="pais" Type="String" FormField="pais" />
            <asp:FormParameter Name="notas" Type="String" FormField="notas" />
            <asp:FormParameter Name="rapple" Type="String" FormField="rapple" />
            <asp:FormParameter Name="contacto" Type="String" FormField="contacto" />
            <asp:FormParameter Name="web" Type="String" FormField="web" />
            <asp:FormParameter Name="iva" Type="String" FormField="iva" />
            <asp:FormParameter Name="hasIVA" Type="Boolean" FormField="hasIVA" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="TelefonosClientesDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM AgroExport.clientes_moviles WHERE clienteID=@clienteID AND deleted=0"
            InsertCommand="INSERT INTO AgroExport.clientes_moviles (clienteID, movil, tipo, notas) VALUES (?, ?, ?, ?)"
            DeleteCommand="UPDATE AgroExport.clientes_moviles SET deleted=1 WHERE ID=@ID">

        <SelectParameters>
            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int16" />
        </SelectParameters>
        <InsertParameters>
            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int16" />
            <asp:Parameter Name="movil" Type="String" />
            <asp:Parameter Name="tipo" Type="Int16" />
            <asp:Parameter Name="notas" Type="String" />
        </InsertParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="EmailsDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>"
            ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM AgroExport.clientes_emails WHERE clienteID=@clienteID AND deleted=0"
            InsertCommand="INSERT INTO AgroExport.clientes_emails (clienteID, email, notas) VALUES (?, ?, ?)"
            DeleteCommand="UPDATE AgroExport.clientes_emails SET deleted=1 WHERE ID=@ID">

        <SelectParameters>
            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int16" />
        </SelectParameters>
        <InsertParameters>
            <asp:SessionParameter Name="clienteID" SessionField="clienteID" Type="Int16" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="notas" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="DestinosDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
                SelectCommand="SELECT ID, destino FROM AgroExport.destinos WHERE deleted=0"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="ComisionistasDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" SelectCommand="SELECT ID, CONCAT(nombre, &quot; &quot;, apellidos) as nombre FROM AgroExport.comisionistas WHERE deleted=0"></asp:SqlDataSource>
    <asp:SqlDataSource ID="TipoPaletDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM AgroExport.tipo_palet WHERE deleted=0"></asp:SqlDataSource>

    <asp:XmlDataSource ID="XMLTipoTelefonosDataSource" runat="server" DataFile="~/App_Data/XMLTipoTelefonos.xml" XPath="tipos/item"></asp:XmlDataSource>
</asp:Content>
