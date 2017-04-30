hospitalApp.service('doctorData', ['$http', '$filter', 'simpleTableData', function($http, $filter, simpleTableData) {
	var data = {
		doctors: [],
		selectedDoctor: {
		}
	};

	data.loadDoctors = function(callback) {
		//test
		/*data.doctors = [
			{
				id: '3',
				name: 'Doctor 3',
				new_messages_count: '3',
				messages_count: '3',
				last_message_date: '01/22/2016'
			},
			{
				id: '1',
				name: 'Doctor 1',
				new_messages_count: '0',
				messages_count: '0',
				last_message_date: '01/01/2016'
			},
			{
				id: '2',
				name: 'Doctor 2',
				new_messages_count: '0',
				messages_count: '4',
				last_message_date: '01/22/2016'
			},
			{
				id: '4',
				name: 'Doctor 4',
				new_messages_count: '0',
				messages_count: '4',
				last_message_date: '01/22/2016'
			}
		];*/


		$http.get(
			window.base_url + '/user/get-all-doctors'
		).then(function(response) {
			data.doctors = response.data.doctors;

			simpleTableData.doctorsList = data.doctors;

			if(typeof callback === 'function') {
				callback();
			}
		});
	};

	data.getDoctorItemByDoctorId = function(doctor_id) {
		var found = $filter('filter')(data.doctors, {id: doctor_id}, true);

		if (found.length) {
			return found[0];
		} else {
			return {};
		}
	};

	data.approveDoctor = function(doctor_id, callback) {
		$http.post(
			window.base_url + '/user/approve-register',
			{
				user_id: doctor_id,
				_csrf: document.getElementsByName('csrf-token')[0].content
			}
		).then(function(response) {
			if(response.data.success && typeof callback === 'function') {
				callback();
			}
		});
	};

	data.disapproveDoctor = function(doctor_id, callback) {
		$http.post(
			window.base_url + '/user/disapprove-register',
			{
				user_id: doctor_id,
				_csrf: document.getElementsByName('csrf-token')[0].content
			}
		).then(function(response) {
			if(response.data.success && typeof callback === 'function') {
				callback();
			}
		});
	};

	return data;
}]);