app.controller('StudentController', function ($scope, $http, $routeParams) {

  $scope.student = {};

  $http.get('/api/student/'+$routeParams.id).success(function(data){
    $scope.student = data['body'];

    $http.get('api/dungeons/1').success(function(data){
      $scope.dungeon = data['body']

      $http.get('/api/student/'+$scope.student.id+'/dungeons/'+$scope.dungeon.id+'/dungeon_hashes').success(function(data){
        $scope.dungeon_hashes = data['body'];
        $scope.skills = {
          student_id: $scope.student.id,
          dungeon_id: $scope.dungeon.id,
          portraitUrl: 'img/portraits/portrait-1.jpg',
          myName: $scope.student.name,
          emailAddress: $scope.student.email,
          hash: $scope.dungeon_hashes.dungeon_hash,
          defaultStats: {
            'Charisma': 9
            , 'Dexterity': 9
            , 'Fortitude': 9
            , 'Intellect': 9
            , 'Strength': 9
            , 'Wisdom': 9
          },
          skills: $scope.dungeon.skills
        };

        //konami code plugin
        (function ($) {

          $.fn.konami = function (callback, code) {
            if (code == undefined) code = "38,38,40,40,37,39,37,39,66,65"; //Super secret!

            return this.each(function () {
              var kkeys = [];
              $(this).keydown(function (e) {
                kkeys.push(e.keyCode);
                if (kkeys.toString().indexOf(code) >= 0) {
                  $(this).unbind('keydown', arguments.callee);
                  callback(e);
                }
              });
            });
          }

        })(jQuery);

        //Custom closure
        (function($, ko, data){

          //On page load
          $(function(){

            try {
              var vm = new tft.skilltree.Calculator(data, $http);
              ko.applyBindings(vm);
              console.log(1)
            }
            catch(exception){
              var element = $(vm)[0];
              ko.cleanNode(element);
              ko.applyBindings(vm);
            }
            // apply konami code plugin
            $(window).konami(function () { vm.open(); vm.godMode(); });

          });
          console.log($scope.skills)
        })(window.jQuery, window.ko, $scope.skills);
      });

    });

  });

});
