hospitalApp.controller('testController',['$scope', function($scope) {
	$scope.test = {value: 1};
	$scope.clickerr = function() {
		console.log('test');
	};
}]);
