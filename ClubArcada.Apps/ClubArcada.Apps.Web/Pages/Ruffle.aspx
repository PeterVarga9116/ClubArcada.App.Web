<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Ruffle.aspx.cs" Inherits="ClubArcada.Apps.Web.Pages.Ruffle" %>
<%@ Register TagName="NavigationCtrl" TagPrefix="uc" Src="~/Controls/NavigationCtrl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cplNavigation" runat="server">
    <uc:NavigationCtrl runat="server" Selection="Ruffle" ID="navigationCtrl" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

        <div class="row">
        <div class="col-sm-12 col-lg-9">


            <asp:TextBox CssClass="txtContent" TextMode="MultiLine" runat="server" ID="txtContent">

            </asp:TextBox>

        </div>
        <div class="col-sm-12 col-lg-3">

        </div>
    </div>
</asp:Content>
