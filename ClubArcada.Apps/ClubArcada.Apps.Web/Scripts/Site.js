
$(document).ready(function () {

    SetWelcomeHeignt();
});

$(window).resize(function () {
    SetWelcomeHeignt();
});


$(window).scroll(function () {
    SetWelcomeHeignt();
});



function SetWelcomeHeignt() {
    var section = $('#sc-welcome');
    var height = $(window).height();
    section.css('height', height + "px");
};



var app = angular.module("ca-app", []);

app.controller("ctrl-welcome", function ($scope) {
    $scope.veryEvent = ["Milk", "Bread", "Cheese"];


    $scope.loadVeryEvent = function () {
        $.ajax({
            url: "Home/GetVeryAction",
            success: function (data) {
                console.log(data);
                $scope.veryEvent = data;
            }
        });
    };


    (function () {

        $scope.loadVeryEvent();
    })();

});