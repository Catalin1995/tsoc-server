var app = angular.module('app', ['ngRoute', 'ngResource']);

app.config(['$locationProvider', function($locationProvider) {
  $locationProvider.html5Mode(true);
}]);

app.config(['$routeProvider',
  function($routeProvider) {

    $routeProvider

    .when('/students', {
      templateUrl: 'partials/student/students.html',
      controller: 'StudentsController'
    })

    .when('/students/:id', {
      templateUrl: 'partials/student/student.html',
      controller: 'StudentController'
    })

    .when('/mentors', {
      templateUrl: 'partials/mentor/mentors.html',
      controller: 'MentorsController'
    })

    .when('/mentors/:id', {
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
          return "/students"
        }
      }
    });

}]);
