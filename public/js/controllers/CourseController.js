app.controller('CourseController', function ($scope, $http, $routeParams) {

  $scope.course = {};

  $http.get('/api/course/'+$routeParams.id).success(function(data){
      $scope.course = data['body'];
  });
});
