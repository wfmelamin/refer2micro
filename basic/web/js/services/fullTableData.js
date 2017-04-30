hospitalApp.factory('fullTableData', ['accessData', function (accessData) {
	return {
		pcatTable: {
			config: {
				fields: {
					id: {
						hidden: true
					},
					micro_referral_id: {
						hidden: true
					},
					agent_id: {
						name: 'Agent',
						type: 'select',
						itemsName: 'agentsList',
						addon: '<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#agentsList" style="text-decoration: none;cursor: pointer;"></a>',
						width: "120px",
						percent_width: "20%"
					},
					date_commenced: {
						name: 'Date Commenced',
						type: 'date',
						width: "140px",
						percent_width: "20%"
					},
					date_stop: {
						name: 'Date Stop',
						type: 'date',
						width: "160px",
						percent_width: "20%"
					},
					indication_id: {
						name: 'Indications',
						type: 'select',
						width: "140px",
						percent_width: "40%",
						itemsName: 'indicationsList',
						addon: '<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#indicationsList" style="text-decoration: none;cursor: pointer;"></a>',
					}

				}
			},
			data: []
		},

		bloodsTable: {
			config: {
				fields: {
					id: {
						name: 'ID',
						hidden: true
					},
					micro_referral_id: {
						hidden: true
					},
					date_created: {
						name: "Date",
						type: "date",
						width: "140px"
					},
					wcc: {
						name: "WCC",
						type: "text",
						width: "60px"
					},
					n0: {
						name: "N0",
						type: "text",
						width: "60px"
					},
					crp: {
						name: "CRP",
						type: "text",
						width: "60px"
					},
					egfr: {
						name: "EGFR",
						type: "text",
						width: "60px"
					},
					others: {
						name: "Others",
						type: "text",
						width: "60px"
					}
				}
			},
			data: []
		},

		allergiesTable: {
			config: {
				fields: {
					id: {
						hidden: true
					},
					micro_referral_id: {
						hidden: true
					},
					allergy_id: {
						name: 'Allergy',
						type: 'select',
						itemsName: 'allergiesList',
						addon: '<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#allergiesList" style="text-decoration: none;cursor: pointer;"></a>',
						width: "120px"
					},
					description: {
						name: 'Details of reactions',
						type: 'text',
						width: "120px"
					}
				}
			},
			data: []
		},

		followupNotesTable: {
			config: {
				fields: {
					id: {
						hidden: true
					},
					micro_referral_id: {
						hidden: true
					},
					date_created: {
						name: "Date",
						type: 'dateAttach',
						width: "140px"
					},
					note: {
						name: "Follow Up",
						type: 'textarea',
						width: "120px"
					}
				}
			},
			data: []
		},

		antibioticsTable: {
			data: [],
			newItem: []
		},

		bloodCulturesTable: {
			data: [],
			newItem: []
		},

		gramStainsTable: {
			config: {
				fields: {
					id: {
						hidden: true
					},
					blood_culture_id: {
						hidden: true
					},
					gram_stain_id: {
						name: 'Gram Stains',
						type: 'select',
						itemsName: 'gramStainsList',
						addon: '<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#gramStainsList" style="text-decoration: none;cursor: pointer;"></a>'
					}
				}
			},
			data: []
		},

		organismsTable: {
			config: {
				fields: {
					id: {
						hidden: true
					},
					blood_culture_id: {
						hidden: true
					},
					organism_id: {
						name: 'Organisms',
						type: 'select',
						itemsName: 'organismsList',
						addon: '<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#organismsList" style="text-decoration: none;cursor: pointer;"></a>'
					}
				}
			},
			data: []
		},

		stewardshipsTable: {
			config: {
				fields: {
					id: {
						hidden: true
					},
					micro_referral_id: {
						hidden: true
					},
					idic: {
						name: 'IDIC',
						type: 'bool',
						width: '80px',
						percent_width: '12%'
					},
					sdic: {
						name: 'SDIC',
						type: 'bool',
						width: '80px',
						percent_width: '12%'
					},
					ppi: {
						name: 'PPI',
						type: 'bool',
						width: '80px',
						percent_width: '12%'
					},
					rv_id: {
						name: 'R/V at',
						type: 'select',
						itemsName: 'rvsList',
						addon: '<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#rvsList" style="text-decoration: none;cursor: pointer;"></a>',
						width: '120px',
						percent_width: '21%'
					},
					intervention_id: {
						name: 'Intervention',
						type: 'select',
						itemsName: 'interventionsList',
						addon: '<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#interventionsList" style="text-decoration: none;cursor: pointer;"></a>',
						width: '120px',
						percent_width: '21%'
					},
					outcome_id: {
						name: 'Outcomes',
						type: 'select',
						itemsName: 'outcomesList',
						addon: '<a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#outcomesList" style="text-decoration: none;cursor: pointer;"></a>',
						width: '120px',
						percent_width: '22%'
					}
				}
			},
			data: []
		}
	};
}]);