hospitalApp.directive('selectInput', ['$sce', 'simpleTableData', 'globalData', function($sce, simpleTableData, globalData) {
	return {
		replace: true,
		templateUrl: '../js/directives/templates/selectInput.html',
		scope: {
			fieldValue: '=',
			fieldOptions: '='
		},
		link: function($scope, element, attrs) {
			$scope.globalData = globalData;
			$scope.simpleTableData = simpleTableData;
			$scope.uniqId = Date.now() + '_' + $scope.fieldOptions.name;

			if($scope.fieldOptions.addon && $scope.fieldValue === '0') {
				$scope.addon = $sce.trustAsHtml($scope.fieldOptions.addon);
			}
/*
			// get elements table
			scope.table  = globalData[attrs.tableName];
			// get options for this field from config
			scope.fieldOptions = scope.table.config.fields[attrs.fieldKey];
			scope.name = scope.fieldOptions.name;
			scope.globalData = globalData;

			// field key - name of field, for example, "speciality_id"
			scope.fieldKey = attrs.fieldKey;
			// get items for select from some table using field options
			//scope.items = globalData[scope.fieldOptions.itemsName];

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