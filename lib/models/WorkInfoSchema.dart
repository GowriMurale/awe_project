/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the WorkInfoSchema type in your schema. */
class WorkInfoSchema extends amplify_core.Model {
  static const classType = const _WorkInfoSchemaModelType();
  final String id;
  final String? _empID;
  final String? _dateOfJoin;
  final String? _department;
  final String? _workPosition;
  final String? _upgradePosition;
  final String? _jobDescription;
  final String? _skillPool;
  final String? _workStatus;
  final String? _contractStartDate;
  final String? _contractEndDate;
  final String? _contractPeriodStatus;
  final String? _probationaryStartDate;
  final String? _probationaryEndDate;
  final String? _normalWorkingHours;
  final String? _salaryType;
  final String? _employmentWorkStatus;
  final String? _resignationDate;
  final String? _terminationDate;
  final String? _terminationNoticeProbation;
  final String? _terminationNoticeConfirmation;
  final String? _resignationNoticeProbation;
  final String? _resignationNoticeConfirmation;
  final String? _reasonOfResignation;
  final String? _reasonOfTermination;
  final String? _destinationOfEntitlement;
  final String? _leavePassageEntitlement;
  final String? _dateOfEntitlement;
  final String? _durationPeriodEntitlement;
  final String? _annualLeaveEntitlement;
  final String? _effectiveDateRevision;
  final String? _sickLeaveEntitlement;
  final String? _jobCategory;
  final String? _otherJobCategory;
  final String? _upgradeDate;
  final String? _normalWorkingWeek;
  final String? _normalWorkingMonth;
  final String? _effectiveDateOfSickLeave;
  final String? _positionRevision;
  final String? _RevisionsalaryPackage;
  final String? _leavePassageEntitlementRevision;
  final String? _effectiveDateOfLeavePassage;
  final String? _revisionAnnualLeave;
  final String? _annualLeaveEffectDate;
  final String? _ContractEffectDate;
  final String? _contractOfEmployee;
  final String? _remarksWorkInfo;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  WorkInfoSchemaModelIdentifier get modelIdentifier {
      return WorkInfoSchemaModelIdentifier(
        id: id
      );
  }
  
