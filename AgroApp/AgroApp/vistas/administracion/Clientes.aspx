<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="AgroApp.Formulario_web11" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGlobalEvents" tagprefix="dx" %>

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
                     Width="100%" OnCustomErrorText="clientesGridView_CustomErrorText">
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
        <Settings ShowFilterRow="True" ShowGroupPanel="True" VerticalScrollableHeight="500" VerticalScrollBarMode="Auto" />
        <SettingsLoadingPanel Text="Cargando Tabla de Clientes...&amp;hellip;" />
        <SettingsPager PageSize="25" />
        <ClientSideEvents Init="OnInit" EndCallback="OnEndCallBack" />
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
</asp:Content>
