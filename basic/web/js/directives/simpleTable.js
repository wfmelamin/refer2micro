hospitalApp.directive('simpleTable', ['globalData', function(globalData) {
	return {
		replace: true,
		templateUrl: 'js/directives/templates/simpleTable.html',
		scope: {
			title: '@',
			modalId: '@',
			items: '='
		},
		link: function($scope) {
			$scope.globalData = globalData;

			$scope.newItem = {
				id: 0,
				name: ""
			};

			$scope.setNewId = function() {
				if($scope.items.length !== 0) {
					$scope.newItem.id = parseInt($scope.items[$scope.items.length-1].id) + 1; // last id + 1
				} else {
					$scope.newItem.id = 1; //id will be 1
				}
			};

			$scope.$watch('items', function(newValue, oldValue) {
				$scope.setNewId();
			});

			$scope.removeItem = function(item) {
				var index = $scope.items.indexOf(item);
				$scope.items.splice(index, 1);

				$scope.setNewId();
			};

			$scope.addItem = function() {
				$scope.items.push(angular.copy($scope.newItem));

				$scope.setNewId();
				$scope.newItem.name = "";
			};
		}
	};
}]);
//<simple-table title="Speciality" modal-id="myModal" items-name="specialityList"></simple-table>

//<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#specialityList" style="text-decoration: none;cursor: pointer;"></a>