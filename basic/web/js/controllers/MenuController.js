hospitalApp.controller('MenuController', ['$scope', 'messageData', '$interval', function($scope, messageData, $interval) {
	$scope.messageData = messageData;


	messageData.getNewMessagesCount();

	$interval(function() {
		messageData.getNewMessagesCount();
	}, 10000);
}]);