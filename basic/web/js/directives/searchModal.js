hospitalApp.directive('searchModal', ['$sce', '$rootScope', 'globalData', function($sce, $rootScope, globalData) {
	return {
		replace: true,
		templateUrl: 'js/directives/templates/searchModal.html',
		scope: {
			tableData: '=table',
			modalId: '@',
			title: '@',
			searchKey: '@',
			searchResultKeys: '@'
		},
		link: function($scope, $element, $attrs) {

			$scope.searchValue = '';
			$scope.searchDone = false;
			$scope.targetId = '';

			$scope.$watch('searchValue', function(newValue, oldValue) {
				if(newValue && newValue.hasOwnProperty('originalObject')) {

					angular.forEach(globalData.items, function(item) {
						if(item.patient_id === newValue.originalObject.id) {
							$scope.targetId = item.id;
							$scope.searchDone = true;
						}
					});

				} else {
					$scope.searchDone = false;
				}
			});

			$scope.goToItem = function() {
				if($scope.targetId !== '' && $scope.searchDone === true) {
					var modal = $('#' + $scope.modalId).modal('hide');

					modal.on('hidden.bs.modal', function () {
						if($scope.targetId !== '' && $scope.searchDone === true) {
							$rootScope.$broadcast('needChangeItem', {id: $scope.targetId});

							$scope.$broadcast('angucomplete-alt:clearInput', 'autocomplete_' + $scope.modalId);

							$scope.searchValue = '';
							$scope.targetId   = '';
							$scope.searchDone = false;
						}
					});
				}
			};

			//<search-modal table-name="patients" search-key="surname" title="Patients" modal-id="patientsSearch"></search-modal>
		}
	};
}]);