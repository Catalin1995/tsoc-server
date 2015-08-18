var app = angular.module('app', ['ngRoute', 'ngResource']);

app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider

    .when('/main', {
      controller: "MainPageController"
    });

  }]);
