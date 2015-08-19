app.controller('StudentsController', function ($scope, $http, $routeParams) {

  $scope.students = [];

  $http.get('/api/student').success(function(data){
      $scope.students = data['body'];
  });
});
