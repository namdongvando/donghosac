app.controller("mnewsController", mnewsController);
function mnewsController($scope, $rootScope, $http, $routeParams) {

    $scope._pagesID = "";
    $scope.mnewsInit = function () {

    }

    $http.get("/mnews/getPages").then(function (res) {
        $scope.PagesByType = res.data;
    })

    $scope.clikGetNewsByPage = function (idPa) {
        $http.get("/mnews/getNewsByPages/" + idPa).then(function (res) {
            $scope.newsByPage = res.data;
            $scope._pagesID = idPa;
        })
    }

}