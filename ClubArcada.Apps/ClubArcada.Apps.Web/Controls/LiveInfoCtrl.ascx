<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LiveInfoCtrl.ascx.cs" Inherits="ClubArcada.Apps.Web.Controls.LiveInfoCtrl" %>

<div class="sectionTitle">
    <asp:Literal ID="Literal2" runat="server" Text="<% $Resources:Resources,upcoming_tournaments %>" />
</div>
<div ng-controller="itemsUpcoming">

    <ul class="infoCover">
        <li class="container" ng-repeat="i in items" style="border: 1px solid {{ i.CB }}; background: #00b7ea; /* old browsers */
background: -moz-linear-gradient(top, {{ i.CD }} 0%, {{ i.CL}} 100%); /* ff3.6-15 */
background: -webkit-linear-gradient(top, {{ i.CD }} 0%,{{ i.CL}} 100%); /* chrome10-25,safari5.1-6 */
background: linear-gradient(to bottom, {{ i.CD }} 0%,{{ i.CL}} 100%); /* w3c, ie10+, ff16+, chrome26+, opera12+, safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='{{ i.CD }}', endColorstr='{{ i.CL}}',GradientType=0 ); /* ie6-9 */">

            <div class="row">
                <div style="font-weight: bold;" class="col-xs-7"><a class="linkTour" href="../Pages/Tournament.aspx?id={{ i.ID }}">{{ i.N }}</a></div>
                <div style="font-weight: bold; text-align: right;" class="col-xs-5  pulse">{{ i.GTD }}</div>
            </div>
            <div class="row">
                <div class="col-xs-6">{{ i.DS }}</div>
                <div style="text-align: right;" class="col-xs-6">
                    <div class="{{ i.ID}}"></div>
                </div>
            </div>

        </li>
    </ul>

</div>


<div class="sectionTitle">
    <asp:Literal ID="Literal1" runat="server" Text="<% $Resources:Resources,recent_tournaments %>" />
</div>
<div ng-controller="itemsRecent">

    <ul class="infoCover">
        <li class="container" ng-repeat="i in items" style="border: 1px solid {{ i.CB }}; background: #00b7ea; /* old browsers */
background: -moz-linear-gradient(top, {{ i.CD }} 0%, {{ i.CL}} 100%); /* ff3.6-15 */
background: -webkit-linear-gradient(top, {{ i.CD }} 0%,{{ i.CL}} 100%); /* chrome10-25,safari5.1-6 */
background: linear-gradient(to bottom, {{ i.CD }} 0%,{{ i.CL}} 100%); /* w3c, ie10+, ff16+, chrome26+, opera12+, safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='{{ i.CD }}', endColorstr='{{ i.CL}}',GradientType=0 ); /* ie6-9 */">

            <div class="row">
                <div style="font-weight: bold;" class="col-xs-7"><a class="linkTour" href="../Pages/Tournament.aspx?id={{ i.ID }}">{{ i.N }}</a></div>
                <div style="font-weight: bold; text-align: right;" class="col-xs-5  pulse">{{ i.GTD }}</div>
            </div>
            <div class="row">
                <div class="col-xs-5">{{ i.DS }}</div>
                <div style="text-align: right;" class="col-xs-7">{{ i.E }} / {{ i.B }}</div>
            </div>

        </li>
    </ul>

</div>
