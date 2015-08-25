app.controller('StudentsController', function ($scope, $http, $routeParams) {

  $scope.students = [];

  $http.get('/api/students').success(function(data){
      $scope.students = data['body'];
  });
});
