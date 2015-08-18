var app = angular.module('app', ['ngRoute', 'ngResource']);

app.config(['$routeProvider',
  function($routeProvider) {

    $routeProvider

    .when('/course', {
      templateUrl: 'partials/course/courses.html',
      controller: 'CoursesController'
    })

    .when('/course/:id', {
      templateUrl: 'partials/course/course.html',
      controller: 'CourseController',
    });
    //
    // .otherwise({
    //   redirectTo: function(current, path, search) {
    //     if(search.goto) {
    //       return "/" + search.goto
    //     } else {
    //       return "/index.html"
    //     }
    //   }
    // });

}]);
