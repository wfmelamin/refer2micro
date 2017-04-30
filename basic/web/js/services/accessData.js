hospitalApp.factory('accessData', ['$http', function($http) {
	var access = {
		data: {
			microReferralInterface: false,
			bloodCulturesInterface: false,
			opatInterface:          false,
			notificationsInterface: false,
			changeListTables:       false,
			changePatientDoctor:    false,
			changePatientHospital:  false,
			approveDoctors:         false
		}
	};

	access.getAccessData = function () {

		$http.get(
			window.base_url + '/user/get-access-data'
		).then(function (response) {
			if(response.data.success) {
				access.data = response.data.access_data
			}
		});
	};

	access.can = function(permission_name) {
		if(access.data.hasOwnProperty(permission_name)) {
			return access.data[permission_name];
		} else {
			return false;
		}
	};

	return access;
}]);