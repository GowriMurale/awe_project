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


/** This is an auto generated class representing the LeaveStatus type in your schema. */
class LeaveStatus extends amplify_core.Model {
  static const classType = const _LeaveStatusModelType();
  final String id;
  final String? _empID;
  final String? _leaveType;
  final amplify_core.TemporalDate? _fromDate;
  final amplify_core.TemporalDate? _toDate;
  final double? _days;
  final String? _applyTo;
  final String? _reason;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  LeaveStatusModelIdentifier get modelIdentifier {
      return LeaveStatusModelIdentifier(
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
  
  String get leaveType {
    try {
      return _leaveType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get fromDate {
    try {
      return _fromDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get toDate {
    try {
      return _toDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get days {
    try {
      return _days!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get applyTo {
    try {
      return _applyTo!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get reason {
    try {
      return _reason!;
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
  
  const LeaveStatus._internal({required this.id, required empID, required leaveType, required fromDate, required toDate, required days, required applyTo, required reason, createdAt, updatedAt}): _empID = empID, _leaveType = leaveType, _fromDate = fromDate, _toDate = toDate, _days = days, _applyTo = applyTo, _reason = reason, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory LeaveStatus({String? id, required String empID, required String leaveType, required amplify_core.TemporalDate fromDate, required amplify_core.TemporalDate toDate, required double days, required String applyTo, required String reason}) {
    return LeaveStatus._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      leaveType: leaveType,
      fromDate: fromDate,
      toDate: toDate,
      days: days,
      applyTo: applyTo,
      reason: reason);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaveStatus &&
      id == other.id &&
      _empID == other._empID &&
      _leaveType == other._leaveType &&
      _fromDate == other._fromDate &&
      _toDate == other._toDate &&
      _days == other._days &&
      _applyTo == other._applyTo &&
      _reason == other._reason;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("LeaveStatus {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("leaveType=" + "$_leaveType" + ", ");
    buffer.write("fromDate=" + (_fromDate != null ? _fromDate!.format() : "null") + ", ");
    buffer.write("toDate=" + (_toDate != null ? _toDate!.format() : "null") + ", ");
    buffer.write("days=" + (_days != null ? _days!.toString() : "null") + ", ");
    buffer.write("applyTo=" + "$_applyTo" + ", ");
    buffer.write("reason=" + "$_reason" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  LeaveStatus copyWith({String? empID, String? leaveType, amplify_core.TemporalDate? fromDate, amplify_core.TemporalDate? toDate, double? days, String? applyTo, String? reason}) {
    return LeaveStatus._internal(
      id: id,
      empID: empID ?? this.empID,
      leaveType: leaveType ?? this.leaveType,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      days: days ?? this.days,
      applyTo: applyTo ?? this.applyTo,
      reason: reason ?? this.reason);
  }
  
  LeaveStatus copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String>? leaveType,
    ModelFieldValue<amplify_core.TemporalDate>? fromDate,
    ModelFieldValue<amplify_core.TemporalDate>? toDate,
    ModelFieldValue<double>? days,
    ModelFieldValue<String>? applyTo,
    ModelFieldValue<String>? reason
  }) {
    return LeaveStatus._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      leaveType: leaveType == null ? this.leaveType : leaveType.value,
      fromDate: fromDate == null ? this.fromDate : fromDate.value,
      toDate: toDate == null ? this.toDate : toDate.value,
      days: days == null ? this.days : days.value,
      applyTo: applyTo == null ? this.applyTo : applyTo.value,
      reason: reason == null ? this.reason : reason.value
    );
  }
  
  LeaveStatus.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _leaveType = json['leaveType'],
      _fromDate = json['fromDate'] != null ? amplify_core.TemporalDate.fromString(json['fromDate']) : null,
      _toDate = json['toDate'] != null ? amplify_core.TemporalDate.fromString(json['toDate']) : null,
      _days = (json['days'] as num?)?.toDouble(),
      _applyTo = json['applyTo'],
      _reason = json['reason'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'leaveType': _leaveType, 'fromDate': _fromDate?.format(), 'toDate': _toDate?.format(), 'days': _days, 'applyTo': _applyTo, 'reason': _reason, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'leaveType': _leaveType,
    'fromDate': _fromDate,
    'toDate': _toDate,
    'days': _days,
    'applyTo': _applyTo,
    'reason': _reason,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<LeaveStatusModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<LeaveStatusModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final LEAVETYPE = amplify_core.QueryField(fieldName: "leaveType");
  static final FROMDATE = amplify_core.QueryField(fieldName: "fromDate");
  static final TODATE = amplify_core.QueryField(fieldName: "toDate");
  static final DAYS = amplify_core.QueryField(fieldName: "days");
  static final APPLYTO = amplify_core.QueryField(fieldName: "applyTo");
  static final REASON = amplify_core.QueryField(fieldName: "reason");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "LeaveStatus";
    modelSchemaDefinition.pluralName = "LeaveStatuses";
    
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
      key: LeaveStatus.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveStatus.LEAVETYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveStatus.FROMDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveStatus.TODATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveStatus.DAYS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveStatus.APPLYTO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LeaveStatus.REASON,
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

class _LeaveStatusModelType extends amplify_core.ModelType<LeaveStatus> {
  const _LeaveStatusModelType();
  
  @override
  LeaveStatus fromJson(Map<String, dynamic> jsonData) {
    return LeaveStatus.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'LeaveStatus';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [LeaveStatus] in your schema.
 */
class LeaveStatusModelIdentifier implements amplify_core.ModelIdentifier<LeaveStatus> {
  final String id;

  /** Create an instance of LeaveStatusModelIdentifier using [id] the primary key. */
  const LeaveStatusModelIdentifier({
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
  String toString() => 'LeaveStatusModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is LeaveStatusModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}