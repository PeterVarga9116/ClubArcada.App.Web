<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Tournament.aspx.cs" Inherits="ClubArcada.Admin.Win.Pages.Tournament" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cplNav" runat="server">
    <uc:NavigationCtrl runat="server" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cplMain" runat="server">
    <div ng-controller="tournamentCtrl">
        <ol class="breadcrumb">
            <li><a href="Tournaments.aspx">Tournaments</a></li>
            <li class="active"><a href="#">{{ item.Name }}</a></li>
        </ol>

        <div class="container">
            <div class="row">
                <%--DETAILS--%>
                <div class="col-xs-12 col-md-4 ca-form section">

                    <div class="divSectionTitle">
                        Details
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label for="txtName">name</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtName" ng-model="item.Name" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label for="txtDate">date</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtDate" ng-model="item.DateDisplayName" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="txtBank">bank</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtBank" ng-model="bank" />
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="txtBank">gtd</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtBank" ng-model="item.GTD" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group">
                                <label for="txtChipcount">chipcount</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtChipcount" ng-model="chipcount" />
                            </div>
                        </div>
                    </div>

                </div>

                <%--PLAYERS--%>
                <div class="col-xs-12 col-md-4">

                    <div class="divSectionTitle">
                        Players
                    </div>

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Id</th>
                                <th>1</th>
                                <th>2</th>
                                <th>3</th>
                                <th ng-show="item.SpecialAddonPrize > 0">Sp</th>
                                <th ng-show="item.IsLeague" style="text-align: center;">Bns</th>
                                <th ng-show="item.IsLeague">Pt</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="i in item.PlayersLight">
                                <td>{{ i.R }}.</td>
                                <td>
                                    <div class="divPlayerOnline" ng-show="i.S == 1"></div>
                                    <div class="divPlayerOffline" ng-show="i.S == 0"></div>
                                    {{ i.User.FN }}</td>

                                <td>{{ i.RNC + 1}}</td>
                                <td>{{ i.RBC ? i.RBC : "-"}}</td>

                                <td>{{ i.AOC ? i.AOC : "-"}}</td>
                                <td ng-show="item.SpecialAddonPrize > 0">{{ i.SP ? i.SP : "-"}}</td>
                                <td ng-show="item.IsLeague" style="text-align: center;">{{ i.B1 ? i.B1 : "-"}}/{{ i.B2 ? i.B2 : "-"}}/{{ i.B3 ? i.B3 : "-"}}</td>
                                <td ng-show="item.IsLeague">{{ i.P + i.BP }}</td>
                            </tr>


                        </tbody>
                    </table>

                </div>

                <%--TICKETS--%>
                <div class="col-xs-12 col-md-4">
                    <div class="divSectionTitle">
                        Tickets
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Nick</th>
                                <th>Amount</th>
                                <th>Stack</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="i in tickets">
                                <td>{{ i.DateCreatedFriendlyDateTime }}</td>
                                <td>{{ i.Nick }}</td>
                                <td>€{{ i.Amount }}</td>
                                <td>{{ i.Stack }}</td>
                            </tr>


                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
