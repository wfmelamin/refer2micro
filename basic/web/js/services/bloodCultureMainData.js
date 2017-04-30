hospitalApp.factory('bloodCultureMainData', ['$http', function($http) {
	var data = {};

	var properties_set = {
		id: '0',
		patient_id: '0',
		date_created: '',

		patient: {
			id: '',
			hospital_name: '',
			name: '',
			surname: '',
			date_birth: '',
			date_created: '',
			status: '1',
			doctor_id: ''
		}
	};

	data.data = properties_set;
	data.newData = properties_set;
	data.laboratoriesData = [];

	data.loadLaboratories = function() {
		$http.get(
			window.base_url + '/blood-culture-main/get-all-laboratories'
		).then(function(response) {
			data.laboratoriesData = response.data;
		});
	};

	return data;
}]);