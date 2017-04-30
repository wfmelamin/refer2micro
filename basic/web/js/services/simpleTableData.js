hospitalApp.factory('simpleTableData', [function() {
	return {
		// {id: 1, name: 'name 1'} for each table
		specialtiesList: [
			{
				id: "1",
				name: "test 1"
			},
			{
				id: "2",
				name: "test 2"
			}
		],
		agentsList: [],
		allergiesList: [],
		reasonsList: [],

		antibioticsList: [
			{
				id: "1",
				name: "test 1"
			},
			{
				id: "2",
				name: "test 2"
			}
		],

		referringConsultantsList: [],
		managingDoctorsList: [],
		commisioningBoardsList: [],
		vadTypesList: [],
		primaryInfectiveList: [],
		complicationsList: [],
		outcomesList: [],

		organismsList: [],
		significantsList: [],
		gramStainsList: [],

		rvsList: [],
		interventionsList: [],
		indicationsList: [],

		doctorsList: []
	};
}]);