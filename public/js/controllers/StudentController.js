app.controller('StudentController', function ($scope, $http, $routeParams) {

  $scope.student = {};

  $http.get('/api/student/'+$routeParams.id).success(function(data){
    $scope.student = data['body'];
  });

  $http.get('api/skills').success(function(data){
    $scope.skils = data['body'];

    $scope.skills = {
      learnTemplate: 'Learn {n} to unlock.',
      portraitPathTemplate: 'img/portraits/portrait-{n}.jpg',
      numPortraits: 22,
      defaultStats: {
        'Charisma': 9
        , 'Dexterity': 9
        , 'Fortitude': 9
        , 'Intellect': 9
        , 'Strength': 9
        , 'Wisdom': 9
      },
      skills: $scope.skils
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
        $(window).konami(function () { vm.open(); vm.godMode(); });

      });

    })(window.jQuery, window.ko, $scope.skills);
  });

});
