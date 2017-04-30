hospitalApp.controller('OPATController',
	['$scope', '$http', 'opatData', 'simpleTableData', 'fullTableData', 'globalData',
function($scope, $http, opatData, simpleTableData, fullTableData, globalData) {
	$scope.globalData = globalData;
	$scope.opatData = opatData;
	$scope.simpleTableData = simpleTableData;
	$scope.fullTableData = fullTableData;

	$scope._debug = {globalData: globalData, opatData: opatData}; //test

	/** prepare new item to add **/
	$scope.prepareNew = function() {
		opatData.data = angular.copy(opatData.newData);
		fullTableData.antibioticsTable.data = [];
	};

	$scope.refreshItems = function(callback) {
		$http.get(
			window.base_url + '/opat/get-all'
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
		globalData.loadPatients('opat');
	};

	$scope.getInfo = function(id, callback) {
		$http.get(
			window.base_url + 'opat/get-info?id=' + id
		).then(function(response) {
				if(response.data !== '') {
					if(id !== 0) {
						opatData.data                = response.data.opat;

						fullTableData.antibioticsTable.data = response.data.antibiotics_table_data;
					}

					simpleTableData.referringConsultantsList = response.data.referring_consultants_list;
					simpleTableData.managingDoctorsList      = response.data.managing_doctors_list;
					simpleTableData.commisioningBoardsList   = response.data.commisioning_boards_list;
					simpleTableData.vadTypesList             = response.data.vad_types_list;
					simpleTableData.primaryInfectiveList     = response.data.primary_infective_list;
					simpleTableData.complicationsList        = response.data.complications_list;
					simpleTableData.outcomesList             = response.data.outcomes_list;

					if(typeof callback === 'function') {
						callback();
					}
				}
			});
	};

	$scope.saveInfo = function(callback) {
		$http.post(
			window.base_url + 'opat/save-info',
			{
				data: {
					opat:                       opatData.data,

					antibiotics_table_data:     fullTableData.antibioticsTable.data,

					referring_consultants_list: simpleTableData.referringConsultantsList,
					managing_doctors_list:      simpleTableData.managingDoctorsList,
					commisioning_boards_list:   simpleTableData.commisioningBoardsList,
					vad_types_list:             simpleTableData.vadTypesList,
					primary_infective_list:     simpleTableData.primaryInfectiveList,
					complications_list:         simpleTableData.complicationsList,
					outcomes_list:              simpleTableData.outcomesList,
				},

				_csrf: document.getElementsByName('csrf-token')[0].content
			}

		).then(function(response) {
				callback(response.data);
			});
	};

	$scope.deleteInfo = function(callback) {
		$http.post(
			window.base_url + 'opat/delete-info',
			{
				data: {
					opat_id:            opatData.data.id
				},

				_csrf: document.getElementsByName('csrf-token')[0].content
			}

		).then(function(response) {
				callback(response.data);
			});
	};

}]);
hospitalApp.controller('AntibioticTableController',
	['$scope', 'opatData', 'fullTableData',
function($scope, opatData, fullTableData) {
	$scope.newItemCopy = {
		id: '',
		opat_id: '',
		antibiotic_id: '0',
		start_date: '',
		stop_date: '',
		dose: '',
		duration: '',
		frequency: '',
		need_change: '0'
	};

	$scope.fullTableData = fullTableData;

	fullTableData.antibioticsTable.newItem = angular.copy($scope.newItemCopy);


	$scope.setNewItemId = function() {
		if(fullTableData.antibioticsTable.data.length !== 0) {
			fullTableData.antibioticsTable.newItem.id = parseInt(fullTableData.antibioticsTable.data[fullTableData.antibioticsTable.data.length-1].id) + 1; // last id + 1
		} else {
			fullTableData.antibioticsTable.newItem.id = 1; //id will be 1
		}
	};

	$scope.generateNewItem = function() {
		fullTableData.antibioticsTable.newItem = angular.copy($scope.newItemCopy);

		$scope.setNewItemId();
	};

	$scope.addItem = function() {
		fullTableData.antibioticsTable.data.push(angular.copy(fullTableData.antibioticsTable.newItem));

		$scope.generateNewItem();
	};

	$scope.removeItem = function(item) {
		var index = fullTableData.antibioticsTable.data.indexOf(item);
		fullTableData.antibioticsTable.data.splice(index, 1);

		$scope.generateNewItem();
	};

	$scope.generateNewItem();
}]);