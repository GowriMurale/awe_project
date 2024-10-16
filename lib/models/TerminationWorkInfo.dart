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


/** This is an auto generated class representing the TerminationWorkInfo type in your schema. */
class TerminationWorkInfo extends amplify_core.Model {
  static const classType = const _TerminationWorkInfoModelType();
  final String id;
  final String? _resignationDate;
  final String? _terminationDate;
  final String? _terminationNoticeProbation;
  final String? _terminationNoticeConfirmation;
  final String? _resignationNoticeProbation;
  final String? _resignationNoticeConfirmation;
  final String? _reasonOfResignation;
  final String? _reasonOfTermination;
  final String? _destinationOfEntitlement;
  final String? _durationPeriodEntitlement;
  final String? _dateOfEntitlement;
  final String? _empID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  TerminationWorkInfoModelIdentifier get modelIdentifier {
      return TerminationWorkInfoModelIdentifier(
        id: id
      );
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
  
  const TerminationWorkInfo._internal({required this.id, required resignationDate, required terminationDate, required terminationNoticeProbation, required terminationNoticeConfirmation, required resignationNoticeProbation, required resignationNoticeConfirmation, required reasonOfResignation, required reasonOfTermination, required destinationOfEntitlement, required durationPeriodEntitlement, required dateOfEntitlement, required empID, createdAt, updatedAt}): _resignationDate = resignationDate, _terminationDate = terminationDate, _terminationNoticeProbation = terminationNoticeProbation, _terminationNoticeConfirmation = terminationNoticeConfirmation, _resignationNoticeProbation = resignationNoticeProbation, _resignationNoticeConfirmation = resignationNoticeConfirmation, _reasonOfResignation = reasonOfResignation, _reasonOfTermination = reasonOfTermination, _destinationOfEntitlement = destinationOfEntitlement, _durationPeriodEntitlement = durationPeriodEntitlement, _dateOfEntitlement = dateOfEntitlement, _empID = empID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory TerminationWorkInfo({String? id, required String resignationDate, required String terminationDate, required String terminationNoticeProbation, required String terminationNoticeConfirmation, required String resignationNoticeProbation, required String resignationNoticeConfirmation, required String reasonOfResignation, required String reasonOfTermination, required String destinationOfEntitlement, required String durationPeriodEntitlement, required String dateOfEntitlement, required String empID}) {
    return TerminationWorkInfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      resignationDate: resignationDate,
      terminationDate: terminationDate,
      terminationNoticeProbation: terminationNoticeProbation,
      terminationNoticeConfirmation: terminationNoticeConfirmation,
      resignationNoticeProbation: resignationNoticeProbation,
      resignationNoticeConfirmation: resignationNoticeConfirmation,
      reasonOfResignation: reasonOfResignation,
      reasonOfTermination: reasonOfTermination,
      destinationOfEntitlement: destinationOfEntitlement,
      durationPeriodEntitlement: durationPeriodEntitlement,
      dateOfEntitlement: dateOfEntitlement,
      empID: empID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminationWorkInfo &&
      id == other.id &&
      _resignationDate == other._resignationDate &&
      _terminationDate == other._terminationDate &&
      _terminationNoticeProbation == other._terminationNoticeProbation &&
      _terminationNoticeConfirmation == other._terminationNoticeConfirmation &&
      _resignationNoticeProbation == other._resignationNoticeProbation &&
      _resignationNoticeConfirmation == other._resignationNoticeConfirmation &&
      _reasonOfResignation == other._reasonOfResignation &&
      _reasonOfTermination == other._reasonOfTermination &&
      _destinationOfEntitlement == other._destinationOfEntitlement &&
      _durationPeriodEntitlement == other._durationPeriodEntitlement &&
      _dateOfEntitlement == other._dateOfEntitlement &&
      _empID == other._empID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("TerminationWorkInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("resignationDate=" + "$_resignationDate" + ", ");
    buffer.write("terminationDate=" + "$_terminationDate" + ", ");
    buffer.write("terminationNoticeProbation=" + "$_terminationNoticeProbation" + ", ");
    buffer.write("terminationNoticeConfirmation=" + "$_terminationNoticeConfirmation" + ", ");
    buffer.write("resignationNoticeProbation=" + "$_resignationNoticeProbation" + ", ");
    buffer.write("resignationNoticeConfirmation=" + "$_resignationNoticeConfirmation" + ", ");
    buffer.write("reasonOfResignation=" + "$_reasonOfResignation" + ", ");
    buffer.write("reasonOfTermination=" + "$_reasonOfTermination" + ", ");
    buffer.write("destinationOfEntitlement=" + "$_destinationOfEntitlement" + ", ");
    buffer.write("durationPeriodEntitlement=" + "$_durationPeriodEntitlement" + ", ");
    buffer.write("dateOfEntitlement=" + "$_dateOfEntitlement" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  TerminationWorkInfo copyWith({String? resignationDate, String? terminationDate, String? terminationNoticeProbation, String? terminationNoticeConfirmation, String? resignationNoticeProbation, String? resignationNoticeConfirmation, String? reasonOfResignation, String? reasonOfTermination, String? destinationOfEntitlement, String? durationPeriodEntitlement, String? dateOfEntitlement, String? empID}) {
    return TerminationWorkInfo._internal(
      id: id,
      resignationDate: resignationDate ?? this.resignationDate,
      terminationDate: terminationDate ?? this.terminationDate,
      terminationNoticeProbation: terminationNoticeProbation ?? this.terminationNoticeProbation,
      terminationNoticeConfirmation: terminationNoticeConfirmation ?? this.terminationNoticeConfirmation,
      resignationNoticeProbation: resignationNoticeProbation ?? this.resignationNoticeProbation,
      resignationNoticeConfirmation: resignationNoticeConfirmation ?? this.resignationNoticeConfirmation,
      reasonOfResignation: reasonOfResignation ?? this.reasonOfResignation,
      reasonOfTermination: reasonOfTermination ?? this.reasonOfTermination,
      destinationOfEntitlement: destinationOfEntitlement ?? this.destinationOfEntitlement,
      durationPeriodEntitlement: durationPeriodEntitlement ?? this.durationPeriodEntitlement,
      dateOfEntitlement: dateOfEntitlement ?? this.dateOfEntitlement,
      empID: empID ?? this.empID);
  }
  
  TerminationWorkInfo copyWithModelFieldValues({
    ModelFieldValue<String>? resignationDate,
    ModelFieldValue<String>? terminationDate,
    ModelFieldValue<String>? terminationNoticeProbation,
    ModelFieldValue<String>? terminationNoticeConfirmation,
    ModelFieldValue<String>? resignationNoticeProbation,
    ModelFieldValue<String>? resignationNoticeConfirmation,
    ModelFieldValue<String>? reasonOfResignation,
    ModelFieldValue<String>? reasonOfTermination,
    ModelFieldValue<String>? destinationOfEntitlement,
    ModelFieldValue<String>? durationPeriodEntitlement,
    ModelFieldValue<String>? dateOfEntitlement,
    ModelFieldValue<String>? empID
  }) {
    return TerminationWorkInfo._internal(
      id: id,
      resignationDate: resignationDate == null ? this.resignationDate : resignationDate.value,
      terminationDate: terminationDate == null ? this.terminationDate : terminationDate.value,
      terminationNoticeProbation: terminationNoticeProbation == null ? this.terminationNoticeProbation : terminationNoticeProbation.value,
      terminationNoticeConfirmation: terminationNoticeConfirmation == null ? this.terminationNoticeConfirmation : terminationNoticeConfirmation.value,
      resignationNoticeProbation: resignationNoticeProbation == null ? this.resignationNoticeProbation : resignationNoticeProbation.value,
      resignationNoticeConfirmation: resignationNoticeConfirmation == null ? this.resignationNoticeConfirmation : resignationNoticeConfirmation.value,
      reasonOfResignation: reasonOfResignation == null ? this.reasonOfResignation : reasonOfResignation.value,
      reasonOfTermination: reasonOfTermination == null ? this.reasonOfTermination : reasonOfTermination.value,
      destinationOfEntitlement: destinationOfEntitlement == null ? this.destinationOfEntitlement : destinationOfEntitlement.value,
      durationPeriodEntitlement: durationPeriodEntitlement == null ? this.durationPeriodEntitlement : durationPeriodEntitlement.value,
      dateOfEntitlement: dateOfEntitlement == null ? this.dateOfEntitlement : dateOfEntitlement.value,
      empID: empID == null ? this.empID : empID.value
    );
  }
  
  TerminationWorkInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _resignationDate = json['resignationDate'],
      _terminationDate = json['terminationDate'],
      _terminationNoticeProbation = json['terminationNoticeProbation'],
      _terminationNoticeConfirmation = json['terminationNoticeConfirmation'],
      _resignationNoticeProbation = json['resignationNoticeProbation'],
      _resignationNoticeConfirmation = json['resignationNoticeConfirmation'],
      _reasonOfResignation = json['reasonOfResignation'],
      _reasonOfTermination = json['reasonOfTermination'],
      _destinationOfEntitlement = json['destinationOfEntitlement'],
      _durationPeriodEntitlement = json['durationPeriodEntitlement'],
      _dateOfEntitlement = json['dateOfEntitlement'],
      _empID = json['empID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'resignationDate': _resignationDate, 'terminationDate': _terminationDate, 'terminationNoticeProbation': _terminationNoticeProbation, 'terminationNoticeConfirmation': _terminationNoticeConfirmation, 'resignationNoticeProbation': _resignationNoticeProbation, 'resignationNoticeConfirmation': _resignationNoticeConfirmation, 'reasonOfResignation': _reasonOfResignation, 'reasonOfTermination': _reasonOfTermination, 'destinationOfEntitlement': _destinationOfEntitlement, 'durationPeriodEntitlement': _durationPeriodEntitlement, 'dateOfEntitlement': _dateOfEntitlement, 'empID': _empID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'resignationDate': _resignationDate,
    'terminationDate': _terminationDate,
    'terminationNoticeProbation': _terminationNoticeProbation,
    'terminationNoticeConfirmation': _terminationNoticeConfirmation,
    'resignationNoticeProbation': _resignationNoticeProbation,
    'resignationNoticeConfirmation': _resignationNoticeConfirmation,
    'reasonOfResignation': _reasonOfResignation,
    'reasonOfTermination': _reasonOfTermination,
    'destinationOfEntitlement': _destinationOfEntitlement,
    'durationPeriodEntitlement': _durationPeriodEntitlement,
    'dateOfEntitlement': _dateOfEntitlement,
    'empID': _empID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<TerminationWorkInfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<TerminationWorkInfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final RESIGNATIONDATE = amplify_core.QueryField(fieldName: "resignationDate");
  static final TERMINATIONDATE = amplify_core.QueryField(fieldName: "terminationDate");
  static final TERMINATIONNOTICEPROBATION = amplify_core.QueryField(fieldName: "terminationNoticeProbation");
  static final TERMINATIONNOTICECONFIRMATION = amplify_core.QueryField(fieldName: "terminationNoticeConfirmation");
  static final RESIGNATIONNOTICEPROBATION = amplify_core.QueryField(fieldName: "resignationNoticeProbation");
  static final RESIGNATIONNOTICECONFIRMATION = amplify_core.QueryField(fieldName: "resignationNoticeConfirmation");
  static final REASONOFRESIGNATION = amplify_core.QueryField(fieldName: "reasonOfResignation");
  static final REASONOFTERMINATION = amplify_core.QueryField(fieldName: "reasonOfTermination");
  static final DESTINATIONOFENTITLEMENT = amplify_core.QueryField(fieldName: "destinationOfEntitlement");
  static final DURATIONPERIODENTITLEMENT = amplify_core.QueryField(fieldName: "durationPeriodEntitlement");
  static final DATEOFENTITLEMENT = amplify_core.QueryField(fieldName: "dateOfEntitlement");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TerminationWorkInfo";
    modelSchemaDefinition.pluralName = "TerminationWorkInfos";
    
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
      key: TerminationWorkInfo.RESIGNATIONDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.TERMINATIONDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.TERMINATIONNOTICEPROBATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.TERMINATIONNOTICECONFIRMATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.RESIGNATIONNOTICEPROBATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.RESIGNATIONNOTICECONFIRMATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.REASONOFRESIGNATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.REASONOFTERMINATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.DESTINATIONOFENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.DURATIONPERIODENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.DATEOFENTITLEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TerminationWorkInfo.EMPID,
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

class _TerminationWorkInfoModelType extends amplify_core.ModelType<TerminationWorkInfo> {
  const _TerminationWorkInfoModelType();
  
  @override
  TerminationWorkInfo fromJson(Map<String, dynamic> jsonData) {
    return TerminationWorkInfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'TerminationWorkInfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [TerminationWorkInfo] in your schema.
 */
class TerminationWorkInfoModelIdentifier implements amplify_core.ModelIdentifier<TerminationWorkInfo> {
  final String id;

  /** Create an instance of TerminationWorkInfoModelIdentifier using [id] the primary key. */
  const TerminationWorkInfoModelIdentifier({
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
  String toString() => 'TerminationWorkInfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TerminationWorkInfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}