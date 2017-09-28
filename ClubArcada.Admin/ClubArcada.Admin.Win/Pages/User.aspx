<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="ClubArcada.Admin.Win.Pages.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cplNav" runat="server">
    <uc:NavigationCtrl runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cplMain" runat="server">

    <div ng-controller="userCtrl">
        <ol class="breadcrumb">
            <li><a href="Users.aspx">Users</a></li>
            <li class="active"><a href="#">{{ item.FN }} {{ item.LN }} ~ {{ item.NN }}</a></li>
        </ol>

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-6 ca-form section">
                    <div class="divSectionTitle">
                        Details
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="txtFirstName">first name</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtFirstName" ng-model="item.FN" />
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="txtLastName">last name</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtLastName" ng-model="item.LN" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="txtNickName">nickname</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtNickName" ng-model="item.NN" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="txtBirthId">Birth id</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtBirthId" ng-model="item.BI" />
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="txtLastName">Personal id</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtLastName" ng-model="item.CI" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="txtEmail">email</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtEmail" ng-model="item.EM" />
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="txtPhone">phone</label>
                                <input disabled="disabled" type="text" class="form-control" id="txtPhone" ng-model="item.PN" />
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-md-6 section">
                    <div class="divSectionTitle">
                        Tournament History
                    </div>
                    <div class="divSectionTitle">
                        Cash Game History
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
