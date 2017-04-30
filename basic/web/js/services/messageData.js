hospitalApp.service('messageData', ['$http', 'doctorData', function($http, doctorData) {
	var data = {
		messages: [],
		message: {
			content: ''
		},
		messages_new_count: 0
	};

	data.getNewMessagesCount = function(callback) {
		$http.get(
			window.base_url + 'message/get-new'
		).then(function(response) {
			data.messages_new_count = response.data.messages_new_count;

			if(typeof callback !== 'undefined') {
				callback();
			}
		});
	};

	data.loadMessagesOfDoctor = function(doctor_id, callback) {
		//test
		/*data.messages = [
			{
				id: '1',
				content: 'Ducimus distinctio est iusto omnis perferendis possimus. Ut nesciunt commodi itaque nisi.',
				date_created: '11/10/2016 10:15',
				from_doctor_id: '1',
				read: '0',
				type: '1'
			},
			{
				id: '2',
				content: 'Ducimus distinctio est iusto omnis perferendis possimus. Ut nesciunt commodi itaque nisi.',
				date_created: '09/10/2016 10:15',
				from_doctor_id: '1',
				read: '1',
				type: '2'
			},
			{
				id: '3',
				content: 'Ducimus distinctio est iusto omnis perferendis possimus. Ut nesciunt commodi itaque nisi.',
				date_created: '06/10/2016 10:15',
				from_doctor_id: '1',
				read: '1',
				type: '1'
			},
			{
				id: '4',
				content: 'Ducimus distinctio est iusto omnis perferendis possimus. Ut nesciunt commodi itaque nisi.',
				date_created: '06/10/2016 10:15',
				from_doctor_id: '1',
				read: '1',
				type: '1'
			},
			{
				id: '5',
				content: 'Ducimus distinctio est iusto omnis perferendis possimus. Ut nesciunt commodi itaque nisi.',
				date_created: '06/10/2016 10:15',
				from_doctor_id: '1',
				read: '1',
				type: '1'
			},
			{
				id: '6',
				content: 'Ducimus distinctio est iusto omnis perferendis possimus. Ut nesciunt commodi itaque nisi.',
				date_created: '06/10/2016 10:15',
				from_doctor_id: '1',
				read: '1',
				type: '1'
			}
		];*/


		$http.get(
			window.base_url + 'message/get-all?user_to_id=' + doctor_id
		).then(function(response) {
			data.messages = response.data;

			if(typeof callback !== 'undefined') {
				callback();
			}
		});
	};


	data.sendMessage = function(doctor_to_id, content, callback) {
		$http.post(
			window.base_url + 'message/save-message',
			{
				user_to_id: doctor_to_id,
				content: content,
				_csrf: document.getElementsByName('csrf-token')[0].content
			}
		).then(function(response) {
			if(response.data.success && typeof callback === 'function') {
				callback();
			}
		});
	};

	data.readMessagesOfDoctor = function(doctor_id, callback) {
		$http.post(
			window.base_url + 'message/read-messages',
			{
				user_to_id: doctor_id,
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