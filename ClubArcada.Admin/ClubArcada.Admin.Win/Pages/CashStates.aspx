<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="CashStates.aspx.cs" Inherits="ClubArcada.Admin.Win.Pages.CashStates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cplNav" runat="server">
    <uc:NavigationCtrl runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cplMain" runat="server">
    <ol class="breadcrumb">
        <li><a href="Home.aspx">Home</a></li>
        <li class="active"><a href="#">Cash States</a></li>
    </ol>

    <div ng-controller="cashStateCtrl" class="container">
        <div class="row">
            <div class="col-xs-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Income</th>
                            <th>Rake</th>
                            <th>Jackpot</th>
                            <th>Saldo</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="i in items">
                            <td ng-class="{'requestUnresolved': i.S === 0, 'requestResolved': i.S === 1}">{{ i.D }}</td>
                            <td>{{ i.I }}</td>
                            <td>{{ i.R }}</td>
                            <td>{{ i.J }}</td>
                            <td ng-class="{'requestUnresolved': i.SA != '€ 0.00'}">{{ i.SA }}</td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
