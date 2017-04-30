<?php

use yii\bootstrap\Button;
use yii\bootstrap\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */
/* @var $model yii\db\ActiveRecord */

$this->title = 'Micro Referrals';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="micro-referral-index" ng-controller="patientCtrl">
    <input type="hidden" id="mr_id" value="<?=$model->id?>"/>
    <div class="fixed container">
        <section class="actions-box row">
            <div class="left col-md-9">
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add New
                </button>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit
                </button>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete
                </button>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span> Search
                </button>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> Save
                </button>

                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> Previous
                </button>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> Next
                </button>
            </div>
            <div class="right text-right col-md-3">
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-list" aria-hidden="true"></span> View other notes
                </button>
            </div>
        </section>

        <section class="patient-box row">
            <div class="col-md-4">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="patient_surname">Surname</label></div>
                        <input id="patient_surname" type="text" class="form-control" placeholder="Surname"
                               ng-model="microReferral.patient.surname">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="mr_ward">Ward</label></div>
                        <input id="mr_ward" type="text" class="form-control" placeholder="Ward"
                               ng-model="microReferral.ward">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="mr_team_bleeps">Team Bleeps</label></div>
                        <input id="mr_team_bleeps" type="text" class="form-control" placeholder="Team Bleeps"
                               ng-model="microReferral.team_bleeps">
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="patient_name">Forename</label></div>
                        <input id="patient_name" type="text" class="form-control" placeholder="Forename"
                               ng-model="microReferral.patient.name">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="mr_referring_doctor">Referring Dr.</label></div>
                        <input id="mr_referring_doctor" type="text" class="form-control" placeholder="Referring Dr."
                               ng-model="microReferral.referring_doctor">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="mr_specialty_id">Specialty</label></div>
                        <select
                            class="form-control"
                            id="mr_specialty_id"
                            ng-model="microReferral.speciality_id">
                                <option selected>-- Select Speciality --</option>
                                <option ng-repeat="speciality in globalData.specialityList"
                                    ng-selected="speciality.id === 1"
                                    value="{{ speciality.id }}">{{ speciality.name }}</option>
                        </select>
                        <div class="input-group-addon">
                            <a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#specialityList" style="text-decoration: none;cursor: pointer;"></a>
                        </div>
                    </div>


                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="patient_date_birth">Date of Birth</label></div>

                        <input id="patient_date_birth" type="text" class="form-control" value="" uib-datepicker-popup="MM/dd/yyyy" ng-model="microReferral.patient.date_birth" is-open="isOpenCalendar" close-text="Close"  placeholder="Date of birth"/>
                        <div class="input-group-addon">
                            <i class="glyphicon glyphicon-calendar" ng-click="isOpenCalendar = !isOpenCalendar" style="cursor: pointer;"></i>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="patient_nhs_no">Hosp./NHS no.</label></div>
                        <input id="patient_nhs_no" type="text" class="form-control" placeholder="Hosp./NHS no."
                               ng-model="microReferral.patient.nhs_no">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><label for="mr_date_referral">Date of referral</label></div>
                        <input id="mr_date_referral" type="text" class="form-control" placeholder="Date of referral"
                               ng-model="microReferral.date_referral">
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="main">

        <div style="position: fixed; left: 20px; top: 20%; width: 340px; height: 400px;overflow: scroll;" class="__debug_info"><!--
         --><pre>{{ globalData.testTable | json }}</pre><!--
     --></div>
        <section class="reason-box">
            <div class="form-group">
                <div class="well well-sm text-center"><label for="mr_reason_id">Reason</label></div>
                <div class="input-group">

                    <select
                        class="form-control"
                        id="mr_reason_id"
                        ng-model="microReferral.reason_id">
                        <option selected>-- Select Reason --</option>
                        <option ng-repeat="reason in globalData.reasonList"
                                ng-selected="reason.id === 1"
                                value="{{ reason.id }}">{{ reason.name }}</option>
                    </select>
                    <div class="input-group-addon">
                        <a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#reasonList" style="text-decoration: none;cursor: pointer;"></a>
                    </div>
                </div>
            </div>
        </section>
        <section class="details-box">
            <div class="form-group">
                <div class="well well-sm text-center"><label for="mr_clinical_details">Clinical Details</label></div>
                <div class="input-group">
                    <textarea name="" id="mr_clinical_details" class="form-control" cols="30" rows="10" placeholder="Clinical Details"></textarea>
                </div>
            </div>
        </section>
        <section class="medical-history-box">
            <div class="form-group">
                <div class="well well-sm text-center"><label for="mr_medical_history">Relevant past medical history</label></div>
                <div class="input-group">
                    <textarea name="" id="mr_medical_history" class="form-control" cols="30" rows="10" placeholder="Clinical Details"></textarea>
                </div>
            </div>
        </section>
        <section class="bloods-box row">
            <div class="col-md-12">
                <div class="well well-sm text-center"><label for="mr_medical_history">Relevant Investigations (Inflammatory markers, imaging results)</label></div>
            </div>
            <div class="investigations col-md-4">
                <div class="form-group">
                    <div class="input-group">
                        <textarea name="" id="mr_medical_history" class="form-control" cols="30" rows="10" placeholder="Clinical Details"></textarea>
                    </div>
                </div>
            </div>
            <div class="bloods-table col-md-8">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>WCC</th>
                            <th>NO</th>
                            <th>CRP</th>
                            <th>EGPR</th>
                            <th>Others</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Date"/>
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></div>
                                </div>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="WCC"/>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="NO"/>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="CRP"/>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="EGPR"/>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="Others"/>
                            </td>
                            <td width="3%">
                                <div class="form-group">
                                    <button class="btn btn-success btn-sm"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Date" value="12.04.2016"/>
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></div>
                                </div>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="WCC" value="1"/>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="NO" value="2"/>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="CRP" value="3"/>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="EGPR" value="4"/>
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="Others" value="5"/>
                            </td>
                            <td width="3%">
                                <div class="form-group">
                                    <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        <section class="antimicrobical-terapy-box">
            <div class="well well-sm text-center"><label for="">Previous and current antimicrobial therapy</label></div>

            <table class="table">
                <thead>
                <tr>
                    <th>Agents</th>
                    <th>Date Commenced</th>
                    <th>Date Stop</th>
                    <th>Further info</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td width="20%">
                        <div class="input-group">
                            <select
                                class="form-control"
                                id="mr_agent_id"
                                ng-model="microReferral.agent_id">
                                <option selected>-- Select Agent --</option>
                                <option ng-repeat="agent in globalData.agentsList"
                                        ng-selected="agent.id === 1"
                                        value="{{ agent.id }}">{{ agent.name }}</option>
                            </select>
                            <div class="input-group-addon">
                                <a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#agentsList" style="text-decoration: none;cursor: pointer;"></a>
                            </div>
                        </div>
                    </td>
                    <td width="15%">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Date Commenced"/>
                            <div class="input-group-addon"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></div>
                        </div>
                    </td>
                    <td width="15%">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Date Stop"/>
                            <div class="input-group-addon"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></div>
                        </div>
                    </td>
                    <td width="45%">
                        <input type="text" class="form-control" placeholder="Futher info"/>
                    </td>
                    <td width="5%">
                        <div class="form-group">
                            <button class="btn btn-success btn-sm"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td width="15%">
                        <select name="" id="" class="form-control">
                            <option value="">Agent 1</option>
                            <option value="" selected>Agent 2</option>
                        </select>
                    </td>
                    <td width="15%">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Date Commenced" value="08.04.2016"/>
                            <div class="input-group-addon"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></div>
                        </div>
                    </td>
                    <td width="15%">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Date Stop" value="12.04.2016"/>
                            <div class="input-group-addon"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></div>
                        </div>
                    </td>
                    <td width="50%">
                        <input type="text" class="form-control" placeholder="Futher info" value="lorem lorem"/>
                    </td>
                    <td width="5%">
                        <div class="form-group">
                            <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </section>
        <section class="allergies-box">
            <div class="well well-sm text-center"><label for="">Previous and current antimicrobial therapy</label></div>
            <table class="table">
                <thead>
                <tr>
                    <th>Allergies/Drugs</th>
                    <th>Details of Reactions</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td width="30%">
                        <div class="input-group">
                            <select name="" id="" class="form-control">
                                <option value="">-- Select Allergy --</option>
                                <option value="">Allergy 1</option>
                                <option value="">Allergy 2</option>
                            </select>
                            <div class="input-group-addon"><span class="glyphicon glyphicon-plus-sign text-success" aria-hidden="true"></span></div>
                        </div>
                    </td>
                    <td width="65%">
                        <input type="text" class="form-control" placeholder="Details of reactions"/>
                    </td>
                    <td width="5%">
                        <div class="form-group">
                            <button class="btn btn-success btn-sm"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="input-group">
                            <select name="" id="" class="form-control">
                                <option value="">-- Select Allergy --</option>
                                <option value="" selected>Allergy 1</option>
                                <option value="">Allergy 2</option>
                            </select>
                        </div>
                    </td>
                    <td width="67%">
                        <input type="text" class="form-control" placeholder="Details of reactions" value="lorem1 lorem1"/>
                    </td>
                    <td width="3%">
                        <div class="form-group">
                            <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </section>
        <section class="plan-box row">
            <div class="clinical-advice col-md-8">
                <div class="well well-sm text-center"><label for="">Clinical Advice/Follow-up plan</label></div>
                <textarea name="" id="mr_clinical_details" class="form-control" cols="30" rows="10" placeholder="Clinical Details"></textarea>
            </div>
            <div class="attachments col-md-4">
                <div class="well well-sm text-center"><label for="">Attachements</label></div>
                <input class="form-group" type="file"/>
                <a href="#" class="thumbnail">
                    <img src="http://placehold.it/165x165" alt="...">
                </a>
            </div>
        </section>


        <simple-table title="Speciality" modal-id="specialityList" items-name="specialityList"></simple-table>
        <simple-table title="Agent" modal-id="agentsList" items-name="agentsList"></simple-table>
        <simple-table title="Allergy" modal-id="allergiesList" items-name="allergiesList"></simple-table>
        <simple-table title="Reason" modal-id="reasonList" items-name="reasonList"></simple-table>
    </div>
</div>



