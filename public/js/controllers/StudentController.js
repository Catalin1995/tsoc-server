app.controller('StudentController', function ($scope, $http, $routeParams) {

  $scope.student = {};

  $http.get('/api/student/'+$routeParams.id).success(function(data){
    $scope.student = data['body'];

    $http.get('api/skills').success(function(data){
      $scope.all_skills = data['body'];

      $scope.skills = {
        learnTemplate: 'Learn {n} to unlock.',
        portraitUrl: 'img/portraits/portrait-1.jpg',
        numPortraits: 22,
        myName: $scope.student.name,
        emailAddress: $scope.student.email,
        hash: '_abc',
        defaultStats: {
          'Charisma': 9
          , 'Dexterity': 9
          , 'Fortitude': 9
          , 'Intellect': 9
          , 'Strength': 9
          , 'Wisdom': 9
        },
        skills: $scope.all_skills
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

          //Create and bind the viewmodel
          var vm = new tft.skilltree.Calculator(data);
          ko.applyBindings(vm);

          //apply konami code plugin
          // $(window).konami(function () { vm.open(); vm.godMode(); });

        });
        console.log($scope.skills)
      })(window.jQuery, window.ko, $scope.skills);
    });

  });

});
