<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Tournaments.aspx.cs" Inherits="ClubArcada.Admin.Win.Pages.Tournaments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cplNav" runat="server">
    <uc:NavigationCtrl runat="server" />
    <ol class="breadcrumb">
        <li><a href="Home.aspx">Home</a></li>
        <li class="active"><a href="#">Tournaments</a></li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cplMain" runat="server">
    <div class="container" ng-controller="tournamentsCtrl">
        <div class="row">
            <div class="col-xs-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Name</th>
                            <th>Bank</th>
                            <th>Players</th>
                            <th>Entires</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="i in items">
                            <td>{{ i.DateString }}</td>
                            <td><a href="Tournament.aspx?id={{ i.Id }}">{{ i.Name }}</a></td>
                            <td>€{{ i.Bank }}</td>
                            <td>{{ i.PlayerCount }}</td>
                            <td>{{ i.EntryCount }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
