hospitalApp.controller('PatientController',
	['$http', '$scope', 'globalData', 'microReferralData', 'opatData', 'bloodCultureMainData', '$rootScope', '$timeout',
function($http, $scope, globalData, microReferralData, opatData, bloodCultureMainData, $rootScope, $timeout) {
	/**
	 * @see MicroReferralController, OPATController, BloodCultureController
	 */
	$scope.loadPatients();

	$scope.globalData = globalData;

	$timeout(function() {
		$('#patientsList').on('hidden.bs.modal', function () {
			if($(this).attr('data-mode') === 'manually') {
				$(this).attr('data-mode', '');
				return false;
			}

			$rootScope.$broadcast('setActionMode', {action: 'undo'});
		});
	});

	$scope.selectPatient = function(key) {
		$('#patientsList').attr('data-mode', 'manually').modal('hide');

		if(key == -1) return false; //create new

		var patient =  $scope.globalData.patientsFree[key];

		microReferralData.data.patient_id    = patient.id;
		opatData.data.patient_id             = patient.id;
		bloodCultureMainData.data.patient_id = patient.id;

		microReferralData.data.patient     = patient;
		opatData.data.patient              = patient;
		bloodCultureMainData.data.patient  = patient;
	};
}]);