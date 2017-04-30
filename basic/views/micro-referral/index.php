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
<div class="micro-referral-index" ng-controller="patientCtrl" ng-cloak>
    <input type="hidden" id="mr_id" value="<?=$model->id?>"/>
    <div class="heading">
        <div class="progress">
            <div class="progress-bar {{loading.class}}" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
            </div>
        </div>
            <section class="actions-box row">
                <div class="col-md-12">
                    <div class="btn-group btn-group-justified" role="group">
                        <span class="heading-button btn btn-default" ng-click="actionMode.activate('add')" ng-disabled="!actionMode.add" ng-class="{'active':actionMode.value == 'add'}">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <span class="text">Add New</span>
                        </span>
                        <span class="heading-button btn btn-default" ng-click="actionMode.activate('edit')" ng-disabled="!actionMode.edit" ng-class="{'active':actionMode.value == 'edit'}">
                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> <span class="text">Edit</span>
                        </span>
                        <span class="heading-button btn btn-default" ng-click="actionMode.activate('remove')" ng-disabled="!actionMode.remove">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> <span class="text">Delete</span>
                        </span>
                        <span class="heading-button btn btn-default" ng-click="actionMode.activate('undo')" ng-disabled="!actionMode.undo">
                            <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> <span class="text">Undo</span>
                        </span>
                        <span class="heading-button btn btn-default"  ng-click="actionMode.activate('save')" ng-disabled="!actionMode.save">
                            <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> <span class="text">Save</span>
                        </span>
                        <span ng-click="actionMode.activate('previous')" class="heading-button btn btn-default" ng-disabled="!actionMode.previous">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="text">Previous</span>
                        </span>
                        <span ng-click="actionMode.activate('next')" class="heading-button btn btn-default" ng-disabled="!actionMode.next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="text">Next</span>
                        </span>
                    </div>
                </div>
            </section>
        <section>
        </section>
        <section class="patient-box row">
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="patient_surname">Surname</label></div>
<!--                            <input type="text" ng-model="microReferral.patient.surname"/>-->
                            <input id="patient_surname" type="text" class="form-control" placeholder="Surname"
                                   ng-model="microReferral.patient.surname"
                                   >
                            <div class="input-group-addon" style="cursor: pointer;" data-toggle="modal" data-target="#patientsSearchSurname"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="mr_ward">Ward</label></div>
                            <input id="mr_ward" type="text" class="form-control" placeholder="Ward"
                                   ng-model="microReferral.ward"
                                   ng-readonly="readOnly">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="mr_team_bleeps">Team Bleeps</label></div>
                            <input id="mr_team_bleeps" type="text" class="form-control" placeholder="Team Bleeps"
                                   ng-model="microReferral.team_bleeps"
                                   ng-readonly="readOnly">
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="patient_name">Forename</label></div>
                            <input id="patient_name" type="text" class="form-control" placeholder="Forename"
                                   ng-model="microReferral.patient.name"
                                   ng-readonly="readOnly">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="mr_referring_doctor">Referring Dr.</label></div>
                            <input id="mr_referring_doctor" type="text" class="form-control" placeholder="Referring Dr."
                                   ng-model="microReferral.referring_doctor"
                                   ng-readonly="readOnly">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="mr_specialty_id">Specialty</label></div>
                            <select
                                class="form-control"
                                id="mr_specialty_id"
                                ng-model="microReferral.specialty_id"
                                ng-disabled="readOnly" to-number>
                                <option selected value="0">-- Select Speciality --</option>
                                <option ng-repeat="specialty in globalData.specialtiesList"
                                        ng-selected="specialty.id == microReferral.specialty_id"
                                        value="{{ specialty.id }}">{{ specialty.name }}</option>
                            </select>
                            <div class="input-group-addon">
                                <a class="glyphicon glyphicon-plus-sign text-success" data-target="#specialtiesList" data-toggle="modal" style="text-decoration: none;cursor: pointer;"></a>
                            </div>
                        </div>


                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="patient_date_birth">Date of Birth</label></div>

                            <input id="patient_date_birth"
                                   type="text"
                                   class="form-control"
                                   bs-datepicker
                                   data-date-format="MM/dd/yyyy"
                                   data-model-date-format="MM/dd/yyyy"
                                   data-date-type="string"
                                   data-autoclose="1"
                                   value=""
                                   ng-model="microReferral.patient.date_birth"
                                   placeholder="Date of birth"
                                   ng-disabled="readOnly"/>

                            <div class="input-group-addon">
                                <label for="patient_date_birth" class="glyphicon glyphicon-calendar" style="cursor: pointer;margin-right: 10px;"></label>
                                <i class="glyphicon glyphicon-search" style="cursor: pointer;" data-toggle="modal" data-target="#patientsSearchDateBirth"></i>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="patient_nhs_no">Hosp./NHS no.</label></div>
                            <input id="patient_nhs_no" type="text" class="form-control" placeholder="Hosp./NHS no."
                                   ng-model="microReferral.patient.nhs_no"
                                   ng-readonly="readOnly">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-search" aria-hidden="true" data-toggle="modal" data-target="#patientsSearchNhsNo"></span></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><label for="mr_date_referral">Date of referral</label></div>

                            <input id="mr_date_referral"
                                   type="text"
                                   class="form-control"
                                   bs-datepicker
                                   data-date-format="MM/dd/yyyy"
                                   data-model-date-format="MM/dd/yyyy"
                                   data-date-type="string"
                                   data-autoclose="1"
                                   value=""
                                   ng-model="microReferral.date_referral"
                                   placeholder="Date of referral"
                                   ng-disabled="readOnly"/>

                            <div class="input-group-addon">
                                <label for="mr_date_referral" class="glyphicon glyphicon-calendar" style="cursor: pointer;"></label>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
    </div>
    <div class="main">

       <div style="position: fixed; left: 20px; top: 8%; width: 340px; height: 600px;z-index: 9999999;overflow: scroll;" class="__debug_info"><!--
         --><pre>{{ globalData | json }}</pre><!--
         --></div>
       <section class="reason-box row">
           <div class="col-md-3">
               <div class="well well-sm text-center"><label for="mr_other_notes">Other notes</label></div>
               <div class="form-group">
                   <button class="btn btn-default btn-block" id="mr_other_notes" data-toggle="modal" data-target="#notesTable" >
                       <span class="glyphicon glyphicon-list" aria-hidden="true"></span> View other notes
                   </button>
               </div>
           </div>
           <div class="col-md-9">
               <div class="well well-sm text-center"><label for="mr_reason_id">Reason</label></div>
               <div class="form-group">
                   <div class="input-group">
                       <select
                           class="form-control"
                           id="mr_reason_id"
                           ng-model="microReferral.reason_id"
                           ng-disabled="readOnly" to-number>
                           <option selected value="0">-- Select Reason --</option>
                           <option ng-repeat="reason in globalData.reasonsList"
                                   ng-selected="reason.id == microReferral.reason_id"
                                   value="{{ reason.id }}">{{ reason.name }}</option>
                       </select>
                       <div class="input-group-addon">
                           <a class="glyphicon glyphicon-plus-sign text-success" data-toggle="modal" data-target="#reasonsList" style="text-decoration: none;cursor: pointer;"></a>
                       </div>
                   </div>
               </div>
           </div>
       </section>
        <section class="details-box">
            <div class="form-group">
                <div class="well well-sm text-center"><label for="mr_clinical_details">Clinical Details</label></div>
                <div class="input-group">
                    <textarea name="" id="mr_clinical_details" class="form-control" cols="30" rows="10" placeholder="Clinical Details" ng-model="microReferral.clinical_details" ng-readonly="readOnly"></textarea>
                </div>
            </div>
        </section>
        <section class="medical-history-box">
            <div class="form-group">
                <div class="well well-sm text-center"><label for="mr_medical_history">Relevant past medical history</label></div>
                <div class="input-group">
                    <textarea name="" id="mr_medical_history" class="form-control" cols="30" rows="10" placeholder="Medical History" ng-model="microReferral.medical_history" ng-readonly="readOnly"></textarea>
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
                        <textarea name="" id="mr_medical_history" class="form-control" cols="30" rows="10" placeholder="Clinical Details" ng-model="microReferral.investigations" ng-readonly="readOnly"></textarea>
                    </div>
                </div>
            </div>
            <div class="bloods-table col-md-8">
                <full-table table-name="bloodsTable"></full-table>
            </div>
        </section>
        <section class="antimicrobical-terapy-box">
            <div class="well well-sm text-center"><label for="">Previous and current antimicrobial therapy</label></div>
            <full-table table-name="pcatTable"></full-table>
        </section>

        <section>
            <div class="well well-sm text-center"><label for="">Stewardship</label></div>
            <table class="table">
                <thead>
                <tr>
                    <th width="120px">
                        IDIC
                    </th>
                    <th width="120px">
                        SDIC
                    </th>
                    <th width="120px">
                        PPI
                    </th>
                    <th>R/V at:</th>
                    <th>Intervention</th>
                    <th>Outcomes</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default ">Yes</button>
                                <button type="button" class="btn btn-danger active">No</button>
                            </div>
                        </td>
                        <td>
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default">Yes</button>
                                <button type="button" class="btn btn-danger active">No</button>
                            </div>
                        </td>
                        <td>
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default">Yes</button>
                                <button type="button" class="btn btn-danger active">No</button>
                            </div>
                        </td>
                        <td>
                            <div class="input-group">
                                <select name="" id="" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option value=""> R/V 1</option>
                                    <option value=""> R/V 2</option>
                                </select>
                                <div class="input-group-addon">
                                    <a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#agentsList" style="text-decoration: none;cursor: pointer;"></a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="input-group">
                                <select name="" id="" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option value=""> R/V 1</option>
                                    <option value=""> R/V 2</option>
                                </select>
                                <div class="input-group-addon">
                                    <a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#agentsList" style="text-decoration: none;cursor: pointer;"></a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="input-group">
                                <select name="" id="" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option value=""> R/V 1</option>
                                    <option value=""> R/V 2</option>
                                </select>
                                <div class="input-group-addon">
                                    <a class="glyphicon glyphicon-plus-sign  text-success" data-toggle="modal" data-target="#agentsList" style="text-decoration: none;cursor: pointer;"></a>
                                </div>
                            </div>
                        </td>
                        <th><button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button></th>
                    </tr>
                    <tr>
                        <td>
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default">Yes</button>
                                <button type="button" class="btn btn-danger active">No</button>
                            </div>
                        </td>
                        <td>
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-success active">Yes</button>
                                <button type="button" class="btn btn-default">No</button>
                            </div>
                        </td>
                        <td>
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-success active">Yes</button>
                                <button type="button" class="btn btn-default">No</button>
                            </div>
                        </td>
                        <td>
                            <select name="" id="" class="form-control">
                                <option value="">-- Select --</option>
                                <option value="" selected> R/V 1</option>
                                <option value=""> R/V 2</option>
                            </select>
                        </td>
                        <td>
                            <select name="" id="" class="form-control">
                                <option value="">-- Select --</option>
                                <option value="" selected> Intervention 1</option>
                                <option value=""> R/V 2</option>
                            </select>
                        </td>
                        <td>
                            <select name="" id="" class="form-control">
                                <option value="">-- Select --</option>
                                <option value=""> R/V 1</option>
                                <option value="" selected> Outcome 2</option>
                            </select>
                        </td>
                        <th><button class="btn btn-success btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button></th>
                    </tr>
                </tbody>
            </table>
        </section>

        <section class="allergies-box">
            <div class="well well-sm text-center"><label for="">Allergies</label></div>
            <full-table table-name="allergiesTable"></full-table>
        </section>
        <section class="plan-box row">
            <div class="clinical-advice col-md-8">
                <div class="well well-sm text-center"><label for="">Clinical Advice/Follow-up plan</label></div>
                <textarea name="" id="mr_clinical_details" class="form-control" cols="30" rows="10" placeholder="Clinical Advice" ng-model="microReferral.clinical_advice" ng-readonly="readOnly"></textarea>
            </div>
            <div class="attachments col-md-4">
                <div class="well well-sm text-center"><label for="" class="text-warning">Attachements</label></div>
                <p class="text-warning">Temporary unavailable</p>
                <input  class="form-group" type="file" disabled/>
                <a href="javascript:void(0)" class="thumbnail">
                    <img src="http://placehold.it/165x165" alt="...">
                </a>
            </div>
        </section>

        <div class="modal fade" id="notesTable" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Follow Up Notes | <strong>Name: <em>{{microReferral.patient.name}} {{microReferral.patient.surname}}</em></strong></h4>
                    </div>
                    <div class="modal-body">
                        <full-table table-name="followupNotesTable"></full-table>
                    </div>
                </div>
            </div>
        </div>

        <search-modal table-name="patients" search-key="surname" title="Patients Surname" modal-id="patientsSearchSurname" search-result-keys="name,surname"></search-modal>
        <search-modal table-name="patients" search-key="date_birth" title="Date of Birth" modal-id="patientsSearchDateBirth" search-result-keys="date_birth,name,surname"></search-modal>
        <search-modal table-name="patients" search-key="nhs_no" title="NHS number" modal-id="patientsSearchNhsNo" search-result-keys="nhs_no,name,surname"></search-modal>

        <simple-table title="Speciality" modal-id="specialtiesList" items-name="specialtiesList"></simple-table>
        <simple-table title="Agent" modal-id="agentsList" items-name="agentsList"></simple-table>
        <simple-table title="Allergy" modal-id="allergiesList" items-name="allergiesList"></simple-table>
        <simple-table title="Reason" modal-id="reasonsList" items-name="reasonsList"></simple-table>

    </div>
</div>



