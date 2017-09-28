var app = angular.module("ca_app", []);

app.controller("tournamentsCtrl", function ($scope) {
    $scope.items = [];

    $scope.getItems = function () {
        ShowLoading();
        $.ajax({
            method: "POST",
            url: "../Services.asmx/GetTournaments",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                $scope.items = JSON.parse(data.d);
                $scope.$apply();
                HideLoading();
                console.log("data", $scope.items);
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

app.controller("tournamentCtrl", ['$scope', '$location', '$interval', function ($scope, $location, $interval) {
    $scope.item = null;
    $scope.tickets = [];

    $scope.bank = null;
    $scope.chipcount = null

    $scope.getTickets = function () {
        $.ajax({
            method: "POST",
            url: "../Services.asmx/GetTicketsByTournamentId",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({ id: $scope.getParams("id") }),
            success: function (data) {
                $scope.tickets = JSON.parse(data.d);

                $scope.bank = "€" + $scope.sum($scope.tickets, "Amount");
                $scope.chipcount = $scope.sum($scope.tickets, "Stack");

                $scope.$apply();
            },
            error: function (a, b, c) {
                console.log("error", c);
            }
        })
    };

    $scope.getItems = function () {

        ShowLoading();

        $.ajax({
            method: "POST",
            url: "../Services.asmx/GetTournamentById",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({ id: $scope.getParams("id") }),
            success: function (data) {
                $scope.item = JSON.parse(data.d);
                $scope.$apply();
                HideLoading();

                console.log("data", $scope.item);
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

    $scope.sum = function (obj, key) {
        var sum = 0;
        $.each(obj, function (i, e) {
            sum = sum + e[key];
        });
        return sum;
    };

    $(function () {
        $scope.getItems();
        $scope.getTickets();
        $interval(function () {
            $scope.getItems();
            $scope.getTickets();
        }, 15000);
    });
}]);

app.controller("requestCtrl", ['$scope', '$location', '$interval', function ($scope, $location, $interval) {
    $scope.items = [];

    $scope.getItems = function () {

        ShowLoading();

        $.ajax({
            method: "POST",
            url: "../Services.asmx/GetRequests",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                $scope.items = JSON.parse(data.d);
                $scope.$apply();
                HideLoading();
            },
            error: function (a, b, c) {
                console.log("error", c);
            }
        })
    };

    $scope.showLoading = function () {
        Command: toastr["info"]("Loading...")
        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "100000",
            "extendedTimeOut": "0",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }
    }

    $(function () {
        $scope.getItems();
        $interval(function () {
            $scope.getItems();
        }, 20000);
    });
}]);

app.controller("cashStateCtrl", ['$scope', '$location', '$interval', function ($scope, $location, $interval) {
    $scope.items = [];

    $scope.getItems = function () {

        ShowLoading();

        $.ajax({
            method: "POST",
            url: "../Services.asmx/GetCashStates",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                $scope.items = JSON.parse(data.d);
                $scope.$apply();
                HideLoading();
            },
            error: function (a, b, c) {
                console.log("error", c);
                HideLoading();
            }
        })
    };

    $(function () {
        $scope.getItems();
        $interval(function () {
            $scope.getItems();
        }, 10000);
    });
}]);

app.controller("usersCtrl", ['$scope', '$location', '$interval', function ($scope, $location, $interval) {
    $scope.items = [];

    $scope.xhr = null;

    $scope.getItems = function (searchString) {

        if ($scope.xhr)
            $scope.xhr.abort();

        if (searchString && searchString.length > 3) {
            ShowLoading();
            $scope.xhr = $.ajax({
                async: true,
                method: "POST",
                url: "../Services.asmx/GetUsers",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({ "searchString": searchString }),
                success: function (data) {
                    var result = JSON.parse(data.d);

                    console.log(searchString);

                    if (searchString && searchString.length > 3) {
                        $scope.items = result;
                        $scope.$apply();
                    }
                    else {
                        $scope.items = [];
                        $scope.$apply();
                    }

                    HideLoading();
                },
                error: function (a, b, c) {
                    console.log("error", c);
                    HideLoading();
                }
            })
        }
    };

    $(function () {
        //$scope.getItems();

        $(".txtUserSearch").keyup(function () {
            $scope.getItems($(".txtUserSearch").val());
        });
    });
}]);

app.controller("userCtrl", ['$scope', '$location', '$interval', function ($scope, $location, $interval) {
    $scope.item = null;

    $scope.getItems = function () {

        ShowLoading();

        $.ajax({
            method: "POST",
            url: "../Services.asmx/GetUserById",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({ id: $scope.getParams("id") }),
            success: function (data) {
                $scope.item = JSON.parse(data.d);
                $scope.$apply();
                HideLoading();

                console.log("data", $scope.item);
            },
            error: function (a, b, c) {
                console.log("error", c);
                HideLoading();
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
        $scope.getItems();
        //$interval(function () {
        //    $scope.getItems();
        //    $scope.getTickets();
        //}, 10000);
    });
}]);

function ShowLoading() {

    $('.ajaxLoader').show();
}
function HideLoading() {

    $('.ajaxLoader').fadeOut("500");
}
