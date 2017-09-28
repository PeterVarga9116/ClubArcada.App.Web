<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Tournament.aspx.cs" Inherits="ClubArcada.Apps.Web.Pages.Tournament" %>

<%@ Register TagName="NavigationCtrl" TagPrefix="uc" Src="~/Controls/NavigationCtrl.ascx" %>
<%@ Register TagName="LiveInfoCtrl" TagPrefix="uc" Src="~/Controls/LiveInfoCtrl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cplNavigation" runat="server">
    <uc:NavigationCtrl runat="server" Selection="Tournaments" ID="navigationCtrl" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">

    <div ng-controller="tournamentCtrl" ng-cloak>

        <div class="row" style="margin-bottom: 40px;">
            <div class="col-sm-12  col-md-9">

                <ol class="breadcrumb" style="border: 1px solid {{ item.ColorBorder }}; background: #000000; /* old browsers */
background: -moz-linear-gradient(top, {{ item.ColorDark }} 0%, {{ item.ColorLight}} 100%); /* ff3.6-15 */
background: -webkit-linear-gradient(top, {{ item.ColorDark }} 0%,{{ item.ColorLight}} 100%); /* chrome10-25,safari5.1-6 */
background: linear-gradient(to bottom, {{ item.ColorDark }} 0%,{{ item.ColorLight}} 100%); /* w3c, ie10+, ff16+, chrome26+, opera12+, safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='{{ item.ColorDark }}', endColorstr='{{ item.ColorLight}}',GradientType=0 ); /* ie6-9 */">
                    <li><a href="Tournaments.aspx">Tournaments</a></li>
                    <li class="active pulse">{{ item.DisplayName }}</li>
                </ol>

                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-md-7"></div>
                        <div class="col-sm-12 col-md-5">
                            <div>
                                <table class="table tableResults">
                                    <thead>
                                        <tr>
                                            <th style="width:30px;">#</th>
                                            <th>Nick</th>
                                            <th style="text-align:right;">Points</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr ng-repeat="i in item.PlayersLight">
                                            <td>{{ i.R }}.</td>
                                            <td>{{ i.User.N }}</td>
                                            <td style="text-align:right;">{{ i.P }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-3">
                <uc:LiveInfoCtrl runat="Server" ID="ucLiveInfo" />
            </div>
        </div>

    </div>
</asp:Content>
