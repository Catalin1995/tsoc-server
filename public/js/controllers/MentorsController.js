app.controller('MentorsController', function ($scope, $http, $routeParams) {

  $scope.mentors = [];

  $http.get('/api/mentors').success(function(data){
      $scope.mentors = data['body'];
  });
});
