app.controller('MentorsController', function ($scope, $http, $routeParams) {

  $scope.mentors = [];

  $http.get('/api/mentor').success(function(data){
      $scope.mentors = data['body'];
  });
});
