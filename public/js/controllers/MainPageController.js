app.controller('MainPageController', function ($scope, $http) {

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

			//IE checks
			function getInternetExplorerVersion() {
				var rv = -1; // Return value assumes failure.
				if (navigator.appName == 'Microsoft Internet Explorer') {
					var ua = navigator.userAgent;
					var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
					if (re.exec(ua) != null)
					rv = parseFloat(RegExp.$1);
				}
				return rv;
			}
			function isInvalidIEVersion() {
				var ver = getInternetExplorerVersion();
				if (ver > -1 && ver < 9) {
					$('html').addClass("ltIE9");
					return true;
				}
				return false;
			}

			//On page load
			$(function(){

				//Quit if using an IE we don't like
				if (isInvalidIEVersion()) return;

				//Create and bind the viewmodel
				var vm = new tft.skilltree.Calculator(data);
				ko.applyBindings(vm);

				//apply konami code plugin
				$(window).konami(function () { vm.open(); vm.godMode(); });

				//Allow a split second for binding before turning on animated transitions for the UI
				setTimeout(function(){
					$('.page').addClass('animated');
				}, 50);
			});

		})(window.jQuery, window.ko, $scope.skills);
	});
});
