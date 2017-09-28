<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavigationCtrl.ascx.cs" Inherits="ClubArcada.Apps.Web.Controls.NavigationCtrl" %>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">WebSiteName</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
            </ul>
            <ul runat="server" id="ulParent" class="nav navbar-nav navbar-right">
                <li runat="server" id="hlkHome"><a href="../Pages/Home.aspx"><asp:Literal ID="Literal1" runat="server" Text="<% $Resources:Resources,home %>"/></a></li>
                <li runat="server" id="hlkTournaments" class=""><a href="../Pages/Tournaments.aspx"><asp:Literal ID="Literal2" runat="server" Text="<% $Resources:Resources,tournaments %>"/></a></li>
                <li runat="server" id="hlkLvpt" class=""><a href="#"><asp:Literal ID="Literal10" runat="server" Text="LVPT XX."/></a></li>
                <li runat="server" id="hlkCgl" class=""><a href="#"><asp:Literal ID="Literal11" runat="server" Text="CGL Vol.15"/></a></li>
                <li runat="server" id="hlkJackpot" class=""><a href="#"><asp:Literal ID="Literal8" runat="server" Text="Poker Jackpot"/></a></li>
                <li runat="server" id="hlkAccount" class="pulseRed"><a href="#"><asp:Literal ID="Literal3" runat="server" Text="<% $Resources:Resources,player_account %>"/></a></li>
                <li runat="server" id="hlkRuffle" class=""><a href="../Pages/Ruffle.aspx"><asp:Literal ID="Literal4" runat="server" Text="<% $Resources:Resources,ruffle %>"/></a></li>
                <li runat="server" id="hlkBonus" class=""><a href="#"><asp:Literal ID="Literal9" runat="server" Text="Bonus"/></a></li>
                <li runat="server" id="hlkGallery" class=""><a href="#"><asp:Literal ID="Literal5" runat="server" Text="<% $Resources:Resources,photogallery %>"/></a></li>
                <li runat="server" id="hlkRules" class=""><a href="#"><asp:Literal ID="Literal6" runat="server" Text="<% $Resources:Resources,rules %>"/></a></li>

            </ul>
        </div>
    </div>
</nav>
