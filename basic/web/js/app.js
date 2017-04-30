var hospitalApp = angular.module('hospitalApp', ['ngSanitize', 'ngRoute', 'angucomplete-alt', 'mgcrea.ngStrap', 'disableAll', 'ngFileUpload']);

hospitalApp.config(['$routeProvider',
	function($routeProvider) {
		$routeProvider.
			/*when('/', {
				templateUrl: 'views/index.html'
			}).*/
			when('/', {
				redirectTo: "/micro-referral"
			}).
			when('/micro-referral', {
				templateUrl: 'views/micro-referral.html',
				//controller  : 'MicroReferralController'
			}).
			when('/blood-cultures', {
				templateUrl: 'views/blood-cultures.html',
				//controller  : 'BloodCulturesController'
			}).
			when('/opat', {
				templateUrl: 'views/opat.html',
				//controller  : 'OPATController'
			}).
			when('/notifications', {
				templateUrl: 'views/notifications.html',
				//controller  : 'NotificationsController'
			}).
			otherwise({
				templateUrl: 'views/404.html'
			});
	}
]);



hospitalApp.run(['$route', '$rootScope', '$location', function ($route, $rootScope, $location) {
	var original = $location.path;
	$location.path = function (path, reload) {
		if (reload === false) {
			var lastRoute = $route.current;
			var un = $rootScope.$on('$locationChangeSuccess', function () {
				$route.current = lastRoute;
				un();
			});
		}
		return original.apply($location, [path]);
	};
}]);