  String get empID {
    try {
      return _empID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dateOfJoin {
    try {
      return _dateOfJoin!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get department {
    return _department;
  }
  
  String? get workPosition {
    return _workPosition;
  }
  
  String get upgradePosition {
    try {
      return _upgradePosition!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get jobDescription {
    try {
      return _jobDescription!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get skillPool {
    try {
      return _skillPool!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get workStatus {
    try {
      return _workStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractStartDate {
    try {
      return _contractStartDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractEndDate {
    try {
      return _contractEndDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractPeriodStatus {
    try {
      return _contractPeriodStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get probationaryStartDate {
    try {
      return _probationaryStartDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get probationaryEndDate {
    try {
      return _probationaryEndDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get normalWorkingHours {
    try {
      return _normalWorkingHours!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get salaryType {
    try {
      return _salaryType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get employmentWorkStatus {
    try {
      return _employmentWorkStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get resignationDate {
    try {
      return _resignationDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get terminationDate {
    try {
      return _terminationDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get terminationNoticeProbation {
    try {
      return _terminationNoticeProbation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get terminationNoticeConfirmation {
    try {
      return _terminationNoticeConfirmation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get resignationNoticeProbation {
    try {
      return _resignationNoticeProbation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get resignationNoticeConfirmation {
    try {
      return _resignationNoticeConfirmation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get reasonOfResignation {
    try {
      return _reasonOfResignation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get reasonOfTermination {
    try {
      return _reasonOfTermination!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get destinationOfEntitlement {
    try {
      return _destinationOfEntitlement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get leavePassageEntitlement {
    try {
      return _leavePassageEntitlement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dateOfEntitlement {
    try {
      return _dateOfEntitlement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get durationPeriodEntitlement {
    try {
      return _durationPeriodEntitlement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get annualLeaveEntitlement {
    try {
      return _annualLeaveEntitlement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get effectiveDateRevision {
    try {
      return _effectiveDateRevision!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get sickLeaveEntitlement {
    try {
      return _sickLeaveEntitlement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get jobCategory {
    try {
      return _jobCategory!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get otherJobCategory {
    return _otherJobCategory;
  }
  
  String get upgradeDate {
    try {
      return _upgradeDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get normalWorkingWeek {
    try {
      return _normalWorkingWeek!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get normalWorkingMonth {
    try {
      return _normalWorkingMonth!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get effectiveDateOfSickLeave {
    try {
      return _effectiveDateOfSickLeave!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get positionRevision {
    try {
      return _positionRevision!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get RevisionsalaryPackage {
    try {
      return _RevisionsalaryPackage!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get leavePassageEntitlementRevision {
    try {
      return _leavePassageEntitlementRevision!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get effectiveDateOfLeavePassage {
    try {
      return _effectiveDateOfLeavePassage!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get revisionAnnualLeave {
    try {
      return _revisionAnnualLeave!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get annualLeaveEffectDate {
    try {
      return _annualLeaveEffectDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get ContractEffectDate {
    try {
      return _ContractEffectDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractOfEmployee {
    try {
      return _contractOfEmployee!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get remarksWorkInfo {
    return _remarksWorkInfo;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const WorkInfoSchema._internal({required this.id, required empID, required dateOfJoin, department, workPosition, required upgradePosition, required jobDescription, required skillPool, required workStatus, required contractStartDate, required contractEndDate, required contractPeriodStatus, required probationaryStartDate, required probationaryEndDate, required normalWorkingHours, required salaryType, required employmentWorkStatus, required resignationDate, required terminationDate, required terminationNoticeProbation, required terminationNoticeConfirmation, required resignationNoticeProbation, required resignationNoticeConfirmation, required reasonOfResignation, required reasonOfTermination, required destinationOfEntitlement, required leavePassageEntitlement, required dateOfEntitlement, required durationPeriodEntitlement, required annualLeaveEntitlement, required effectiveDateRevision, required sickLeaveEntitlement, required jobCategory, otherJobCategory, required upgradeDate, required normalWorkingWeek, required normalWorkingMonth, required effectiveDateOfSickLeave, required positionRevision, required RevisionsalaryPackage, required leavePassageEntitlementRevision, required effectiveDateOfLeavePassage, required revisionAnnualLeave, required annualLeaveEffectDate, required ContractEffectDate, required contractOfEmployee, remarksWorkInfo, createdAt, updatedAt}): _empID = empID, _dateOfJoin = dateOfJoin, _department = department, _workPosition = workPosition, _upgradePosition = upgradePosition, _jobDescription = jobDescription, _skillPool = skillPool, _workStatus = workStatus, _contractStartDate = contractStartDate, _contractEndDate = contractEndDate, _contractPeriodStatus = contractPeriodStatus, _probationaryStartDate = probationaryStartDate, _probationaryEndDate = probationaryEndDate, _normalWorkingHours = normalWorkingHours, _salaryType = salaryType, _employmentWorkStatus = employmentWorkStatus, _resignationDate = resignationDate, _terminationDate = terminationDate, _terminationNoticeProbation = terminationNoticeProbation, _terminationNoticeConfirmation = terminationNoticeConfirmation, _resignationNoticeProbation = resignationNoticeProbation, _resignationNoticeConfirmation = resignationNoticeConfirmation, _reasonOfResignation = reasonOfResignation, _reasonOfTermination = reasonOfTermination, _destinationOfEntitlement = destinationOfEntitlement, _leavePassageEntitlement = leavePassageEntitlement, _dateOfEntitlement = dateOfEntitlement, _durationPeriodEntitlement = durationPeriodEntitlement, _annualLeaveEntitlement = annualLeaveEntitlement, _effectiveDateRevision = effectiveDateRevision, _sickLeaveEntitlement = sickLeaveEntitlement, _jobCategory = jobCategory, _otherJobCategory = otherJobCategory, _upgradeDate = upgradeDate, _normalWorkingWeek = normalWorkingWeek, _normalWorkingMonth = normalWorkingMonth, _effectiveDateOfSickLeave = effectiveDateOfSickLeave, _positionRevision = positionRevision, _RevisionsalaryPackage = RevisionsalaryPackage, _leavePassageEntitlementRevision = leavePassageEntitlementRevision, _effectiveDateOfLeavePassage = effectiveDateOfLeavePassage, _revisionAnnualLeave = revisionAnnualLeave, _annualLeaveEffectDate = annualLeaveEffectDate, _ContractEffectDate = ContractEffectDate, _contractOfEmployee = contractOfEmployee, _remarksWorkInfo = remarksWorkInfo, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory WorkInfoSchema({String? id, required String empID, required String dateOfJoin, String? department, String? workPosition, required String upgradePosition, required String jobDescription, required String skillPool, required String workStatus, required String contractStartDate, required String contractEndDate, required String contractPeriodStatus, required String probationaryStartDate, required String probationaryEndDate, required String normalWorkingHours, required String salaryType, required String employmentWorkStatus, required String resignationDate, required String terminationDate, required String terminationNoticeProbation, required String terminationNoticeConfirmation, required String resignationNoticeProbation, required String resignationNoticeConfirmation, required String reasonOfResignation, required String reasonOfTermination, required String destinationOfEntitlement, required String leavePassageEntitlement, required String dateOfEntitlement, required String durationPeriodEntitlement, required String annualLeaveEntitlement, required String effectiveDateRevision, required String sickLeaveEntitlement, required String jobCategory, String? otherJobCategory, required String upgradeDate, required String normalWorkingWeek, required String normalWorkingMonth, required String effectiveDateOfSickLeave, required String positionRevision, required String RevisionsalaryPackage, required String leavePassageEntitlementRevision, required String effectiveDateOfLeavePassage, required String revisionAnnualLeave, required String annualLeaveEffectDate, required String ContractEffectDate, required String contractOfEmployee, String? remarksWorkInfo}) {
    return WorkInfoSchema._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      dateOfJoin: dateOfJoin,
      department: department,
      workPosition: workPosition,
      upgradePosition: upgradePosition,
      jobDescription: jobDescription,
      skillPool: skillPool,
      workStatus: workStatus,
      contractStartDate: contractStartDate,
      contractEndDate: contractEndDate,
      contractPeriodStatus: contractPeriodStatus,
      probationaryStartDate: probationaryStartDate,
      probationaryEndDate: probationaryEndDate,
      normalWorkingHours: normalWorkingHours,
      salaryType: salaryType,
      employmentWorkStatus: employmentWorkStatus,
      resignationDate: resignationDate,
      terminationDate: terminationDate,
      terminationNoticeProbation: terminationNoticeProbation,
      terminationNoticeConfirmation: terminationNoticeConfirmation,
      resignationNoticeProbation: resignationNoticeProbation,
      resignationNoticeConfirmation: resignationNoticeConfirmation,
      reasonOfResignation: reasonOfResignation,
      reasonOfTermination: reasonOfTermination,
      destinationOfEntitlement: destinationOfEntitlement,
      leavePassageEntitlement: leavePassageEntitlement,
      dateOfEntitlement: dateOfEntitlement,
      durationPeriodEntitlement: durationPeriodEntitlement,
      annualLeaveEntitlement: annualLeaveEntitlement,
      effectiveDateRevision: effectiveDateRevision,
      sickLeaveEntitlement: sickLeaveEntitlement,
      jobCategory: jobCategory,
      otherJobCategory: otherJobCategory,
      upgradeDate: upgradeDate,
      normalWorkingWeek: normalWorkingWeek,
      normalWorkingMonth: normalWorkingMonth,
      effectiveDateOfSickLeave: effectiveDateOfSickLeave,
      positionRevision: positionRevision,
      RevisionsalaryPackage: RevisionsalaryPackage,
      leavePassageEntitlementRevision: leavePassageEntitlementRevision,
      effectiveDateOfLeavePassage: effectiveDateOfLeavePassage,
      revisionAnnualLeave: revisionAnnualLeave,
      annualLeaveEffectDate: annualLeaveEffectDate,
      ContractEffectDate: ContractEffectDate,
      contractOfEmployee: contractOfEmployee,
      remarksWorkInfo: remarksWorkInfo);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkInfoSchema &&
      id == other.id &&
      _empID == other._empID &&
      _dateOfJoin == other._dateOfJoin &&
      _department == other._department &&
      _workPosition == other._workPosition &&
      _upgradePosition == other._upgradePosition &&
      _jobDescription == other._jobDescription &&
      _skillPool == other._skillPool &&
      _workStatus == other._workStatus &&
      _contractStartDate == other._contractStartDate &&
      _contractEndDate == other._contractEndDate &&
      _contractPeriodStatus == other._contractPeriodStatus &&
      _probationaryStartDate == other._probationaryStartDate &&
      _probationaryEndDate == other._probationaryEndDate &&
      _normalWorkingHours == other._normalWorkingHours &&
      _salaryType == other._salaryType &&
      _employmentWorkStatus == other._employmentWorkStatus &&
      _resignationDate == other._resignationDate &&
      _terminationDate == other._terminationDate &&
      _terminationNoticeProbation == other._terminationNoticeProbation &&
      _terminationNoticeConfirmation == other._terminationNoticeConfirmation &&
      _resignationNoticeProbation == other._resignationNoticeProbation &&
      _resignationNoticeConfirmation == other._resignationNoticeConfirmation &&
      _reasonOfResignation == other._reasonOfResignation &&
      _reasonOfTermination == other._reasonOfTermination &&
      _destinationOfEntitlement == other._destinationOfEntitlement &&
      _leavePassageEntitlement == other._leavePassageEntitlement &&
      _dateOfEntitlement == other._dateOfEntitlement &&
      _durationPeriodEntitlement == other._durationPeriodEntitlement &&
      _annualLeaveEntitlement == other._annualLeaveEntitlement &&
      _effectiveDateRevision == other._effectiveDateRevision &&
      _sickLeaveEntitlement == other._sickLeaveEntitlement &&
      _jobCategory == other._jobCategory &&
      _otherJobCategory == other._otherJobCategory &&
      _upgradeDate == other._upgradeDate &&
      _normalWorkingWeek == other._normalWorkingWeek &&
      _normalWorkingMonth == other._normalWorkingMonth &&
      _effectiveDateOfSickLeave == other._effectiveDateOfSickLeave &&
      _positionRevision == other._positionRevision &&
      _RevisionsalaryPackage == other._RevisionsalaryPackage &&
      _leavePassageEntitlementRevision == other._leavePassageEntitlementRevision &&
      _effectiveDateOfLeavePassage == other._effectiveDateOfLeavePassage &&
      _revisionAnnualLeave == other._revisionAnnualLeave &&
      _annualLeaveEffectDate == other._annualLeaveEffectDate &&
      _ContractEffectDate == other._ContractEffectDate &&
      _contractOfEmployee == other._contractOfEmployee &&
      _remarksWorkInfo == other._remarksWorkInfo;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("WorkInfoSchema {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("dateOfJoin=" + "$_dateOfJoin" + ", ");
    buffer.write("department=" + "$_department" + ", ");
    buffer.write("workPosition=" + "$_workPosition" + ", ");
    buffer.write("upgradePosition=" + "$_upgradePosition" + ", ");
    buffer.write("jobDescription=" + "$_jobDescription" + ", ");
    buffer.write("skillPool=" + "$_skillPool" + ", ");
    buffer.write("workStatus=" + "$_workStatus" + ", ");
    buffer.write("contractStartDate=" + "$_contractStartDate" + ", ");
    buffer.write("contractEndDate=" + "$_contractEndDate" + ", ");
    buffer.write("contractPeriodStatus=" + "$_contractPeriodStatus" + ", ");
    buffer.write("probationaryStartDate=" + "$_probationaryStartDate" + ", ");
    buffer.write("probationaryEndDate=" + "$_probationaryEndDate" + ", ");
    buffer.write("normalWorkingHours=" + "$_normalWorkingHours" + ", ");
    buffer.write("salaryType=" + "$_salaryType" + ", ");
    buffer.write("employmentWorkStatus=" + "$_employmentWorkStatus" + ", ");
    buffer.write("resignationDate=" + "$_resignationDate" + ", ");
    buffer.write("terminationDate=" + "$_terminationDate" + ", ");
    buffer.write("terminationNoticeProbation=" + "$_terminationNoticeProbation" + ", ");
    buffer.write("terminationNoticeConfirmation=" + "$_terminationNoticeConfirmation" + ", ");
    buffer.write("resignationNoticeProbation=" + "$_resignationNoticeProbation" + ", ");
    buffer.write("resignationNoticeConfirmation=" + "$_resignationNoticeConfirmation" + ", ");
    buffer.write("reasonOfResignation=" + "$_reasonOfResignation" + ", ");
    buffer.write("reasonOfTermination=" + "$_reasonOfTermination" + ", ");
    buffer.write("destinationOfEntitlement=" + "$_destinationOfEntitlement" + ", ");
    buffer.write("leavePassageEntitlement=" + "$_leavePassageEntitlement" + ", ");
    buffer.write("dateOfEntitlement=" + "$_dateOfEntitlement" + ", ");
    buffer.write("durationPeriodEntitlement=" + "$_durationPeriodEntitlement" + ", ");
    buffer.write("annualLeaveEntitlement=" + "$_annualLeaveEntitlement" + ", ");
    buffer.write("effectiveDateRevision=" + "$_effectiveDateRevision" + ", ");
    buffer.write("sickLeaveEntitlement=" + "$_sickLeaveEntitlement" + ", ");
    buffer.write("jobCategory=" + "$_jobCategory" + ", ");
    buffer.write("otherJobCategory=" + "$_otherJobCategory" + ", ");
    buffer.write("upgradeDate=" + "$_upgradeDate" + ", ");
    buffer.write("normalWorkingWeek=" + "$_normalWorkingWeek" + ", ");
    buffer.write("normalWorkingMonth=" + "$_normalWorkingMonth" + ", ");
    buffer.write("effectiveDateOfSickLeave=" + "$_effectiveDateOfSickLeave" + ", ");
    buffer.write("positionRevision=" + "$_positionRevision" + ", ");
    buffer.write("RevisionsalaryPackage=" + "$_RevisionsalaryPackage" + ", ");
    buffer.write("leavePassageEntitlementRevision=" + "$_leavePassageEntitlementRevision" + ", ");
    buffer.write("effectiveDateOfLeavePassage=" + "$_effectiveDateOfLeavePassage" + ", ");
    buffer.write("revisionAnnualLeave=" + "$_revisionAnnualLeave" + ", ");
    buffer.write("annualLeaveEffectDate=" + "$_annualLeaveEffectDate" + ", ");
    buffer.write("ContractEffectDate=" + "$_ContractEffectDate" + ", ");
    buffer.write("contractOfEmployee=" + "$_contractOfEmployee" + ", ");
    buffer.write("remarksWorkInfo=" + "$_remarksWorkInfo" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  WorkInfoSchema copyWith({String? empID, String? dateOfJoin, String? department, String? workPosition, String? upgradePosition, String? jobDescription, String? skillPool, String? workStatus, String? contractStartDate, String? contractEndDate, String? contractPeriodStatus, String? probationaryStartDate, String? probationaryEndDate, String? normalWorkingHours, String? salaryType, String? employmentWorkStatus, String? resignationDate, String? terminationDate, String? terminationNoticeProbation, String? terminationNoticeConfirmation, String? resignationNoticeProbation, String? resignationNoticeConfirmation, String? reasonOfResignation, String? reasonOfTermination, String? destinationOfEntitlement, String? leavePassageEntitlement, String? dateOfEntitlement, String? durationPeriodEntitlement, String? annualLeaveEntitlement, String? effectiveDateRevision, String? sickLeaveEntitlement, String? jobCategory, String? otherJobCategory, String? upgradeDate, String? normalWorkingWeek, String? normalWorkingMonth, String? effectiveDateOfSickLeave, String? positionRevision, String? RevisionsalaryPackage, String? leavePassageEntitlementRevision, String? effectiveDateOfLeavePassage, String? revisionAnnualLeave, String? annualLeaveEffectDate, String? ContractEffectDate, String? contractOfEmployee, String? remarksWorkInfo}) {
    return WorkInfoSchema._internal(
      id: id,
      empID: empID ?? this.empID,
      dateOfJoin: dateOfJoin ?? this.dateOfJoin,
      department: department ?? this.department,
      workPosition: workPosition ?? this.workPosition,
      upgradePosition: upgradePosition ?? this.upgradePosition,
      jobDescription: jobDescription ?? this.jobDescription,
      skillPool: skillPool ?? this.skillPool,
      workStatus: workStatus ?? this.workStatus,
      contractStartDate: contractStartDate ?? this.contractStartDate,
      contractEndDate: contractEndDate ?? this.contractEndDate,
      contractPeriodStatus: contractPeriodStatus ?? this.contractPeriodStatus,
      probationaryStartDate: probationaryStartDate ?? this.probationaryStartDate,
      probationaryEndDate: probationaryEndDate ?? this.probationaryEndDate,
      normalWorkingHours: normalWorkingHours ?? this.normalWorkingHours,
      salaryType: salaryType ?? this.salaryType,
      employmentWorkStatus: employmentWorkStatus ?? this.employmentWorkStatus,
      resignationDate: resignationDate ?? this.resignationDate,
      terminationDate: terminationDate ?? this.terminationDate,
      terminationNoticeProbation: terminationNoticeProbation ?? this.terminationNoticeProbation,
      terminationNoticeConfirmation: terminationNoticeConfirmation ?? this.terminationNoticeConfirmation,
      resignationNoticeProbation: resignationNoticeProbation ?? this.resignationNoticeProbation,
      resignationNoticeConfirmation: resignationNoticeConfirmation ?? this.resignationNoticeConfirmation,
      reasonOfResignation: reasonOfResignation ?? this.reasonOfResignation,
      reasonOfTermination: reasonOfTermination ?? this.reasonOfTermination,
      destinationOfEntitlement: destinationOfEntitlement ?? this.destinationOfEntitlement,
      leavePassageEntitlement: leavePassageEntitlement ?? this.leavePassageEntitlement,
      dateOfEntitlement: dateOfEntitlement ?? this.dateOfEntitlement,
      durationPeriodEntitlement: durationPeriodEntitlement ?? this.durationPeriodEntitlement,
      annualLeaveEntitlement: annualLeaveEntitlement ?? this.annualLeaveEntitlement,
      effectiveDateRevision: effectiveDateRevision ?? this.effectiveDateRevision,
      sickLeaveEntitlement: sickLeaveEntitlement ?? this.sickLeaveEntitlement,
      jobCategory: jobCategory ?? this.jobCategory,
      otherJobCategory: otherJobCategory ?? this.otherJobCategory,
      upgradeDate: upgradeDate ?? this.upgradeDate,
      normalWorkingWeek: normalWorkingWeek ?? this.normalWorkingWeek,
      normalWorkingMonth: normalWorkingMonth ?? this.normalWorkingMonth,
      effectiveDateOfSickLeave: effectiveDateOfSickLeave ?? this.effectiveDateOfSickLeave,
      positionRevision: positionRevision ?? this.positionRevision,
      RevisionsalaryPackage: RevisionsalaryPackage ?? this.RevisionsalaryPackage,
      leavePassageEntitlementRevision: leavePassageEntitlementRevision ?? this.leavePassageEntitlementRevision,
      effectiveDateOfLeavePassage: effectiveDateOfLeavePassage ?? this.effectiveDateOfLeavePassage,
      revisionAnnualLeave: revisionAnnualLeave ?? this.revisionAnnualLeave,
      annualLeaveEffectDate: annualLeaveEffectDate ?? this.annualLeaveEffectDate,
      ContractEffectDate: ContractEffectDate ?? this.ContractEffectDate,
      contractOfEmployee: contractOfEmployee ?? this.contractOfEmployee,
      remarksWorkInfo: remarksWorkInfo ?? this.remarksWorkInfo);
  }
  
  WorkInfoSchema copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String>? dateOfJoin,
    ModelFieldValue<String?>? department,
    ModelFieldValue<String?>? workPosition,
    ModelFieldValue<String>? upgradePosition,
    ModelFieldValue<String>? jobDescription,
    ModelFieldValue<String>? skillPool,
    ModelFieldValue<String>? workStatus,
    ModelFieldValue<String>? contractStartDate,
    ModelFieldValue<String>? contractEndDate,
    ModelFieldValue<String>? contractPeriodStatus,
    ModelFieldValue<String>? probationaryStartDate,
    ModelFieldValue<String>? probationaryEndDate,
    ModelFieldValue<String>? normalWorkingHours,
    ModelFieldValue<String>? salaryType,
    ModelFieldValue<String>? employmentWorkStatus,
    ModelFieldValue<String>? resignationDate,
    ModelFieldValue<String>? terminationDate,
    ModelFieldValue<String>? terminationNoticeProbation,
    ModelFieldValue<String>? terminationNoticeConfirmation,
    ModelFieldValue<String>? resignationNoticeProbation,
    ModelFieldValue<String>? resignationNoticeConfirmation,
    ModelFieldValue<String>? reasonOfResignation,
    ModelFieldValue<String>? reasonOfTermination,
    ModelFieldValue<String>? destinationOfEntitlement,
    ModelFieldValue<String>? leavePassageEntitlement,
    ModelFieldValue<String>? dateOfEntitlement,
    ModelFieldValue<String>? durationPeriodEntitlement,
    ModelFieldValue<String>? annualLeaveEntitlement,
    ModelFieldValue<String>? effectiveDateRevision,
    ModelFieldValue<String>? sickLeaveEntitlement,
    ModelFieldValue<String>? jobCategory,
    ModelFieldValue<String?>? otherJobCategory,
    ModelFieldValue<String>? upgradeDate,
    ModelFieldValue<String>? normalWorkingWeek,
    ModelFieldValue<String>? normalWorkingMonth,
    ModelFieldValue<String>? effectiveDateOfSickLeave,
    ModelFieldValue<String>? positionRevision,
    ModelFieldValue<String>? RevisionsalaryPackage,
    ModelFieldValue<String>? leavePassageEntitlementRevision,
    ModelFieldValue<String>? effectiveDateOfLeavePassage,
    ModelFieldValue<String>? revisionAnnualLeave,
    ModelFieldValue<String>? annualLeaveEffectDate,
    ModelFieldValue<String>? ContractEffectDate,
    ModelFieldValue<String>? contractOfEmployee,
    ModelFieldValue<String?>? remarksWorkInfo
  }) {
    return WorkInfoSchema._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      dateOfJoin: dateOfJoin == null ? this.dateOfJoin : dateOfJoin.value,
      department: department == null ? this.department : department.value,
      workPosition: workPosition == null ? this.workPosition : workPosition.value,
      upgradePosition: upgradePosition == null ? this.upgradePosition : upgradePosition.value,
      jobDescription: jobDescription == null ? this.jobDescription : jobDescription.value,
      skillPool: skillPool == null ? this.skillPool : skillPool.value,
      workStatus: workStatus == null ? this.workStatus : workStatus.value,
      contractStartDate: contractStartDate == null ? this.contractStartDate : contractStartDate.value,
      contractEndDate: contractEndDate == null ? this.contractEndDate : contractEndDate.value,
      contractPeriodStatus: contractPeriodStatus == null ? this.contractPeriodStatus : contractPeriodStatus.value,
      probationaryStartDate: probationaryStartDate == null ? this.probationaryStartDate : probationaryStartDate.value,
      probationaryEndDate: probationaryEndDate == null ? this.probationaryEndDate : probationaryEndDate.value,
      normalWorkingHours: normalWorkingHours == null ? this.normalWorkingHours : normalWorkingHours.value,
      salaryType: salaryType == null ? this.salaryType : salaryType.value,
      employmentWorkStatus: employmentWorkStatus == null ? this.employmentWorkStatus : employmentWorkStatus.value,
      resignationDate: resignationDate == null ? this.resignationDate : resignationDate.value,
      terminationDate: terminationDate == null ? this.terminationDate : terminationDate.value,
      terminationNoticeProbation: terminationNoticeProbation == null ? this.terminationNoticeProbation : terminationNoticeProbation.value,
      terminationNoticeConfirmation: terminationNoticeConfirmation == null ? this.terminationNoticeConfirmation : terminationNoticeConfirmation.value,
      resignationNoticeProbation: resignationNoticeProbation == null ? this.resignationNoticeProbation : resignationNoticeProbation.value,
      resignationNoticeConfirmation: resignationNoticeConfirmation == null ? this.resignationNoticeConfirmation : resignationNoticeConfirmation.value,
      reasonOfResignation: reasonOfResignation == null ? this.reasonOfResignation : reasonOfResignation.value,
      reasonOfTermination: reasonOfTermination == null ? this.reasonOfTermination : reasonOfTermination.value,
      destinationOfEntitlement: destinationOfEntitlement == null ? this.destinationOfEntitlement : destinationOfEntitlement.value,
      leavePassageEntitlement: leavePassageEntitlement == null ? this.leavePassageEntitlement : leavePassageEntitlement.value,
      dateOfEntitlement: dateOfEntitlement == null ? this.dateOfEntitlement : dateOfEntitlement.value,
      durationPeriodEntitlement: durationPeriodEntitlement == null ? this.durationPeriodEntitlement : durationPeriodEntitlement.value,
      annualLeaveEntitlement: annualLeaveEntitlement == null ? this.annualLeaveEntitlement : annualLeaveEntitlement.value,
      effectiveDateRevision: effectiveDateRevision == null ? this.effectiveDateRevision : effectiveDateRevision.value,
      sickLeaveEntitlement: sickLeaveEntitlement == null ? this.sickLeaveEntitlement : sickLeaveEntitlement.value,
      jobCategory: jobCategory == null ? this.jobCategory : jobCategory.value,
      otherJobCategory: otherJobCategory == null ? this.otherJobCategory : otherJobCategory.value,
      upgradeDate: upgradeDate == null ? this.upgradeDate : upgradeDate.value,
      normalWorkingWeek: normalWorkingWeek == null ? this.normalWorkingWeek : normalWorkingWeek.value,
      normalWorkingMonth: normalWorkingMonth == null ? this.normalWorkingMonth : normalWorkingMonth.value,
      effectiveDateOfSickLeave: effectiveDateOfSickLeave == null ? this.effectiveDateOfSickLeave : effectiveDateOfSickLeave.value,
      positionRevision: positionRevision == null ? this.positionRevision : positionRevision.value,
      RevisionsalaryPackage: RevisionsalaryPackage == null ? this.RevisionsalaryPackage : RevisionsalaryPackage.value,
      leavePassageEntitlementRevision: leavePassageEntitlementRevision == null ? this.leavePassageEntitlementRevision : leavePassageEntitlementRevision.value,
      effectiveDateOfLeavePassage: effectiveDateOfLeavePassage == null ? this.effectiveDateOfLeavePassage : effectiveDateOfLeavePassage.value,
      revisionAnnualLeave: revisionAnnualLeave == null ? this.revisionAnnualLeave : revisionAnnualLeave.value,
      annualLeaveEffectDate: annualLeaveEffectDate == null ? this.annualLeaveEffectDate : annualLeaveEffectDate.value,
      ContractEffectDate: ContractEffectDate == null ? this.ContractEffectDate : ContractEffectDate.value,
      contractOfEmployee: contractOfEmployee == null ? this.contractOfEmployee : contractOfEmployee.value,
      remarksWorkInfo: remarksWorkInfo == null ? this.remarksWorkInfo : remarksWorkInfo.value
    );
  }
  
  WorkInfoSchema.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _dateOfJoin = json['dateOfJoin'],
      _department = json['department'],
      _workPosition = json['workPosition'],
      _upgradePosition = json['upgradePosition'],
      _jobDescription = json['jobDescription'],
      _skillPool = json['skillPool'],
      _workStatus = json['workStatus'],
      _contractStartDate = json['contractStartDate'],
      _contractEndDate = json['contractEndDate'],
      _contractPeriodStatus = json['contractPeriodStatus'],
      _probationaryStartDate = json['probationaryStartDate'],
      _probationaryEndDate = json['probationaryEndDate'],
      _normalWorkingHours = json['normalWorkingHours'],
      _salaryType = json['salaryType'],
      _employmentWorkStatus = json['employmentWorkStatus'],
      _resignationDate = json['resignationDate'],
      _terminationDate = json['terminationDate'],
      _terminationNoticeProbation = json['terminationNoticeProbation'],
      _terminationNoticeConfirmation = json['terminationNoticeConfirmation'],
      _resignationNoticeProbation = json['resignationNoticeProbation'],
      _resignationNoticeConfirmation = json['resignationNoticeConfirmation'],
      _reasonOfResignation = json['reasonOfResignation'],
      _reasonOfTermination = json['reasonOfTermination'],
      _destinationOfEntitlement = json['destinationOfEntitlement'],
      _leavePassageEntitlement = json['leavePassageEntitlement'],
      _dateOfEntitlement = json['dateOfEntitlement'],
      _durationPeriodEntitlement = json['durationPeriodEntitlement'],
      _annualLeaveEntitlement = json['annualLeaveEntitlement'],
      _effectiveDateRevision = json['effectiveDateRevision'],
      _sickLeaveEntitlement = json['sickLeaveEntitlement'],
      _jobCategory = json['jobCategory'],
      _otherJobCategory = json['otherJobCategory'],
      _upgradeDate = json['upgradeDate'],
      _normalWorkingWeek = json['normalWorkingWeek'],
      _normalWorkingMonth = json['normalWorkingMonth'],
      _effectiveDateOfSickLeave = json['effectiveDateOfSickLeave'],
      _positionRevision = json['positionRevision'],
      _RevisionsalaryPackage = json['RevisionsalaryPackage'],
      _leavePassageEntitlementRevision = json['leavePassageEntitlementRevision'],
      _effectiveDateOfLeavePassage = json['effectiveDateOfLeavePassage'],
      _revisionAnnualLeave = json['revisionAnnualLeave'],
      _annualLeaveEffectDate = json['annualLeaveEffectDate'],
      _ContractEffectDate = json['ContractEffectDate'],
      _contractOfEmployee = json['contractOfEmployee'],
      _remarksWorkInfo = json['remarksWorkInfo'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'dateOfJoin': _dateOfJoin, 'department': _department, 'workPosition': _workPosition, 'upgradePosition': _upgradePosition, 'jobDescription': _jobDescription, 'skillPool': _skillPool, 'workStatus': _workStatus, 'contractStartDate': _contractStartDate, 'contractEndDate': _contractEndDate, 'contractPeriodStatus': _contractPeriodStatus, 'probationaryStartDate': _probationaryStartDate, 'probationaryEndDate': _probationaryEndDate, 'normalWorkingHours': _normalWorkingHours, 'salaryType': _salaryType, 'employmentWorkStatus': _employmentWorkStatus, 'resignationDate': _resignationDate, 'terminationDate': _terminationDate, 'terminationNoticeProbation': _terminationNoticeProbation, 'terminationNoticeConfirmation': _terminationNoticeConfirmation, 'resignationNoticeProbation': _resignationNoticeProbation, 'resignationNoticeConfirmation': _resignationNoticeConfirmation, 'reasonOfResignation': _reasonOfResignation, 'reasonOfTermination': _reasonOfTermination, 'destinationOfEntitlement': _destinationOfEntitlement, 'leavePassageEntitlement': _leavePassageEntitlement, 'dateOfEntitlement': _dateOfEntitlement, 'durationPeriodEntitlement': _durationPeriodEntitlement, 'annualLeaveEntitlement': _annualLeaveEntitlement, 'effectiveDateRevision': _effectiveDateRevision, 'sickLeaveEntitlement': _sickLeaveEntitlement, 'jobCategory': _jobCategory, 'otherJobCategory': _otherJobCategory, 'upgradeDate': _upgradeDate, 'normalWorkingWeek': _normalWorkingWeek, 'normalWorkingMonth': _normalWorkingMonth, 'effectiveDateOfSickLeave': _effectiveDateOfSickLeave, 'positionRevision': _positionRevision, 'RevisionsalaryPackage': _RevisionsalaryPackage, 'leavePassageEntitlementRevision': _leavePassageEntitlementRevision, 'effectiveDateOfLeavePassage': _effectiveDateOfLeavePassage, 'revisionAnnualLeave': _revisionAnnualLeave, 'annualLeaveEffectDate': _annualLeaveEffectDate, 'ContractEffectDate': _ContractEffectDate, 'contractOfEmployee': _contractOfEmployee, 'remarksWorkInfo': _remarksWorkInfo, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'dateOfJoin': _dateOfJoin,
    'department': _department,
    'workPosition': _workPosition,
    'upgradePosition': _upgradePosition,
    'jobDescription': _jobDescription,
    'skillPool': _skillPool,
    'workStatus': _workStatus,
    'contractStartDate': _contractStartDate,
    'contractEndDate': _contractEndDate,
    'contractPeriodStatus': _contractPeriodStatus,
    'probationaryStartDate': _probationaryStartDate,
    'probationaryEndDate': _probationaryEndDate,
    'normalWorkingHours': _normalWorkingHours,
    'salaryType': _salaryType,
    'employmentWorkStatus': _employmentWorkStatus,
    'resignationDate': _resignationDate,
    'terminationDate': _terminationDate,
    'terminationNoticeProbation': _terminationNoticeProbation,
    'terminationNoticeConfirmation': _terminationNoticeConfirmation,
    'resignationNoticeProbation': _resignationNoticeProbation,
    'resignationNoticeConfirmation': _resignationNoticeConfirmation,
    'reasonOfResignation': _reasonOfResignation,
    'reasonOfTermination': _reasonOfTermination,
    'destinationOfEntitlement': _destinationOfEntitlement,
    'leavePassageEntitlement': _leavePassageEntitlement,
    'dateOfEntitlement': _dateOfEntitlement,
    'durationPeriodEntitlement': _durationPeriodEntitlement,
    'annualLeaveEntitlement': _annualLeaveEntitlement,
    'effectiveDateRevision': _effectiveDateRevision,
    'sickLeaveEntitlement': _sickLeaveEntitlement,
    'jobCategory': _jobCategory,
    'otherJobCategory': _otherJobCategory,
    'upgradeDate': _upgradeDate,
    'normalWorkingWeek': _normalWorkingWeek,
    'normalWorkingMonth': _normalWorkingMonth,
    'effectiveDateOfSickLeave': _effectiveDateOfSickLeave,
    'positionRevision': _positionRevision,
    'RevisionsalaryPackage': _RevisionsalaryPackage,
    'leavePassageEntitlementRevision': _leavePassageEntitlementRevision,
    'effectiveDateOfLeavePassage': _effectiveDateOfLeavePassage,
    'revisionAnnualLeave': _revisionAnnualLeave,
    'annualLeaveEffectDate': _annualLeaveEffectDate,
    'ContractEffectDate': _ContractEffectDate,
    'contractOfEmployee': _contractOfEmployee,
    'remarksWorkInfo': _remarksWorkInfo,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<WorkInfoSchemaModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<WorkInfoSchemaModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final DATEOFJOIN = amplify_core.QueryField(fieldName: "dateOfJoin");
  static final DEPARTMENT = amplify_core.QueryField(fieldName: "department");
  static final WORKPOSITION = amplify_core.QueryField(fieldName: "workPosition");
  static final UPGRADEPOSITION = amplify_core.QueryField(fieldName: "upgradePosition");
  static final JOBDESCRIPTION = amplify_core.QueryField(fieldName: "jobDescription");
  static final SKILLPOOL = amplify_core.QueryField(fieldName: "skillPool");
  static final WORKSTATUS = amplify_core.QueryField(fieldName: "workStatus");
  static final CONTRACTSTARTDATE = amplify_core.QueryField(fieldName: "contractStartDate");
  static final CONTRACTENDDATE = amplify_core.QueryField(fieldName: "contractEndDate");
  static final CONTRACTPERIODSTATUS = amplify_core.QueryField(fieldName: "contractPeriodStatus");
  static final PROBATIONARYSTARTDATE = amplify_core.QueryField(fieldName: "probationaryStartDate");
  static final PROBATIONARYENDDATE = amplify_core.QueryField(fieldName: "probationaryEndDate");
  static final NORMALWORKINGHOURS = amplify_core.QueryField(fieldName: "normalWorkingHours");
  static final SALARYTYPE = amplify_core.QueryField(fieldName: "salaryType");
  static final EMPLOYMENTWORKSTATUS = amplify_core.QueryField(fieldName: "employmentWorkStatus");
  static final RESIGNATIONDATE = amplify_core.QueryField(fieldName: "resignationDate");
  static final TERMINATIONDATE = amplify_core.QueryField(fieldName: "terminationDate");
  static final TERMINATIONNOTICEPROBATION = amplify_core.QueryField(fieldName: "terminationNoticeProbation");
  static final TERMINATIONNOTICECONFIRMATION = amplify_core.QueryField(fieldName: "terminationNoticeConfirmation");
  static final RESIGNATIONNOTICEPROBATION = amplify_core.QueryField(fieldName: "resignationNoticeProbation");
  static final RESIGNATIONNOTICECONFIRMATION = amplify_core.QueryField(fieldName: "resignationNoticeConfirmation");
  static final REASONOFRESIGNATION = amplify_core.QueryField(fieldName: "reasonOfResignation");
  static final REASONOFTERMINATION = amplify_core.QueryField(fieldName: "reasonOfTermination");
  static final DESTINATIONOFENTITLEMENT = amplify_core.QueryField(fieldName: "destinationOfEntitlement");
  static final LEAVEPASSAGEENTITLEMENT = amplify_core.QueryField(fieldName: "leavePassageEntitlement");
  static final DATEOFENTITLEMENT = amplify_core.QueryField(fieldName: "dateOfEntitlement");
  static final DURATIONPERIODENTITLEMENT = amplify_core.QueryField(fieldName: "durationPeriodEntitlement");
  static final ANNUALLEAVEENTITLEMENT = amplify_core.QueryField(fieldName: "annualLeaveEntitlement");
  static final EFFECTIVEDATEREVISION = amplify_core.QueryField(fieldName: "effectiveDateRevision");
  static final SICKLEAVEENTITLEMENT = amplify_core.QueryField(fieldName: "sickLeaveEntitlement");
  static final JOBCATEGORY = amplify_core.QueryField(fieldName: "jobCategory");
  static final OTHERJOBCATEGORY = amplify_core.QueryField(fieldName: "otherJobCategory");
  static final UPGRADEDATE = amplify_core.QueryField(fieldName: "upgradeDate");
  static final NORMALWORKINGWEEK = amplify_core.QueryField(fieldName: "normalWorkingWeek");
  static final NORMALWORKINGMONTH = amplify_core.QueryField(fieldName: "normalWorkingMonth");
  static final EFFECTIVEDATEOFSICKLEAVE = amplify_core.QueryField(fieldName: "effectiveDateOfSickLeave");
  static final POSITIONREVISION = amplify_core.QueryField(fieldName: "positionRevision");
  static final REVISIONSALARYPACKAGE = amplify_core.QueryField(fieldName: "RevisionsalaryPackage");
  static final LEAVEPASSAGEENTITLEMENTREVISION = amplify_core.QueryField(fieldName: "leavePassageEntitlementRevision");
  static final EFFECTIVEDATEOFLEAVEPASSAGE = amplify_core.QueryField(fieldName: "effectiveDateOfLeavePassage");
  static final REVISIONANNUALLEAVE = amplify_core.QueryField(fieldName: "revisionAnnualLeave");
  static final ANNUALLEAVEEFFECTDATE = amplify_core.QueryField(fieldName: "annualLeaveEffectDate");
  static final CONTRACTEFFECTDATE = amplify_core.QueryField(fieldName: "ContractEffectDate");
  static final CONTRACTOFEMPLOYEE = amplify_core.QueryField(fieldName: "contractOfEmployee");
  static final REMARKSWORKINFO = amplify_core.QueryField(fieldName: "remarksWorkInfo");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "WorkInfoSchema";
    modelSchemaDefinition.pluralName = "WorkInfoSchemas";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.DATEOFJOIN,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.DEPARTMENT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.WORKPOSITION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.UPGRADEPOSITION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.JOBDESCRIPTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.SKILLPOOL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.WORKSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.CONTRACTSTARTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.CONTRACTENDDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.CONTRACTPERIODSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.PROBATIONARYSTARTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.PROBATIONARYENDDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.NORMALWORKINGHOURS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.SALARYTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.EMPLOYMENTWORKSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.RESIGNATIONDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.TERMINATIONDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.TERMINATIONNOTICEPROBATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.TERMINATIONNOTICECONFIRMATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.RESIGNATIONNOTICEPROBATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.RESIGNATIONNOTICECONFIRMATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.REASONOFRESIGNATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.REASONOFTERMINATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.DESTINATIONOFENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.LEAVEPASSAGEENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.DATEOFENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.DURATIONPERIODENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.ANNUALLEAVEENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.EFFECTIVEDATEREVISION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.SICKLEAVEENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.JOBCATEGORY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.OTHERJOBCATEGORY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.UPGRADEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.NORMALWORKINGWEEK,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.NORMALWORKINGMONTH,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.EFFECTIVEDATEOFSICKLEAVE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.POSITIONREVISION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.REVISIONSALARYPACKAGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.LEAVEPASSAGEENTITLEMENTREVISION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.EFFECTIVEDATEOFLEAVEPASSAGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.REVISIONANNUALLEAVE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.ANNUALLEAVEEFFECTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.CONTRACTEFFECTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.CONTRACTOFEMPLOYEE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: WorkInfoSchema.REMARKSWORKINFO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _WorkInfoSchemaModelType extends amplify_core.ModelType<WorkInfoSchema> {
  const _WorkInfoSchemaModelType();
  
  @override
  WorkInfoSchema fromJson(Map<String, dynamic> jsonData) {
    return WorkInfoSchema.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'WorkInfoSchema';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [WorkInfoSchema] in your schema.
 */
class WorkInfoSchemaModelIdentifier implements amplify_core.ModelIdentifier<WorkInfoSchema> {
  final String id;

  /** Create an instance of WorkInfoSchemaModelIdentifier using [id] the primary key. */
  const WorkInfoSchemaModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'WorkInfoSchemaModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is WorkInfoSchemaModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}