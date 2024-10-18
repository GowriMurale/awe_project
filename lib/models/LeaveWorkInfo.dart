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


/** This is an auto generated class representing the LeaveWorkInfo type in your schema. */
class LeaveWorkInfo extends amplify_core.Model {
  static const classType = const _LeaveWorkInfoModelType();
  final String id;
  final String? _leavePassageEntitlement;
  final String? _annualLeaveEntitlement;
  final String? _annualLeaveEffectDate;
  final String? _sickLeaveEntitlement;
  final String? _effectiveDateOfSickLeave;
  final String? _positionRevision;
  final String? _revisionSalaryPackage;
  final String? _leavePassageEntitlementRevision;
  final String? _effectiveDateOfLeavePassage;
  final String? _revisionAnnualLeave;
  final String? _annualEntitlementeffectiveDate;
  final String? _contractEffectDate;
  final String? _contractOfEmployee;
  final String? _remarksWorkInfo;
  final String? _empID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  LeaveWorkInfoModelIdentifier get modelIdentifier {
      return LeaveWorkInfoModelIdentifier(
        id: id
      );
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
  
  String get revisionSalaryPackage {
    try {
      return _revisionSalaryPackage!;
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
  
  String get annualEntitlementeffectiveDate {
    try {
      return _annualEntitlementeffectiveDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractEffectDate {
    try {
      return _contractEffectDate!;
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const LeaveWorkInfo._internal({required this.id, required leavePassageEntitlement, required annualLeaveEntitlement, required annualLeaveEffectDate, required sickLeaveEntitlement, required effectiveDateOfSickLeave, required positionRevision, required revisionSalaryPackage, required leavePassageEntitlementRevision, required effectiveDateOfLeavePassage, required revisionAnnualLeave, required annualEntitlementeffectiveDate, required contractEffectDate, required contractOfEmployee, remarksWorkInfo, required empID, createdAt, updatedAt}): _leavePassageEntitlement = leavePassageEntitlement, _annualLeaveEntitlement = annualLeaveEntitlement, _annualLeaveEffectDate = annualLeaveEffectDate, _sickLeaveEntitlement = sickLeaveEntitlement, _effectiveDateOfSickLeave = effectiveDateOfSickLeave, _positionRevision = positionRevision, _revisionSalaryPackage = revisionSalaryPackage, _leavePassageEntitlementRevision = leavePassageEntitlementRevision, _effectiveDateOfLeavePassage = effectiveDateOfLeavePassage, _revisionAnnualLeave = revisionAnnualLeave, _annualEntitlementeffectiveDate = annualEntitlementeffectiveDate, _contractEffectDate = contractEffectDate, _contractOfEmployee = contractOfEmployee, _remarksWorkInfo = remarksWorkInfo, _empID = empID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory LeaveWorkInfo({String? id, required String leavePassageEntitlement, required String annualLeaveEntitlement, required String annualLeaveEffectDate, required String sickLeaveEntitlement, required String effectiveDateOfSickLeave, required String positionRevision, required String revisionSalaryPackage, required String leavePassageEntitlementRevision, required String effectiveDateOfLeavePassage, required String revisionAnnualLeave, required String annualEntitlementeffectiveDate, required String contractEffectDate, required String contractOfEmployee, String? remarksWorkInfo, required String empID}) {
    return LeaveWorkInfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      leavePassageEntitlement: leavePassageEntitlement,
      annualLeaveEntitlement: annualLeaveEntitlement,
      annualLeaveEffectDate: annualLeaveEffectDate,
      sickLeaveEntitlement: sickLeaveEntitlement,
      effectiveDateOfSickLeave: effectiveDateOfSickLeave,
      positionRevision: positionRevision,
      revisionSalaryPackage: revisionSalaryPackage,
      leavePassageEntitlementRevision: leavePassageEntitlementRevision,
      effectiveDateOfLeavePassage: effectiveDateOfLeavePassage,
      revisionAnnualLeave: revisionAnnualLeave,
      annualEntitlementeffectiveDate: annualEntitlementeffectiveDate,
      contractEffectDate: contractEffectDate,
      contractOfEmployee: contractOfEmployee,
      remarksWorkInfo: remarksWorkInfo,
      empID: empID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaveWorkInfo &&
      id == other.id &&
      _leavePassageEntitlement == other._leavePassageEntitlement &&
      _annualLeaveEntitlement == other._annualLeaveEntitlement &&
      _annualLeaveEffectDate == other._annualLeaveEffectDate &&
      _sickLeaveEntitlement == other._sickLeaveEntitlement &&
      _effectiveDateOfSickLeave == other._effectiveDateOfSickLeave &&
      _positionRevision == other._positionRevision &&
      _revisionSalaryPackage == other._revisionSalaryPackage &&
      _leavePassageEntitlementRevision == other._leavePassageEntitlementRevision &&
      _effectiveDateOfLeavePassage == other._effectiveDateOfLeavePassage &&
      _revisionAnnualLeave == other._revisionAnnualLeave &&
      _annualEntitlementeffectiveDate == other._annualEntitlementeffectiveDate &&
      _contractEffectDate == other._contractEffectDate &&
      _contractOfEmployee == other._contractOfEmployee &&
      _remarksWorkInfo == other._remarksWorkInfo &&
      _empID == other._empID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("LeaveWorkInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("leavePassageEntitlement=" + "$_leavePassageEntitlement" + ", ");
    buffer.write("annualLeaveEntitlement=" + "$_annualLeaveEntitlement" + ", ");
    buffer.write("annualLeaveEffectDate=" + "$_annualLeaveEffectDate" + ", ");
    buffer.write("sickLeaveEntitlement=" + "$_sickLeaveEntitlement" + ", ");
    buffer.write("effectiveDateOfSickLeave=" + "$_effectiveDateOfSickLeave" + ", ");
    buffer.write("positionRevision=" + "$_positionRevision" + ", ");
    buffer.write("revisionSalaryPackage=" + "$_revisionSalaryPackage" + ", ");
    buffer.write("leavePassageEntitlementRevision=" + "$_leavePassageEntitlementRevision" + ", ");
    buffer.write("effectiveDateOfLeavePassage=" + "$_effectiveDateOfLeavePassage" + ", ");
    buffer.write("revisionAnnualLeave=" + "$_revisionAnnualLeave" + ", ");
    buffer.write("annualEntitlementeffectiveDate=" + "$_annualEntitlementeffectiveDate" + ", ");
    buffer.write("contractEffectDate=" + "$_contractEffectDate" + ", ");
    buffer.write("contractOfEmployee=" + "$_contractOfEmployee" + ", ");
    buffer.write("remarksWorkInfo=" + "$_remarksWorkInfo" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  LeaveWorkInfo copyWith({String? leavePassageEntitlement, String? annualLeaveEntitlement, String? annualLeaveEffectDate, String? sickLeaveEntitlement, String? effectiveDateOfSickLeave, String? positionRevision, String? revisionSalaryPackage, String? leavePassageEntitlementRevision, String? effectiveDateOfLeavePassage, String? revisionAnnualLeave, String? annualEntitlementeffectiveDate, String? contractEffectDate, String? contractOfEmployee, String? remarksWorkInfo, String? empID}) {
    return LeaveWorkInfo._internal(
      id: id,
      leavePassageEntitlement: leavePassageEntitlement ?? this.leavePassageEntitlement,
      annualLeaveEntitlement: annualLeaveEntitlement ?? this.annualLeaveEntitlement,
      annualLeaveEffectDate: annualLeaveEffectDate ?? this.annualLeaveEffectDate,
      sickLeaveEntitlement: sickLeaveEntitlement ?? this.sickLeaveEntitlement,
      effectiveDateOfSickLeave: effectiveDateOfSickLeave ?? this.effectiveDateOfSickLeave,
      positionRevision: positionRevision ?? this.positionRevision,
      revisionSalaryPackage: revisionSalaryPackage ?? this.revisionSalaryPackage,
      leavePassageEntitlementRevision: leavePassageEntitlementRevision ?? this.leavePassageEntitlementRevision,
      effectiveDateOfLeavePassage: effectiveDateOfLeavePassage ?? this.effectiveDateOfLeavePassage,
      revisionAnnualLeave: revisionAnnualLeave ?? this.revisionAnnualLeave,
      annualEntitlementeffectiveDate: annualEntitlementeffectiveDate ?? this.annualEntitlementeffectiveDate,
      contractEffectDate: contractEffectDate ?? this.contractEffectDate,
      contractOfEmployee: contractOfEmployee ?? this.contractOfEmployee,
      remarksWorkInfo: remarksWorkInfo ?? this.remarksWorkInfo,
      empID: empID ?? this.empID);
  }
  
  LeaveWorkInfo copyWithModelFieldValues({
    ModelFieldValue<String>? leavePassageEntitlement,
    ModelFieldValue<String>? annualLeaveEntitlement,
    ModelFieldValue<String>? annualLeaveEffectDate,
    ModelFieldValue<String>? sickLeaveEntitlement,
    ModelFieldValue<String>? effectiveDateOfSickLeave,
    ModelFieldValue<String>? positionRevision,
    ModelFieldValue<String>? revisionSalaryPackage,
    ModelFieldValue<String>? leavePassageEntitlementRevision,
    ModelFieldValue<String>? effectiveDateOfLeavePassage,
    ModelFieldValue<String>? revisionAnnualLeave,
    ModelFieldValue<String>? annualEntitlementeffectiveDate,
    ModelFieldValue<String>? contractEffectDate,
    ModelFieldValue<String>? contractOfEmployee,
    ModelFieldValue<String?>? remarksWorkInfo,
    ModelFieldValue<String>? empID
  }) {
    return LeaveWorkInfo._internal(
      id: id,
      leavePassageEntitlement: leavePassageEntitlement == null ? this.leavePassageEntitlement : leavePassageEntitlement.value,
      annualLeaveEntitlement: annualLeaveEntitlement == null ? this.annualLeaveEntitlement : annualLeaveEntitlement.value,
      annualLeaveEffectDate: annualLeaveEffectDate == null ? this.annualLeaveEffectDate : annualLeaveEffectDate.value,
      sickLeaveEntitlement: sickLeaveEntitlement == null ? this.sickLeaveEntitlement : sickLeaveEntitlement.value,
      effectiveDateOfSickLeave: effectiveDateOfSickLeave == null ? this.effectiveDateOfSickLeave : effectiveDateOfSickLeave.value,
      positionRevision: positionRevision == null ? this.positionRevision : positionRevision.value,
      revisionSalaryPackage: revisionSalaryPackage == null ? this.revisionSalaryPackage : revisionSalaryPackage.value,
      leavePassageEntitlementRevision: leavePassageEntitlementRevision == null ? this.leavePassageEntitlementRevision : leavePassageEntitlementRevision.value,
      effectiveDateOfLeavePassage: effectiveDateOfLeavePassage == null ? this.effectiveDateOfLeavePassage : effectiveDateOfLeavePassage.value,
      revisionAnnualLeave: revisionAnnualLeave == null ? this.revisionAnnualLeave : revisionAnnualLeave.value,
      annualEntitlementeffectiveDate: annualEntitlementeffectiveDate == null ? this.annualEntitlementeffectiveDate : annualEntitlementeffectiveDate.value,
      contractEffectDate: contractEffectDate == null ? this.contractEffectDate : contractEffectDate.value,
      contractOfEmployee: contractOfEmployee == null ? this.contractOfEmployee : contractOfEmployee.value,
      remarksWorkInfo: remarksWorkInfo == null ? this.remarksWorkInfo : remarksWorkInfo.value,
      empID: empID == null ? this.empID : empID.value
    );
  }
  
  LeaveWorkInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _leavePassageEntitlement = json['leavePassageEntitlement'],
      _annualLeaveEntitlement = json['annualLeaveEntitlement'],
      _annualLeaveEffectDate = json['annualLeaveEffectDate'],
      _sickLeaveEntitlement = json['sickLeaveEntitlement'],
      _effectiveDateOfSickLeave = json['effectiveDateOfSickLeave'],
      _positionRevision = json['positionRevision'],
      _revisionSalaryPackage = json['revisionSalaryPackage'],
      _leavePassageEntitlementRevision = json['leavePassageEntitlementRevision'],
      _effectiveDateOfLeavePassage = json['effectiveDateOfLeavePassage'],
      _revisionAnnualLeave = json['revisionAnnualLeave'],
      _annualEntitlementeffectiveDate = json['annualEntitlementeffectiveDate'],
      _contractEffectDate = json['contractEffectDate'],
      _contractOfEmployee = json['contractOfEmployee'],
      _remarksWorkInfo = json['remarksWorkInfo'],
      _empID = json['empID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'leavePassageEntitlement': _leavePassageEntitlement, 'annualLeaveEntitlement': _annualLeaveEntitlement, 'annualLeaveEffectDate': _annualLeaveEffectDate, 'sickLeaveEntitlement': _sickLeaveEntitlement, 'effectiveDateOfSickLeave': _effectiveDateOfSickLeave, 'positionRevision': _positionRevision, 'revisionSalaryPackage': _revisionSalaryPackage, 'leavePassageEntitlementRevision': _leavePassageEntitlementRevision, 'effectiveDateOfLeavePassage': _effectiveDateOfLeavePassage, 'revisionAnnualLeave': _revisionAnnualLeave, 'annualEntitlementeffectiveDate': _annualEntitlementeffectiveDate, 'contractEffectDate': _contractEffectDate, 'contractOfEmployee': _contractOfEmployee, 'remarksWorkInfo': _remarksWorkInfo, 'empID': _empID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'leavePassageEntitlement': _leavePassageEntitlement,
    'annualLeaveEntitlement': _annualLeaveEntitlement,
    'annualLeaveEffectDate': _annualLeaveEffectDate,
    'sickLeaveEntitlement': _sickLeaveEntitlement,
    'effectiveDateOfSickLeave': _effectiveDateOfSickLeave,
    'positionRevision': _positionRevision,
    'revisionSalaryPackage': _revisionSalaryPackage,
    'leavePassageEntitlementRevision': _leavePassageEntitlementRevision,
    'effectiveDateOfLeavePassage': _effectiveDateOfLeavePassage,
    'revisionAnnualLeave': _revisionAnnualLeave,
    'annualEntitlementeffectiveDate': _annualEntitlementeffectiveDate,
    'contractEffectDate': _contractEffectDate,
    'contractOfEmployee': _contractOfEmployee,
    'remarksWorkInfo': _remarksWorkInfo,
    'empID': _empID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<LeaveWorkInfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<LeaveWorkInfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final LEAVEPASSAGEENTITLEMENT = amplify_core.QueryField(fieldName: "leavePassageEntitlement");
  static final ANNUALLEAVEENTITLEMENT = amplify_core.QueryField(fieldName: "annualLeaveEntitlement");
  static final ANNUALLEAVEEFFECTDATE = amplify_core.QueryField(fieldName: "annualLeaveEffectDate");
  static final SICKLEAVEENTITLEMENT = amplify_core.QueryField(fieldName: "sickLeaveEntitlement");
  static final EFFECTIVEDATEOFSICKLEAVE = amplify_core.QueryField(fieldName: "effectiveDateOfSickLeave");
  static final POSITIONREVISION = amplify_core.QueryField(fieldName: "positionRevision");
  static final REVISIONSALARYPACKAGE = amplify_core.QueryField(fieldName: "revisionSalaryPackage");
  static final LEAVEPASSAGEENTITLEMENTREVISION = amplify_core.QueryField(fieldName: "leavePassageEntitlementRevision");
  static final EFFECTIVEDATEOFLEAVEPASSAGE = amplify_core.QueryField(fieldName: "effectiveDateOfLeavePassage");
  static final REVISIONANNUALLEAVE = amplify_core.QueryField(fieldName: "revisionAnnualLeave");
  static final ANNUALENTITLEMENTEFFECTIVEDATE = amplify_core.QueryField(fieldName: "annualEntitlementeffectiveDate");
  static final CONTRACTEFFECTDATE = amplify_core.QueryField(fieldName: "contractEffectDate");
  static final CONTRACTOFEMPLOYEE = amplify_core.QueryField(fieldName: "contractOfEmployee");
  static final REMARKSWORKINFO = amplify_core.QueryField(fieldName: "remarksWorkInfo");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "LeaveWorkInfo";
    modelSchemaDefinition.pluralName = "LeaveWorkInfos";
    
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
      key: LeaveWorkInfo.LEAVEPASSAGEENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.ANNUALLEAVEENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.ANNUALLEAVEEFFECTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.SICKLEAVEENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.EFFECTIVEDATEOFSICKLEAVE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.POSITIONREVISION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.REVISIONSALARYPACKAGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.LEAVEPASSAGEENTITLEMENTREVISION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.EFFECTIVEDATEOFLEAVEPASSAGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.REVISIONANNUALLEAVE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.ANNUALENTITLEMENTEFFECTIVEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.CONTRACTEFFECTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.CONTRACTOFEMPLOYEE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.REMARKSWORKINFO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveWorkInfo.EMPID,
      isRequired: true,
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

class _LeaveWorkInfoModelType extends amplify_core.ModelType<LeaveWorkInfo> {
  const _LeaveWorkInfoModelType();
  
  @override
  LeaveWorkInfo fromJson(Map<String, dynamic> jsonData) {
    return LeaveWorkInfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'LeaveWorkInfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [LeaveWorkInfo] in your schema.
 */
class LeaveWorkInfoModelIdentifier implements amplify_core.ModelIdentifier<LeaveWorkInfo> {
  final String id;

  /** Create an instance of LeaveWorkInfoModelIdentifier using [id] the primary key. */
  const LeaveWorkInfoModelIdentifier({
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
  String toString() => 'LeaveWorkInfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is LeaveWorkInfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}