/**
 * Created by ivanq on 1/3/2018.
 */


var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http) {

    $scope.refreshCart = function(cartId){
        $http.get('/eShop/rest/cart/'+$scope.cartId).success(function (data) {
            $scope.cart = data;
        });
    };

    $scope.clearCart = function (){
        $http.delete('/eShop/rest/cart/'+$scope.cartId).success($scope.refreshCart($scope.cartId));
    };

    $scope.initCartId = function (cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId){
        $http.put('/eShop/rest/cart/add/'+productId).success(function(data){
            $scope.refreshCart($http.get('/eShop/rest/cart/cartId'));
            alert("Product successufully added to the cart!");
        });
    };

    $scope.removeFromCart = function (productId){
        $http.put('/eShop/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart($http.get('/eShop/rest/cart/cartId'));
        });
    };

});