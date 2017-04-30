hospitalApp.directive('fullTableOld', ['$compile', 'globalData', function($compile, globalData) {
	return {
		replace: true,
		//templateUrl: '../js/directives/templates/fullTable.html',
		template: '<table class="table table-no-borders"></table></div>',
		scope: {
			table: '=',
			thead: '@'
		},
		controller: function($scope, $element) {

			$scope.globalData = globalData;

			/** work with new Item start **/
			$scope.newItem = {};

			$scope.setNewId = function() {
				if($scope.table.data.length !== 0) {
					$scope.newItem.id = parseInt($scope.table.data[$scope.table.data.length-1].id) + 1; // last id + 1
				} else {
					$scope.newItem.id = 1; //id will be 1
				}
			};

			$scope.generateNewItem = function() {
				angular.forEach($scope.table.config.fields, function(fieldOptions, fieldKey) {
					if(fieldKey == 'id') {
						$scope.setNewId();
					} else if(fieldOptions.type == 'select-input') {
						$scope.newItem[fieldKey] = '0';
					} else {
						$scope.newItem[fieldKey] = '';
					}
				});
			};


			$scope.generateNewItem();

			$scope.$watch(function() { return $scope.table.data }, function(newValue, oldValue) {
				$scope.setNewId();
			});
			/** work with new Item end **/
			var tempHtml = '';
			//build header
			if($scope.thead !== 'false') {
				tempHtml+= '<thead><tr>';//THEAD START

				//calculate width for each field
				var fields_count = 0;
				for(var prop in $scope.table.config.fields) {
					if($scope.table.config.fields.hasOwnProperty(prop) && $scope.table.config.fields[prop].hidden !== true)
						++fields_count;
					}
				var percent_width = ((100 / fields_count)-1) + '%';

				angular.forEach($scope.table.config.fields, function(fieldOptions, fieldKey) {
					if(fieldOptions.hidden) return false;

					if(fieldOptions.hasOwnProperty('percent_width')) {
						percent_width = fieldOptions.percent_width;
					}

					tempHtml+= '<th style="width:' + percent_width + '">' + fieldOptions.name + '</th>';
				});

				tempHtml += '<th></th></tr></thead>';//THEAD END

				$element.append(tempHtml);
			}


			tempHtml = '<tbody>'; //TBODY START

			//create form to add new items
			tempHtml+= '<tr>';

			angular.forEach($scope.table.config.fields, function(fieldOptions, fieldKey) {

				if(fieldOptions.hidden) return false;

				var directive_name = fieldOptions.type;
				tempHtml+= '<td><' + directive_name + ' field-options="table.config.fields.'+ fieldKey +'" field-value="newItem.'+ fieldKey +'"></' + directive_name + '></td>';
			});
			tempHtml+= '<td><button class="btn btn-success" ng-click="addItem()">' +
						'<span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button></td>';

			tempHtml+= '</tr>';

			//show the rest of table using directives
			tempHtml+= '<tr ng-repeat="(key, item) in table.data" ng-if="key !== \'id\'">';

			angular.forEach($scope.table.config.fields, function(fieldOptions, fieldKey) {

				if(fieldOptions.hidden) return false;

				var directive_name = fieldOptions.type;
				tempHtml+= '<td><' + directive_name + ' field-options="table.config.fields.'+ fieldKey +'" field-value="item.' + fieldKey + '"></' + directive_name + '></td>';
			});

			tempHtml+= '<td><button class="btn btn-danger" ng-click="removeItem(item)">'+
						'<span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button></td>';
			tempHtml+= '</tr>';

			tempHtml+= '</tbody>'; //TBODY END

			// compile everything to see working directives
			$element.append($compile(tempHtml)($scope));


			$scope.addItem = function() {
				//add newItem
				$scope.table.data.push(angular.copy($scope.newItem));

				//reset newItem array
				$scope.generateNewItem();
			};

			$scope.removeItem = function(item) {
				var index = $scope.table.data.indexOf(item);
				$scope.table.data.splice(index, 1);

				$scope.generateNewItem();
			};

		}
	};
}]);


/*
hospitalApp.directive('complexTable', function() {
	return {
		restrict: 'E',
		replace: true,
		transclude: true,
		template:
		'<table>' +
		'<tr>' +
		'<th ng-repeat="field in fields">{{field.title}}</th> ' +
		'</tr>' +
		'<tr ng-repeat="item in data" ng-transclude>' +
		'<td ng-repeat="field in fields">' +
		'{{field.title}}' +
		'</td>' +
		'</tr>' +
		'</table>',
		scope: {
			data: '='
		},
		controller: function($scope) {
			console.log($scope.data);
			$scope.newItem = {};
			$scope.fields = [];
		}
	};
});
hospitalApp.directive('complexField', function() {
	return {
		replace: true,
		template: '<div></div>',
		restrict: 'E',
		require: '^complexTable',
		link: function ($scope, element, attrs, controller) {
			$scope.fields = $scope.$parent.$parent.fields;

			*/
/*var exists = false;
			for (var idx = 0; idx < $scope.fields.length; idx++) {

				if ($scope.fields[idx].title === attrs.title) {
					exists = true;
					break;
				}
			}*//*


			//if (!exists) {
			$scope.fields.push({title: attrs.title, key: attrs.key});
			//}
		}
	};
});*/

//<div>
//Hi
//<complex-table data="testData">
//<complex-field title="ID" class="myClass" key="id" />
//<complex-field title="Name" class="myClass" key="name"/>
//</complex-table>
//</div>