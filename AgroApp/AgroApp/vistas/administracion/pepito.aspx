<%@ Page Title="" Language="C#" MasterPageFile="~/Root.Master" AutoEventWireup="true" CodeBehind="pepito.aspx.cs" Inherits="AgroApp.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ASPxButton"></dx:ASPxButton>
    <dx:ASPxListBox ID="ASPxListBox1" runat="server" ValueType="System.String">
    </dx:ASPxListBox>
</asp:Content>
