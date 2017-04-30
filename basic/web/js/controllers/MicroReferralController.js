hospitalApp.controller('MicroReferralController',
	['$scope', '$http', '$location', 'globalData', 'microReferralData', 'simpleTableData', 'fullTableData', '$interval', '$rootScope', 'accessData', 'doctorData',
function($scope, $http, $location, globalData, microReferralData, simpleTableData, fullTableData, $interval, $rootScope, accessData, doctorData) {

	$scope.globalData      = globalData;
	$scope.microReferral   = microReferralData;
	$scope.simpleTableData = simpleTableData;
	$scope.fullTableData   = fullTableData;
	$scope.accessData      = accessData;
	$scope.doctorData      = doctorData;

	$scope._debug = {globalData: globalData, microReferralData: microReferralData, simpleTableData: simpleTableData}; //test

	$scope.prepareNew = function() {
		microReferralData.data = angular.copy(microReferralData.newData);

		fullTableData.bloodsTable.data        = [];
		fullTableData.pcatTable.data          = [];
		fullTableData.allergiesTable.data     = [];
		fullTableData.followupNotesTable.data = [];
		fullTableData.stewardshipsTable.data  = [];
	};

	$scope.refreshItems = function(callback) {
		$http.get(
			window.base_url + '/micro-referral/get-all'
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
		globalData.loadPatients('micro_referral');
	};

	$scope.getInfo = function(id, callback) {
		$http.get(
			window.base_url + '/micro-referral/get-info?id=' + id
		).then(function(response) {
			if(response.data !== '') {
				if(id !== 0) {
					microReferralData.data                = response.data.micro_referral;

					fullTableData.bloodsTable.data        = response.data.bloods_table_data;
					fullTableData.pcatTable.data          = response.data.pcat_table_data;
					fullTableData.allergiesTable.data     = response.data.allergies_table_data;
					fullTableData.followupNotesTable.data = response.data.followup_notes_table_data;
					fullTableData.stewardshipsTable.data  = response.data.stewardships_table_data;
				}

				simpleTableData.specialtiesList       = response.data.specialties_list;
				simpleTableData.agentsList            = response.data.agents_list;
				simpleTableData.allergiesList         = response.data.allergies_list;
				simpleTableData.reasonsList           = response.data.reasons_list;

				simpleTableData.rvsList           = response.data.rvs_list;
				simpleTableData.outcomesList      = response.data.outcomes_list;
				simpleTableData.interventionsList = response.data.interventions_list;
				simpleTableData.indicationsList   = response.data.indications_list;

				if(typeof callback === 'function') {
					callback();
				}
			}
		});
	};

	$scope.saveInfo = function(callback) {
		$http.post(
			window.base_url + '/micro-referral/save-info',
			{
				data: {
					micro_referral:            microReferralData.data,

					specialties_list:   simpleTableData.specialtiesList,
					agents_list:        simpleTableData.agentsList,
					allergies_list:     simpleTableData.allergiesList,
					reasons_list:       simpleTableData.reasonsList,
					rvs_list:           simpleTableData.rvsList,
					outcomes_list:      simpleTableData.outcomesList,
					interventions_list: simpleTableData.interventionsList,
					indications_list:   simpleTableData.indicationsList,

					bloods_table_data:         fullTableData.bloodsTable.data,
					pcat_table_data:           fullTableData.pcatTable.data,
					allergies_table_data:      fullTableData.allergiesTable.data,
					followup_notes_table_data: fullTableData.followupNotesTable.data,
					stewardships_table_data:   fullTableData.stewardshipsTable.data
				},

				_csrf: document.getElementsByName('csrf-token')[0].content
			}

		).then(function(response) {
			callback(response.data);
		});
	};

	$scope.deleteInfo = function(callback) {
		$http.post(
			window.base_url + '/micro-referral/delete-info',
			{
				data: {
					micro_referral_id:            microReferralData.data.id
				},

				_csrf: document.getElementsByName('csrf-token')[0].content
			}

		).then(function(response) {
			callback(response.data);
		});
	};
}]);
hospitalApp.controller('FileController', ['$scope', 'Upload', '$timeout', 'microReferralData',
function($scope, Upload, $timeout, microReferralData) {

	$scope.upload = function(file) {
		$scope.file = file;
		$scope.file.progress = 0;

		if(file) {
			upload = Upload.upload({
				url: window.base_url + 'micro-referral/upload-file',
				data: {
					file: file,
					micro_referral_id: microReferralData.data.id,
					_csrf: document.getElementsByName('csrf-token')[0].content
				}
			}).then(function(response) {
				$timeout(function () {
					file.result = response.data;
				});
				microReferralData.data.file_link = response.data.file_link;
			});
		}
	}
}]);