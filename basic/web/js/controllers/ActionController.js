hospitalApp.controller('ActionController',
	['$scope', '$location', 'globalData', 'fullTableData', '$rootScope', 'accessData', 'doctorData',
function($scope, $location, globalData, fullTableData, $rootScope, accessData, doctorData) {
	$scope.actionMode = {
		value  : 'view',
		add    : true,
		edit   : true,
		remove : true,
		undo   : false,
		search : true,
		save   : false,
		prev   : true,
		next   : true,

		activate: function(action) {

			switch (action) {
				case 'add':
					globalData.readOnly = false;
					this.value  = 'add';
					this.edit   = false;
					this.remove = false;
					this.search = false;
					this.save   = true;
					this.prev   = false;
					this.next   = false;

					if(globalData.items.length !== 0) {
						this.undo = true;
					}

					$('#patientsList').modal('show');

					//create new model
					$scope.prepareNew();

					break;
				case 'edit':
					globalData.readOnly = false;

					this.value  = 'edit';
					this.add    = false;
					this.edit   = true;
					this.remove = false;
					this.undo   = true;
					this.search = false;
					this.save   = true;
					this.prev   = false;
					this.next   = false;

					break;
				case 'remove':
					globalData.readOnly = true;

					this.value = 'view';
					this.actionDefaults();

					if(confirm("Are you serious wan't to delete this record?")) {
						$scope.deleteInfo(function(data) {
							if(data.success == true) {
								$scope.loadItems();
								$scope.loadPatients();
							}
						});
					}

					break;
				case 'undo':
					globalData.readOnly = true;

					if(this.value == 'add' && globalData.items.length === 0) break;

					this.value = 'view';
					this.actionDefaults();

					$scope.reloadItem();

					break;
				case 'save':

					//check form
					angular.forEach($scope.itemForm.$error, function (field) {
						angular.forEach(field, function(errorField){
							console.log(errorField);
							errorField.$setTouched();
							errorField.$setDirty();
						})
					});
					if($scope.itemForm.$invalid) return false;


					globalData.readOnly = true;

					var is_new = false;
					if(this.value == 'add') is_new = true;

					$scope.saveInfo(function(data) {
						if(data.success == true) {
							if(is_new) {
								$scope.setItemId(data.id);
								$scope.loadItems();
								$scope.loadPatients();
							}
							$scope.actionMode.value = 'view';
							$scope.actionMode.actionDefaults();
						} else {
							if(is_new) {
								$scope.actionMode.activate('add');
								$scope.actionMode.undo = false;
							} else {
								$scope.actionMode.activate('edit');
							}
						}
					});

					break;
				case 'prev':
					globalData.readOnly = true;
					this.value = 'view';
					this.actionDefaults();

					$scope.setItemId($scope.navigationArrows.prevId);
					$scope.reloadItem();

					break;
				case 'next':
					globalData.readOnly = true;
					this.value = 'view';
					this.actionDefaults();

					$scope.setItemId($scope.navigationArrows.nextId);
					$scope.reloadItem();

					break;
				case 'block':
					globalData.readOnly = true;
					this.value = 'view';
					this.add    = false;
					this.edit   = false;
					this.remove = false;
					this.undo   = false;
					this.search = false;
					this.save   = false;
					this.prev   = false;
					this.next   = false;

					break;
				case 'default':
					globalData.readOnly = true;
					this.value = 'view';
					this.actionDefaults();

					break;
			}
		},

		actionDefaults: function () {
			this.add    = true;
			this.edit   = true;
			this.remove = true;
			this.undo   = false;
			this.search = true;
			this.save   = false;
			this.prev   = true;
			this.next   = true;
		}
	};

	$scope.navigationArrows = {
		prevId: 0,
		nextId: 0
	};

	/**
	 * Get item id
	 * @returns {number}
	 */
	$scope.getItemId = function() {
		var params = $location.search();

		if(isNumeric(params.id)) {
			return params.id;
		} else {
			return 0;
		}
	};

	/**
	 * Check if item id set
	 * @returns {boolean}
	 */
	$scope.checkItemId = function() {
		return this.getItemId() !== 0;
	};

	/**
	 * Set item id
	 * @param id
	 */
	$scope.setItemId = function(id){
		$location.path($location.path(), false).search({id: id});
		//$location.search({id: id});
	};

	/**
	 * Reload item using ID from get param
	 */
	$scope.reloadItem = function () {
		$scope.actionMode.activate('block');//block

		$scope.getInfo($scope.getItemId(), function() {
			$scope.updateNavigationArrows();

			$scope.actionMode.activate('default'); //unblock

			$rootScope.$broadcast('tablesLoaded');
		});
	};

	/**
	 * Go to first item
	 */
	$scope.goToFirstItem = function() {
		if(globalData.items[0] !== undefined) {
			$scope.setItemId(globalData.items[0].id);

		} else {
			console.log('no items found!');
		}
		$scope.reloadItem();
	};

	/**
	 * Check is item exists in items table (by id)
	 * @returns {boolean}
	 */
	$scope.checkIsItemExists = function() {
		var item_exists = false;
		angular.forEach(globalData.items, function(value, key) {
			if(value.id == $scope.getItemId()) {
				item_exists = true;
			}
		});
		return item_exists;
	};

	/**
	 * Load items at globalData
	 * @see Controllers
	 */
	$scope.loadItems = function() {
		$scope.refreshItems(function(data) {
			if(data.length !== 0) {
				if($scope.checkItemId() && $scope.checkIsItemExists()) {
					$scope.reloadItem();
				} else {
					$scope.goToFirstItem();
				}
			} else {
				$scope.actionMode.activate('add');
				$scope.actionMode.prev = false;
				$scope.actionMode.next = false;
				$scope.actionMode.undo = false;
				$scope.getInfo(0, function() {
					$rootScope.$broadcast('tablesLoaded');
				});
			}
		});
	};

	/**
	 * Update < and > buttons at the top (prev and next)
	 */
	$scope.updateNavigationArrows = function() {
		var id = $scope.getItemId();

		// update navigation arrows: < and >
		switch (Object.keys(globalData.items).length) {
			case 0:
				$scope.actionMode.prev = false;
				$scope.actionMode.next = false;
				break;
			case 1:
				$scope.navigationArrows.prevId = id;
				$scope.navigationArrows.nextId = id;
				break;
			case 2:
				if(globalData.items[0].id != id) {
					$scope.navigationArrows.prevId = globalData.items[0].id;
					$scope.navigationArrows.nextId = globalData.items[0].id;
				} else {
					$scope.navigationArrows.prevId = globalData.items[1].id;
					$scope.navigationArrows.nextId = globalData.items[1].id;
				}
				break;
			default:
				angular.forEach(globalData.items, function(value, key) {
					// if current items == current item id
					if(value.id == id) {
						if(typeof globalData.items[key-1] !== 'undefined') {
							// if we have previous Item in list
							$scope.navigationArrows.prevId = globalData.items[key-1].id;
						} else {
							// else - take last Item in list
							$scope.navigationArrows.prevId = globalData.items[globalData.items.length - 1].id;
						}
						if(typeof globalData.items[key+1] !== 'undefined') {
							// if we have next Item in list
							$scope.navigationArrows.nextId = globalData.items[key+1].id;
						} else {
							// else - take first Item in list
							$scope.navigationArrows.nextId = globalData.items[0].id;
						}
					}
				});
				break;
		}
	};

	/**
	 * Change item on needChangeItem event
	 * @see searchModal
	 */
	$scope.$on('needChangeItem', function(event, data) {
		$scope.setItemId(data.id);
		$scope.reloadItem();
	});


	/**
	 * Change mode on setActionMode event
	 * @see PatientController
	 */
	$scope.$on('setActionMode', function(event, data) {
		$scope.actionMode.activate(data.action);
	});

	$scope.setForm = function (form) {
		$scope.itemForm = form;
	};


	//init
	$scope.loadItems();
	accessData.getAccessData();
	doctorData.loadDoctors();
}]);