<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="ClubArcada.Admin.Win.Pages.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cplNav" runat="server">
    <uc:NavigationCtrl runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cplMain" runat="server">
    <ol class="breadcrumb">
        <li><a href="Home.aspx">Home</a></li>
        <li class="active"><a href="#">Users</a></li>
    </ol>

    <div ng-controller="usersCtrl" class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="form-group">
                    <label for="email">SEARCH</label>
                    <input autocomplete="off" type="email" class="form-control txtUserSearch" id="email"/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th style="width:20px;"></th>
                            <th>Name</th>
                            <th>Nick</th>
                            <th>Phone</th>
                            <th style="width:20px;"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="height:20px;" ng-repeat="i in items">
                            <td><div ng-show="i.IV" class="icon_user_verified_16x16"></div></td>
                            <td><a href="User.aspx?id={{ i.ID }}">{{ i.PN }}</a></td>
                            <td>{{ i.N }}</td>
                            <td>{{ i.P }}</td>
                            <td><div ng-show="i.IP" class="icon_personal_16x16"></div></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
