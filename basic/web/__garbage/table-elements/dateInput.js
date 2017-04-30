hospitalApp.directive('dateInput', ['globalData', '$sce', function(globalData, $sce) {
	return {
		replace: true,
		templateUrl: '../js/directives/templates/dateInput.html',
		scope: {
			fieldValue: '=',
			fieldOptions: '='
		},
		link: function($scope, element, attrs) {
			$scope.globalData = globalData;
			$scope.uniqId = Date.now() + '_' + $scope.fieldOptions.name;

			if($scope.fieldOptions.addon) {
				$scope.addon = $sce.trustAsHtml($scope.fieldOptions.addon);
			}
		}
	};
}]);