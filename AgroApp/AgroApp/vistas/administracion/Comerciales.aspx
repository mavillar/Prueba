<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="Comerciales.aspx.cs" Inherits="AgroApp.Formulario_web14" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ComercialesDataSource" KeyFieldName="ID" Width="100%" Caption="TABLA DE COMISIONISTAS">
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" Caption="Acciones" ShowClearFilterButton="True" Width="10%">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Nombre" FieldName="nombre" VisibleIndex="2" Width="20%">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Telefono" FieldName="telefono" VisibleIndex="4" Width="10%">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Correo Electrónico" FieldName="email" VisibleIndex="5" Width="40%">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn Caption="Activo" FieldName="activo" VisibleIndex="6" Width="10%">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="deleted" Visible="False" VisibleIndex="7">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataComboBoxColumn Caption="Clase" FieldName="tipo_comercial" VisibleIndex="3" Width="15%">
                <PropertiesComboBox DataSourceID="XmlComercialesDataSource" TextField="clase" ValueField="ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <SettingsPager Visible="False">
        </SettingsPager>
        <Settings ShowFilterRow="True" />
        <SettingsCommandButton>
            <EditButton ButtonType="Image">
                <Image IconID="mail_editcontact_16x16">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image">
                <Image IconID="actions_deletelist_16x16">
                </Image>
            </DeleteButton>
        </SettingsCommandButton>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="ComercialesDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM AgroExport.comerciales WHERE deleted=0"
            InsertCommand="INSERT INTO AgroExport.comerciales (tipo_comercial, nombre, telefono, email, activo)
                            VALUES (?, ?, ?, ?, ?)"
            UpdateCommand="UPDATE AgroExport.comerciales SET tipo_comercial=@tipo_comercial, nombre=@nombre, telefono=@telefono, email=@email, activo=@email WHERE ID=@ID"
            DeleteCommand="UPDATE AgroExport.comerciales SET deleted=1 WHERE ID=@ID">

        <UpdateParameters>
            <asp:Parameter Name="tipo_comercial" Type="Int16" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="activo" Type="Int16" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="tipo_comercial" Type="Int16" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="activo" Type="Int16" />
        </InsertParameters>

    </asp:SqlDataSource>
    <asp:XmlDataSource ID="XmlComercialesDataSource" runat="server" DataFile="~/App_Data/XMLClasesComerciales.xml" XPath="clases/item"></asp:XmlDataSource>
</asp:Content>
