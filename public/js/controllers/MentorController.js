app.controller('MentorController', function ($scope, $http, $routeParams) {

  $scope.mentor = {};

  $http.get('/api/mentor/'+$routeParams.id).success(function(data){
      $scope.mentor = data['body'];
  });
});
