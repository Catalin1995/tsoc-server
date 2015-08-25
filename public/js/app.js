var app = angular.module('app', ['ngRoute', 'ngResource']);

app.config(['$locationProvider', function($locationProvider) {
  $locationProvider.html5Mode(true);
}]);

app.config(['$routeProvider',
  function($routeProvider) {

    $routeProvider

    .when('/student', {
      templateUrl: 'partials/student/students.html',
      controller: 'StudentsController'
    })

    .when('/student/:id', {
      templateUrl: 'partials/student/student.html',
      controller: 'StudentController'
    })

    .when('/mentor', {
      templateUrl: 'partials/mentor/mentors.html',
      controller: 'MentorsController'
    })

    .when('/mentor/:id', {
      templateUrl: 'partials/mentor/mentor.html',
      controller: 'MentorController'
    })

    .when('/main', {
      controller: "MainPageController"
    })

    .otherwise({
      redirectTo: function(current, path, search) {
        if(search.goto) {
          return "/" + search.goto
        } else {
          return "/student"
        }
      }
    });

}]);
