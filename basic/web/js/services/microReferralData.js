hospitalApp.factory('microReferralData', ['$interval', function($interval) {
	var properties_set = {
		id: '0',
		patient_id: '0',
		specialty_id: '0',
		ward: '',
		team_bleeps: '',
		referring_doctor: '',
		date_referral: '',
		reason_id: '0',
		clinical_details: '',
		medical_history: '',
		investigations: '',
		clinical_advice: '',

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

	return {
		data: properties_set,
		newData: properties_set
	};
}]);