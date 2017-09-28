<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Requests.aspx.cs" Inherits="ClubArcada.Admin.Win.Pages.Requests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cplHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cplNav" runat="server">
    <uc:NavigationCtrl runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cplMain" runat="server">
    <div ng-controller="requestCtrl">
        <ol class="breadcrumb">
            <li><a href="Home.aspx">Home</a></li>
            <li class="active"><a href="#">Requests</a></li>
        </ol>

        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-striped">
                    <thead>
                        <tr>
                            <th class="thTable">Date</th>
                            <th>Item</th>
                            <th class="thTable">Completed by</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="i in items">
                            <td ng-class="{'requestUnresolved': !i.UserCompleted, 'requestResolved': i.UserCompleted}" ><b>{{ i.UserCreated }}</b><br/>{{ i.DCF }}</td>
                            <td>{{ i.Description }}</td>
                            <td><b>{{ i.UserCompleted }}</b><br/>{{ i.DRF }}</td>
  
                        </tr>


                    </tbody>
                </table>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
