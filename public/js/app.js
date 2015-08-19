var app = angular.module('app', ['ngRoute', 'ngResource']);

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

    .when('/course', {
      templateUrl: 'partials/course/courses.html',
      controller: 'CoursesController'
    })

    .when('/course/:id', {
      templateUrl: 'partials/course/course.html',
      controller: 'CourseController',
    })

    .otherwise({
      redirectTo: '/student'
    });

}]);
