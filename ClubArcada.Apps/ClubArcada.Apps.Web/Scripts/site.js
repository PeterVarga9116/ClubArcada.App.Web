var app = angular.module("CAapp", []);


app.controller("tournamentCtrl", ['$scope', '$location', function ($scope, $location) {
    $scope.item = null;

    $scope.getItem = function () {

        console.log("STARTED");

        param = $scope.getParams("id");
        console.log("param", param);
        $.ajax({
            method: "POST",
            url: "../WebServices.asmx/GetTournamentById",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({ id: param }),
            success: function (data) {
                $scope.item = JSON.parse(data.d);
                $scope.$apply();
                console.log($scope.item);
            },
            error: function (a, b, c) {
                console.log("error", c);
            }
        })
    };

    $scope.getParams = function (p) {
        var sPageURL = window.location.search.substring(1);
        var sURLVariables = sPageURL.split('&');
        for (var i = 0; i < sURLVariables.length; i++) {
            var sParameterName = sURLVariables[i].split('=');
            if (sParameterName[0] == p) {
                return sParameterName[1];
            }
        }
    };

    $(function () {

        $scope.getItem();
    });
}]);

app.controller("itemsLive", function ($scope) {
    $scope.items = [];
});

app.controller("itemsUpcoming", function ($scope) {
    $scope.items = [];

    $scope.renderCountdown = function () {

        $scope.items.forEach(function () {

            $.each($scope.items, function (i, e) {
                var elm = $("." + e.ID);

                elm.countdown(new Date(e.D), function (event) {

                    if (parseInt(event.strftime('%D')) > 0)
                        elm.text(event.strftime('%-D days %H:%M:%S'));
                    else
                        elm.text(event.strftime('%H:%M:%S'));
                });
            });
        });
    };

    $scope.getItems = function () {

        $.ajax({
            method: "POST",
            url: "../WebServices.asmx/GetUpcomingGames",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                $scope.items = JSON.parse(data.d);
                $scope.$apply();
                $scope.renderCountdown();
            },
            error: function (a, b, c) {
                console.log("error", c);
            }
        })
    };

    $(function () {

        $scope.getItems();
    });
});

app.controller("itemsRecent", function ($scope) {
    $scope.items = [];

    $scope.getItems = function () {

        $.ajax({
            method: "POST",
            url: "../WebServices.asmx/GetRecetGames",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                $scope.items = JSON.parse(data.d);
                $scope.$apply();
            },
            error: function (a, b, c) {
                console.log("error", c);
            }
        })
    };

    $(function () {

        $scope.getItems();
    });
});

