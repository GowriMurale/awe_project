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


/** This is an auto generated class representing the LabourMedicalInfo type in your schema. */
class LabourMedicalInfo extends amplify_core.Model {
  static const classType = const _LabourMedicalInfoModelType();
  final String id;
  final String? _overseasMedicalDate;
  final String? _overseasMedicalExpiry;
  final String? _bruhimsRegistrationDate;
  final String? _bruhimsRegistrationNumber;
  final String? _bruneiMedicalAppointmentDate;
  final String? _bruneiMedicalExpiry;
  final String? _empID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  LabourMedicalInfoModelIdentifier get modelIdentifier {
      return LabourMedicalInfoModelIdentifier(
        id: id
      );
  }
  
  String get overseasMedicalDate {
    try {
      return _overseasMedicalDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get overseasMedicalExpiry {
    try {
      return _overseasMedicalExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bruhimsRegistrationDate {
    try {
      return _bruhimsRegistrationDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bruhimsRegistrationNumber {
    try {
      return _bruhimsRegistrationNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bruneiMedicalAppointmentDate {
    try {
      return _bruneiMedicalAppointmentDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bruneiMedicalExpiry {
    try {
      return _bruneiMedicalExpiry!;
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
  
  const LabourMedicalInfo._internal({required this.id, required overseasMedicalDate, required overseasMedicalExpiry, required bruhimsRegistrationDate, required bruhimsRegistrationNumber, required bruneiMedicalAppointmentDate, required bruneiMedicalExpiry, required empID, createdAt, updatedAt}): _overseasMedicalDate = overseasMedicalDate, _overseasMedicalExpiry = overseasMedicalExpiry, _bruhimsRegistrationDate = bruhimsRegistrationDate, _bruhimsRegistrationNumber = bruhimsRegistrationNumber, _bruneiMedicalAppointmentDate = bruneiMedicalAppointmentDate, _bruneiMedicalExpiry = bruneiMedicalExpiry, _empID = empID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory LabourMedicalInfo({String? id, required String overseasMedicalDate, required String overseasMedicalExpiry, required String bruhimsRegistrationDate, required String bruhimsRegistrationNumber, required String bruneiMedicalAppointmentDate, required String bruneiMedicalExpiry, required String empID}) {
    return LabourMedicalInfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      overseasMedicalDate: overseasMedicalDate,
      overseasMedicalExpiry: overseasMedicalExpiry,
      bruhimsRegistrationDate: bruhimsRegistrationDate,
      bruhimsRegistrationNumber: bruhimsRegistrationNumber,
      bruneiMedicalAppointmentDate: bruneiMedicalAppointmentDate,
      bruneiMedicalExpiry: bruneiMedicalExpiry,
      empID: empID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LabourMedicalInfo &&
      id == other.id &&
      _overseasMedicalDate == other._overseasMedicalDate &&
      _overseasMedicalExpiry == other._overseasMedicalExpiry &&
      _bruhimsRegistrationDate == other._bruhimsRegistrationDate &&
      _bruhimsRegistrationNumber == other._bruhimsRegistrationNumber &&
      _bruneiMedicalAppointmentDate == other._bruneiMedicalAppointmentDate &&
      _bruneiMedicalExpiry == other._bruneiMedicalExpiry &&
      _empID == other._empID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("LabourMedicalInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("overseasMedicalDate=" + "$_overseasMedicalDate" + ", ");
    buffer.write("overseasMedicalExpiry=" + "$_overseasMedicalExpiry" + ", ");
    buffer.write("bruhimsRegistrationDate=" + "$_bruhimsRegistrationDate" + ", ");
    buffer.write("bruhimsRegistrationNumber=" + "$_bruhimsRegistrationNumber" + ", ");
    buffer.write("bruneiMedicalAppointmentDate=" + "$_bruneiMedicalAppointmentDate" + ", ");
    buffer.write("bruneiMedicalExpiry=" + "$_bruneiMedicalExpiry" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  LabourMedicalInfo copyWith({String? overseasMedicalDate, String? overseasMedicalExpiry, String? bruhimsRegistrationDate, String? bruhimsRegistrationNumber, String? bruneiMedicalAppointmentDate, String? bruneiMedicalExpiry, String? empID}) {
    return LabourMedicalInfo._internal(
      id: id,
      overseasMedicalDate: overseasMedicalDate ?? this.overseasMedicalDate,
      overseasMedicalExpiry: overseasMedicalExpiry ?? this.overseasMedicalExpiry,
      bruhimsRegistrationDate: bruhimsRegistrationDate ?? this.bruhimsRegistrationDate,
      bruhimsRegistrationNumber: bruhimsRegistrationNumber ?? this.bruhimsRegistrationNumber,
      bruneiMedicalAppointmentDate: bruneiMedicalAppointmentDate ?? this.bruneiMedicalAppointmentDate,
      bruneiMedicalExpiry: bruneiMedicalExpiry ?? this.bruneiMedicalExpiry,
      empID: empID ?? this.empID);
  }
  
  LabourMedicalInfo copyWithModelFieldValues({
    ModelFieldValue<String>? overseasMedicalDate,
    ModelFieldValue<String>? overseasMedicalExpiry,
    ModelFieldValue<String>? bruhimsRegistrationDate,
    ModelFieldValue<String>? bruhimsRegistrationNumber,
    ModelFieldValue<String>? bruneiMedicalAppointmentDate,
    ModelFieldValue<String>? bruneiMedicalExpiry,
    ModelFieldValue<String>? empID
  }) {
    return LabourMedicalInfo._internal(
      id: id,
      overseasMedicalDate: overseasMedicalDate == null ? this.overseasMedicalDate : overseasMedicalDate.value,
      overseasMedicalExpiry: overseasMedicalExpiry == null ? this.overseasMedicalExpiry : overseasMedicalExpiry.value,
      bruhimsRegistrationDate: bruhimsRegistrationDate == null ? this.bruhimsRegistrationDate : bruhimsRegistrationDate.value,
      bruhimsRegistrationNumber: bruhimsRegistrationNumber == null ? this.bruhimsRegistrationNumber : bruhimsRegistrationNumber.value,
      bruneiMedicalAppointmentDate: bruneiMedicalAppointmentDate == null ? this.bruneiMedicalAppointmentDate : bruneiMedicalAppointmentDate.value,
      bruneiMedicalExpiry: bruneiMedicalExpiry == null ? this.bruneiMedicalExpiry : bruneiMedicalExpiry.value,
      empID: empID == null ? this.empID : empID.value
    );
  }
  
  LabourMedicalInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _overseasMedicalDate = json['overseasMedicalDate'],
      _overseasMedicalExpiry = json['overseasMedicalExpiry'],
      _bruhimsRegistrationDate = json['bruhimsRegistrationDate'],
      _bruhimsRegistrationNumber = json['bruhimsRegistrationNumber'],
      _bruneiMedicalAppointmentDate = json['bruneiMedicalAppointmentDate'],
      _bruneiMedicalExpiry = json['bruneiMedicalExpiry'],
      _empID = json['empID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'overseasMedicalDate': _overseasMedicalDate, 'overseasMedicalExpiry': _overseasMedicalExpiry, 'bruhimsRegistrationDate': _bruhimsRegistrationDate, 'bruhimsRegistrationNumber': _bruhimsRegistrationNumber, 'bruneiMedicalAppointmentDate': _bruneiMedicalAppointmentDate, 'bruneiMedicalExpiry': _bruneiMedicalExpiry, 'empID': _empID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'overseasMedicalDate': _overseasMedicalDate,
    'overseasMedicalExpiry': _overseasMedicalExpiry,
    'bruhimsRegistrationDate': _bruhimsRegistrationDate,
    'bruhimsRegistrationNumber': _bruhimsRegistrationNumber,
    'bruneiMedicalAppointmentDate': _bruneiMedicalAppointmentDate,
    'bruneiMedicalExpiry': _bruneiMedicalExpiry,
    'empID': _empID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<LabourMedicalInfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<LabourMedicalInfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final OVERSEASMEDICALDATE = amplify_core.QueryField(fieldName: "overseasMedicalDate");
  static final OVERSEASMEDICALEXPIRY = amplify_core.QueryField(fieldName: "overseasMedicalExpiry");
  static final BRUHIMSREGISTRATIONDATE = amplify_core.QueryField(fieldName: "bruhimsRegistrationDate");
  static final BRUHIMSREGISTRATIONNUMBER = amplify_core.QueryField(fieldName: "bruhimsRegistrationNumber");
  static final BRUNEIMEDICALAPPOINTMENTDATE = amplify_core.QueryField(fieldName: "bruneiMedicalAppointmentDate");
  static final BRUNEIMEDICALEXPIRY = amplify_core.QueryField(fieldName: "bruneiMedicalExpiry");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "LabourMedicalInfo";
    modelSchemaDefinition.pluralName = "LabourMedicalInfos";
    
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
      key: LabourMedicalInfo.OVERSEASMEDICALDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourMedicalInfo.OVERSEASMEDICALEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourMedicalInfo.BRUHIMSREGISTRATIONDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourMedicalInfo.BRUHIMSREGISTRATIONNUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourMedicalInfo.BRUNEIMEDICALAPPOINTMENTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourMedicalInfo.BRUNEIMEDICALEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourMedicalInfo.EMPID,
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

class _LabourMedicalInfoModelType extends amplify_core.ModelType<LabourMedicalInfo> {
  const _LabourMedicalInfoModelType();
  
  @override
  LabourMedicalInfo fromJson(Map<String, dynamic> jsonData) {
    return LabourMedicalInfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'LabourMedicalInfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [LabourMedicalInfo] in your schema.
 */
class LabourMedicalInfoModelIdentifier implements amplify_core.ModelIdentifier<LabourMedicalInfo> {
  final String id;

  /** Create an instance of LabourMedicalInfoModelIdentifier using [id] the primary key. */
  const LabourMedicalInfoModelIdentifier({
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
  String toString() => 'LabourMedicalInfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is LabourMedicalInfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}