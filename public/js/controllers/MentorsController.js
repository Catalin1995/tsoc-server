app.controller('MentorsController', function ($scope, $http, $routeParams) {

  $scope.mentors = [];

  $http.get('/mentor').success(function(data){
      $scope.mentors = data['body'];
  });
});
