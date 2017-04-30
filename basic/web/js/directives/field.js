hospitalApp.directive('field', ['simpleTableData', 'accessData', function(simpleTableData, accessData) {
	return {
		replace: true,
		templateUrl: function ($element, $attrs) {
			var templates = ['text', 'select', 'date','dateAttach', 'bool', 'textarea'];

			if (templates.indexOf($attrs.type) > -1) {
				return 'js/directives/templates/' + $attrs.type + 'Field.html';
			}
		},
		scope: {
			value: '=',
			addon: '=?'
		},
		transclude: true,
		link: function($scope, $element, $attrs, $controller, $transclude) {
			$scope.simpleTableData = simpleTableData;


			//parse options
			$scope.options = {
				showTitle: true,
				addon: false,
				disabled: false,
				required: false
			};

			$transclude(function($clone){
				if($clone.length) {
					if($attrs.type == 'select') {
						$scope.addon = accessData.data.changeListTables;
						$scope.$watch(function() { return accessData.data.changeListTables; }, function(newValue, oldValue) {
							$scope.addon = newValue;
							/*if(newValue === true) {
								$scope.inputGroupClass = 'input-group';
							}*/
						});
					} else {
						$scope.options.addon = true;
					}
				}
			});

			angular.extend($scope.options, $scope.$eval($attrs.options));

			$scope.uniqId = Date.now() + '_' + $scope.options.name;

			$scope.addon = false;
			if($scope.options.addon) {
				$scope.addon = true;
			}

			$scope.name = false;
			if($scope.options.name) {
				$scope.name = $scope.options.name;
			}

			$scope.showTitle = false;
			if($scope.options.showTitle) {
				$scope.showTitle = true;
			}

			/*$scope.inputGroupClass = '';
			if($scope.options.showTitle || $scope.options.addon) {
				$scope.inputGroupClass = 'input-group';
			}*/

			$scope.class = false;
			if($scope.options.class) {
				$scope.class = $scope.options.class;
			}

			$scope.itemsName = false;
			if($scope.options.itemsName) {
				$scope.itemsName = $scope.options.itemsName;
			}

			$scope.width = '0px';
			if($scope.options.width) {
				$scope.width = $scope.options.width;
			}

			$scope.disabled = false;
			if($scope.options.disabled) {
				$scope.disabled = true;
			}

			$scope.required = false;
			if($scope.options.required) {
				$scope.required = $scope.options.required;
			}
		}
	};
}]);