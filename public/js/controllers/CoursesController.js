app.controller('CoursesController', function ($scope, $http, $routeParams) {
  $scope.courses = []

  $http.get('/api/course').success(function(data){
  		$scope.courses = data['body'];
  });
});
