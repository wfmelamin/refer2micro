hospitalApp.factory('opatData', [function() {
	var properties_set = {
		id: '0',
		patient_id: '0',
		date_created: '0',
		sex: '',
		weight: '',
		age: '',
		specialty_id: '0',
		managing_doctor_id: '0',
		referring_consultant_id: '0',
		primary_infective_id: '0',
		date_referral: '',
		commisioning_board_id: '0',
		vad_type_id: '0',
		vad_insertion_date: '',
		vad_removal_date: '',
		complications_id: '0',
		outcome_id: '0',
		discharge_date: '',

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