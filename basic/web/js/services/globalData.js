hospitalApp.factory('globalData',  ['$http', 'microReferralData', function($http, microReferralData) {

	var data = {
		readOnly: true,
		patientsAll: [
			//{
			//	id: 1,
			//	surname: 'Echo',
			//	name: 'Lima',
			//	date_birth: "04/04/2016",
			//	nhs_no: "1003",
			//	micro_referral_id: '0'
			//},
		],
		patientsFee: [

		],
		// this is main items -
		items: []
	};

	data.loadPatients = function(type) {
		$http.get(
			window.base_url + '/patient/get-all?type=' + type
		).then(function(response) {
			data.patientsAll  = response.data.patients_all;
			data.patientsFree = response.data.patients_free;
		});
	};

	return data;
}]);
