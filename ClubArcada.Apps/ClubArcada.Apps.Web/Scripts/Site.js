
$(document).ready(function () {

    $('.parallax-window').parallax({ imageSrc: 'http://localhost/ClubArcada.Apps.Web/Content/images/px01.jpg' });

    SetWelcomeHeignt();
});

$(window).resize(function () {
    SetWelcomeHeignt();
});


$(window).scroll(function (event) {
    SetWelcomeHeignt();
    SetStickyHeader();

    var window = $('window');
    var offset = $(document).scrollTop();


    if ($(document).scrollTop() > 50)
    {
        $('nav').addClass('small');
    }
    else
    {
        $('.navbar').removeClass('small');
    }
});

function SetWelcomeHeignt() {
    var section = $('#sc-welcome');
    var height = $(window).height();
    section.css('height', height + "px");
};

function SetStickyHeader()
{
   
};

var app = angular.module("ca-app", []);

app.controller("ctrl-welcome", function ($scope) {
    $scope.veryEvent = [];
    $scope.upcomingEvents = [];
    $scope.recentEvents = [];
    $scope.banners = [];


    $scope.loadUpcomingEvents = function () {
        $.ajax({
            url: "Home/GetUpcomingEvents",
            success: function (data) {
                $scope.upcomingEvents = data;
                $scope.$apply();

                console.log($scope.upcomingEvents);
            }
        });
    };

    $scope.loadRecentEvents = function () {
        $.ajax({
            url: "Home/GetLatestEvents",
            success: function (data) {
                $scope.recentEvents = data;
                $scope.$apply();
            }
        });
    };

    $scope.loadVeryEvent = function () {
        $.ajax({
            url: "Home/GetVeryAction",
            success: function (data) {
                $scope.veryEvent = data;
                $scope.$apply();
            }
        });
    };

    $scope.loadBanners = function () {

        console.log("Banners start");

        $.ajax({
            url: "Home/GetBanners",
            success: function (data) {
               
                $scope.banners = data;
                $scope.$apply();

                var thumbs = $('#thumbnails').slippry({
                    slippryWrapper: '<div class="slippry_box thumbnails" />',
                    pager: false,
                    auto: true,
                    transition: 'horizontal',
                    kenZoom: 200,
                    speed: 1000,
                    onSlideBefore: function (el, index_old, index_new) {
                        jQuery('.thumbs a img').removeClass('active');
                        jQuery('img', jQuery('.thumbs a')[index_new]).addClass('active');
                    }
                });

                $('.thumbs a').click(function () {
                    thumbs.goToSlide($(this).data('slide'));
                    return false;
                });
            }
        });
    };

    $scope.SetBackground = function (color) {
        var borderColor = color[2];
        var backTopColor = color[1];
        var backBottomColor = color[0];
        return {
            border: "solid 1px #" + borderColor,
            background: "#" + backTopColor,
            background: "-moz-linear-gradient(top,  #" + backTopColor + " 0%, #" + backBottomColor + " 100%)",
            background: "-webkit-linear-gradient(top,  #" + backTopColor + " 0%,#" + backBottomColor + " 100%)",
            background: "linear-gradient(to bottom,  #" + backTopColor + " 0%,#" + backBottomColor + " 100%)",
            filter: "progid:DXImageTransform.Microsoft.gradient( startColorstr='#" + backTopColor + "', endColorstr='#" + backBottomColor + "',GradientType=0 )"
        }
    };


    (function () {

        $scope.loadVeryEvent();
        $scope.loadRecentEvents();
        $scope.loadUpcomingEvents();
        $scope.loadBanners();
    })();

});