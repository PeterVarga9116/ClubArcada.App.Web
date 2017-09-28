<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ClubArcada.Apps.Web.Pages.Home" %>
<%@ Register TagName="NavigationCtrl" TagPrefix="uc" Src="~/Controls/NavigationCtrl.ascx" %>
<%@ Register TagName="LiveInfoCtrl" TagPrefix="uc" Src="~/Controls/LiveInfoCtrl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cplNavigation" runat="server">
    <uc:NavigationCtrl runat="server" Selection="Home" ID="navigationCtrl" />
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">

    <div class="row">
        <div class="col-sm-12  col-md-9">
            <asp:Button runat="server" Text="SK" ID="btnCookieTest" OnClick="btnCookieTest_Click" />
            <asp:Button runat="server" Text="EN" ID="btn2" OnClick="btn2_Click" />
        </div>
        <div class="col-sm-12 col-md-3">
            <uc:LiveInfoCtrl runat="Server" ID="ucLiveInfo" />
            
        </div>
    </div>





</asp:Content>
