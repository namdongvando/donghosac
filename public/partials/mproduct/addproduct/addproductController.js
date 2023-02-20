app.controller("addproductController", addproductController);
function addproductController($scope, $rootScope, $http, $routeParams) {

    $http.get("/backend/getCategorys").then(function (res) {
        $scope._ListCategory = res.data;
    });
}