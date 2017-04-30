hospitalApp.directive('textareaInput', ['globalData', '$sce', function(globalData, $sce) {
	return {
		replace: true,
		templateUrl: '../js/directives/templates/textareaInput.html',
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

			/*scope.table  = globalData[attrs.tableName];
			scope.fieldOptions = scope.table.config.fields[attrs.fieldKey];
			scope.name = scope.fieldOptions.name;
			scope.globalData = globalData;

			scope.fieldKey = attrs.fieldKey;

			//in case item - new, link data to "new item" object, otherwise - link to data
			if(attrs.itemIndex === 'new') {
				scope.data = scope.table.newItem;
			} else if(attrs.itemIndex) {
				scope.data = scope.table.data[attrs.itemIndex];
			}
			//if addon isset and item not new
			if(typeof scope.fieldOptions.addon !== undefined && attrs.itemIndex === 'new') {
				scope.addon = $sce.trustAsHtml(scope.fieldOptions.addon);
			}*/
		}
	};
}]);