<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="Comisionistas.aspx.cs" Inherits="AgroApp.Formulario_web15" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="ComisionistasGridView" runat="server" AutoGenerateColumns="False" ClientInstanceName="ComisionistasGridView" DataSourceID="ComisionistasDataSource" KeyFieldName="ID" Width="100%" Theme="Office2003Silver">
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="10%">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Nombre" FieldName="nombre" VisibleIndex="2" Width="10%">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Apellidos" FieldName="apellidos" Visible="False" VisibleIndex="3">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Email" FieldName="email" VisibleIndex="4" Width="30%">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Telefono" FieldName="telefono" VisibleIndex="5" Width="10%">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="direccion" Visible="False" VisibleIndex="6">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="cp" Visible="False" VisibleIndex="7">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ciudad" Visible="False" VisibleIndex="8">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="pais" Visible="False" VisibleIndex="9">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Nombre Empresa" FieldName="nombre_empresa" VisibleIndex="12" Width="30%">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="CIF Empresa" FieldName="cif_empresa" VisibleIndex="13" Width="10%">
                <EditFormSettings Visible="True" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="deleted" Visible="False" VisibleIndex="14">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataMemoColumn FieldName="notas" Visible="False" VisibleIndex="11">
            </dx:GridViewDataMemoColumn>
        </Columns>
        <SettingsPager Visible="False" Mode="ShowAllRecords">
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
    <asp:SqlDataSource ID="ComisionistasDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM AgroExport.comisionistas WHERE deleted=0"
        InsertCommand="INSERT INTO AgroExport.comisionistas (nombre, apellidos, email, telefono, direccion, cp, ciudad, pais, notas, nombre_empresa, cif_empresa)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
        UpdateCommand="UPDATE AgroExport.comisionistas 
                        SET nombre=@nombre, apellidos=@apellidos, email=@email, telefono=@telefono, direccion=@direccion, cp=@cp, ciudad=@ciudad, pais=@pais, notas=@notas, nombre_empresa=@nombre_empresa, cif_empresa=@cif_empresa
                        WHERE ID=@ID"
        DeleteCommand="UPDATE AgroExport.comisionistas SET deleted=1 WHERE ID=@ID">

        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="cp" Type="String" />
            <asp:Parameter Name="ciudad" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="notas" Type="String" />
            <asp:Parameter Name="nombre_empresa" Type="String" />
            <asp:Parameter Name="cif_empresa" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="cp" Type="String" />
            <asp:Parameter Name="ciudad" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="notas" Type="String" />
            <asp:Parameter Name="nombre_empresa" Type="String" />
            <asp:Parameter Name="cif_empresa" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
