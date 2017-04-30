hospitalApp.directive('toNumber', [function() {
	return {
		require: 'ngModel',
		link: function(scope, element, attrs, ngModel) {
			ngModel.$parsers.push(function(val) {
				return parseInt(val, 10);
			});
			ngModel.$formatters.push(function(val) {
				return '' + val;
			});
		}
	};
}]);
hospitalApp.directive('debugger', [function() {
	return {
		replace: true,
		template: '<div style="position: fixed; left: 20px; top: 8%; width: 340px; height: 600px;z-index: 9999999;overflow: scroll;" class="__debug_info">' +
		'<button data-toggle="collapse" data-target="#_debug" class="btn btn-warning">OpenDebug</button>' +
		'<pre id="_debug" class="collapse">{{ data | json }}</pre>' +
		'</div>',
		scope: {
			data: '='
		}
	}
}]);
hospitalApp.directive('jqueryUse', [function() {
	return function(scope, element, attrs) {
		setTimeout(function doWork(){
			/*jQuery(document).ready(function() {
			 jQuery('.jui-datepicker').datepicker();
			 });*/
			//some jquery work can be here
			console.log('test');
		}, 0);
	};
}]);

hospitalApp.directive('isolateForm', [function () {
	return {
		restrict: 'A',
		require: '?form',
		link: function (scope, elm, attrs, ctrl) {
			if (!ctrl) {
				return;
			}

			// Do a copy of the controller
			var ctrlCopy = {};
			angular.copy(ctrl, ctrlCopy);

			// Get the parent of the form
			var parent = elm.parent().controller('form');
			// Remove parent link to the controller
			parent.$removeControl(ctrl);

			// Replace form controller with a "isolated form"
			var isolatedFormCtrl = {
				$setValidity: function (validationToken, isValid, control) {
					ctrlCopy.$setValidity(validationToken, isValid, control);
					parent.$setValidity(validationToken, true, ctrl);
				},
				$setDirty: function () {
					elm.removeClass('ng-pristine').addClass('ng-dirty');
					ctrl.$dirty = true;
					ctrl.$pristine = false;
				},
			};
			angular.extend(ctrl, isolatedFormCtrl);
		}
	};
}]);