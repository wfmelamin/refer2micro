hospitalApp.controller('NotificationController', ['$scope', '$timeout', '$interval', 'doctorData', 'messageData', 'accessData',
function ($scope, $timeout, $interval, doctorData, messageData, accessData) {
	$scope.doctorData = doctorData;
	$scope.messageData = messageData;
	$scope.accessData = accessData;

	$scope._debug = {messageData: messageData, doctorData: doctorData};

	/* aggregate functions
	 ======================*/
	$scope.refreshAll = function() {
		doctorData.loadDoctors(function() {
			if(doctorData.selectedDoctor.hasOwnProperty('id')) {
				$scope.refreshSelectedDoctor();
				$scope.refreshMessages(function() {
					$scope.readNewMessages();
					moveToBottom();
				});
			}
		});
	};

	/* Work with messages
	 =====================*/
	$scope.sendMessage = function() {
		messageData.sendMessage(doctorData.selectedDoctor.id, messageData.message.content, function() {
			$scope.refreshMessages();
			messageData.message.content = '';
			moveToBottom();
		});
	};

	$scope.readNewMessages = function () {
		messageData.readMessagesOfDoctor(doctorData.selectedDoctor.id, function() {
			var doctor = doctorData.getDoctorItemByDoctorId(doctorData.selectedDoctor.id);
			doctor.new_messages_count = 0;
			messageData.getNewMessagesCount();
		});
	};

	$scope.refreshMessages = function(callback) {
		messageData.loadMessagesOfDoctor(doctorData.selectedDoctor.id, function() {
			if(typeof callback === 'function') {
				callback();
			}
		});
	};


	/* Work with doctors
	 ====================*/
	$scope.approveDoctor = function(doctor_id) {
		doctorData.approveDoctor(doctor_id, function() {
			$scope.refreshAll();
		});
	};

	$scope.disapproveDoctor = function(doctor_id) {
		doctorData.disapproveDoctor(doctor_id, function() {
			$scope.refreshAll();
		});
	};

	$scope.selectDoctor = function(doctor_id) {
		doctorData.selectedDoctor = doctorData.getDoctorItemByDoctorId(doctor_id);

		$scope.refreshAll();
	};

	$scope.refreshSelectedDoctor = function() {
		doctorData.selectedDoctor = doctorData.getDoctorItemByDoctorId(doctorData.selectedDoctor.id);
	};


	/* helper functions
	 ===================*/
	function moveToBottom() {
		$timeout(function() {
			var messages_box = $('.page_notifications .messages-box');
			messages_box.scrollTop(messages_box.prop("scrollHeight"));
		}, 100);
	}


	/* Init
	 =======*/
	$scope.refreshAll();


	var messagesCheckInterval = $interval(function() {
		$scope.refreshAll();
	}, 5000);

	$scope.$on('$destroy',function(){
		if(messagesCheckInterval)
			$interval.cancel(messagesCheckInterval);
	});

	accessData.getAccessData();
}]);