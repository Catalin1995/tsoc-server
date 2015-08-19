app.controller('StudentController', function ($scope, $http, $routeParams) {

  $scope.student = {};

  $http.get('/api/student/'+$routeParams.id).success(function(data){
      $scope.student = data['body'];
  });
});
