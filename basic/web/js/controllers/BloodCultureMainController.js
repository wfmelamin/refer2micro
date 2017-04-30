hospitalApp.controller('BloodCultureMainController',
	['$http', '$scope', 'bloodCultureMainData', 'fullTableData', 'simpleTableData', 'globalData',
function($http, $scope, bloodCultureMainData, fullTableData, simpleTableData, globalData) {
	$scope.globalData = globalData;
	$scope.bloodCultureMainData = bloodCultureMainData;
	$scope.simpleTableData = simpleTableData;
	$scope.fullTableData = fullTableData;
	$scope.laboratoriesData = bloodCultureMainData.laboratoriesData;

	fullTableData.gramStainsTable.data  = [];
	fullTableData.organismsTable.data   = [];

	$scope.blood_culture_selected_index = -1;

	$scope.setBlodCultureSelected = function(index) {
		$scope.blood_culture_selected_index = index;

		if(index === -1) {
			fullTableData.gramStainsTable.data = fullTableData.bloodCulturesTable.newItem.gram_stains_table_data;
			fullTableData.organismsTable.data   = fullTableData.bloodCulturesTable.newItem.organisms_table_data;
		} else {
			fullTableData.gramStainsTable.data = fullTableData.bloodCulturesTable.data[index].gram_stains_table_data;
			fullTableData.organismsTable.data   = fullTableData.bloodCulturesTable.data[index].organisms_table_data;
		}
	};

	$scope._debug = {table: fullTableData.bloodCulturesTable}; //test

	/** prepare new item to add **/
	$scope.prepareNew = function() {
		bloodCultureMainData.data = angular.copy(bloodCultureMainData.newData);

		fullTableData.bloodCulturesTable.data = [];
		fullTableData.gramStainsTable.data = [];
		fullTableData.organismsTable.data = [];
	};

	$scope.refreshItems = function(callback) {
		$http.get(
			window.base_url + 'blood-culture-main/get-all'
		).then(function(response) {
				if(response.data !== '') {
					globalData.items = response.data;
				}
				if(typeof callback === 'function') {
					callback(response.data);
				}
			});
	};

	$scope.loadPatients = function() {
		globalData.loadPatients('blood_culture_main');
	};

	$scope.getInfo = function(id, callback) {
		$http.get(
			window.base_url + 'blood-culture-main/get-info?id=' + id
		).then(function(response) {
				if(response.data !== '') {
					if(id !== 0) {
						bloodCultureMainData.data                = response.data.blood_culture_main;

						fullTableData.bloodCulturesTable.data     = response.data.blood_cultures_table_data;
					}

					simpleTableData.organismsList    = response.data.organisms_list;
					simpleTableData.significantsList = response.data.significants_list;
					simpleTableData.gramStainsList   = response.data.gram_stains_list;

					if(typeof callback === 'function') {
						callback();
					}
				}
			});
	};

	$scope.saveInfo = function(callback) {
		$http.post(
			window.base_url + 'blood-culture-main/save-info',
			{
				data: {
					blood_culture_main:                       bloodCultureMainData.data,

					blood_cultures_table_data:       fullTableData.bloodCulturesTable.data,

					organisms_list:    simpleTableData.organismsList,
					significants_list: simpleTableData.significantsList,
					gram_stains_list:  simpleTableData.gramStainsList
				},

				_csrf: document.getElementsByName('csrf-token')[0].content
			}

		).then(function(response) {
				callback(response.data);
			});
	};

	$scope.deleteInfo = function(callback) {
		$http.post(
			window.base_url + 'blood-culture-main/delete-info',
			{
				data: {
					blood_culture_id:            bloodCultureMainData.data.id
				},

				_csrf: document.getElementsByName('csrf-token')[0].content
			}

		).then(function(response) {
				callback(response.data);
			});
	};

	$scope.bloodCultureMainData.loadLaboratories();
}]);
hospitalApp.controller('BloodCulturesTableController',
	['$scope', 'bloodCultureMainData', 'fullTableData',
function($scope, bloodCultureMainData, fullTableData) {
	$scope.newItemCopy = {
		id: '',
		blood_culture_main_id: '0',
		lab_no: '',
		date_sample: '',
		sensitivity_complete: '',
		significant_id: '0',
		follow_up_required: '',
		active_case: '',
		gram_stains_table_data: [],
		organisms_table_data: []

	};

	$scope.fullTableData = fullTableData;

	fullTableData.bloodCulturesTable.newItem = angular.copy($scope.newItemCopy);


	$scope.setNewItemId = function() {
		if(fullTableData.bloodCulturesTable.data.length !== 0) {
			fullTableData.bloodCulturesTable.newItem.id = parseInt(fullTableData.bloodCulturesTable.data[fullTableData.bloodCulturesTable.data.length-1].id) + 1; // last id + 1
		} else {
			fullTableData.bloodCulturesTable.newItem.id = 1; //id will be 1
		}
	};


	$scope.generateNewItem = function() {
		fullTableData.bloodCulturesTable.newItem = angular.copy($scope.newItemCopy);

		$scope.setNewItemId();
	};

	$scope.addItem = function() {
		fullTableData.bloodCulturesTable.data.push(angular.copy(fullTableData.bloodCulturesTable.newItem));

		$scope.generateNewItem();
	};

	$scope.removeItem = function(item) {
		var index = fullTableData.bloodCulturesTable.data.indexOf(item);
		fullTableData.bloodCulturesTable.data.splice(index, 1);

		$scope.generateNewItem();
	};

	$scope.generateNewItem();
}]);