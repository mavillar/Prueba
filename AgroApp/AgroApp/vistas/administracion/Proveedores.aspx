<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="AgroApp.Formulario_web1" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <dx:ASPxLabel ID="l_apodo" runat="server" Text="Apodo">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="apodo" runat="server" Width="170px">
    </dx:ASPxTextBox>
    <br />
    <dx:ASPxLabel ID="l_password" runat="server" Text="Password">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="password" runat="server" Width="170px">
    </dx:ASPxTextBox>

    <br />
    <br />
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0">
        <TabPages>
            <dx:TabPage Name="tab1" Text="Pagina 1">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:ASPxTextBox ID="msg" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                        <br />
                        <dx:ASPxButton ID="bSend" runat="server" OnClick="bSend_Click" Text="Poner Título">
                        </dx:ASPxButton>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Name="tab2" Text="Pagina 2">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
    <br />
    <br />

    <dx:ASPxButton ID="bInsert" runat="server" Text="Insertar Usuario" OnClick="ASPxButton1_Click">
    </dx:ASPxButton>
    <asp:SqlDataSource ID="UserDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" 
        SelectCommand="select * from AgroExport.usuarios"></asp:SqlDataSource>



    <br />
    <br />
    <dx:ASPxLabel ID="lMsg" runat="server" Text="...">
    </dx:ASPxLabel>
    <br />



    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="UserDataSource" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
            <asp:BoundField DataField="apodo" HeaderText="apodo" SortExpression="apodo" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />



    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:AgroExportConnectionString %>" 
                    InsertCommand="new_user" InsertCommandType="StoredProcedure" 
                    ProviderName="<%$ ConnectionStrings:AgroExportConnectionString.ProviderName %>" OnInserted="SqlDataSource1_Inserted" >
        <InsertParameters>
            <asp:ControlParameter Name="ap" ControlID="apodo" Type="String" />
            <asp:ControlParameter Name="ps" ControlID="password" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>



</asp:Content>
