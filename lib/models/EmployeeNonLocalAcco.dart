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


/** This is an auto generated class representing the EmployeeNonLocalAcco type in your schema. */
class EmployeeNonLocalAcco extends amplify_core.Model {
  static const classType = const _EmployeeNonLocalAccoModelType();
  final String id;
  final String? _accommodation;
  final String? _accommodationAddress;
  final String? _empID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EmployeeNonLocalAccoModelIdentifier get modelIdentifier {
      return EmployeeNonLocalAccoModelIdentifier(
        id: id
      );
  }
  
  String get accommodation {
    try {
      return _accommodation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get accommodationAddress {
    try {
      return _accommodationAddress!;
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
  
  const EmployeeNonLocalAcco._internal({required this.id, required accommodation, required accommodationAddress, required empID, createdAt, updatedAt}): _accommodation = accommodation, _accommodationAddress = accommodationAddress, _empID = empID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory EmployeeNonLocalAcco({String? id, required String accommodation, required String accommodationAddress, required String empID}) {
    return EmployeeNonLocalAcco._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      accommodation: accommodation,
      accommodationAddress: accommodationAddress,
      empID: empID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeNonLocalAcco &&
      id == other.id &&
      _accommodation == other._accommodation &&
      _accommodationAddress == other._accommodationAddress &&
      _empID == other._empID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("EmployeeNonLocalAcco {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("accommodation=" + "$_accommodation" + ", ");
    buffer.write("accommodationAddress=" + "$_accommodationAddress" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  EmployeeNonLocalAcco copyWith({String? accommodation, String? accommodationAddress, String? empID}) {
    return EmployeeNonLocalAcco._internal(
      id: id,
      accommodation: accommodation ?? this.accommodation,
      accommodationAddress: accommodationAddress ?? this.accommodationAddress,
      empID: empID ?? this.empID);
  }
  
  EmployeeNonLocalAcco copyWithModelFieldValues({
    ModelFieldValue<String>? accommodation,
    ModelFieldValue<String>? accommodationAddress,
    ModelFieldValue<String>? empID
  }) {
    return EmployeeNonLocalAcco._internal(
      id: id,
      accommodation: accommodation == null ? this.accommodation : accommodation.value,
      accommodationAddress: accommodationAddress == null ? this.accommodationAddress : accommodationAddress.value,
      empID: empID == null ? this.empID : empID.value
    );
  }
  
  EmployeeNonLocalAcco.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _accommodation = json['accommodation'],
      _accommodationAddress = json['accommodationAddress'],
      _empID = json['empID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'accommodation': _accommodation, 'accommodationAddress': _accommodationAddress, 'empID': _empID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'accommodation': _accommodation,
    'accommodationAddress': _accommodationAddress,
    'empID': _empID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<EmployeeNonLocalAccoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<EmployeeNonLocalAccoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ACCOMMODATION = amplify_core.QueryField(fieldName: "accommodation");
  static final ACCOMMODATIONADDRESS = amplify_core.QueryField(fieldName: "accommodationAddress");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EmployeeNonLocalAcco";
    modelSchemaDefinition.pluralName = "EmployeeNonLocalAccos";
    
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
      key: EmployeeNonLocalAcco.ACCOMMODATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeNonLocalAcco.ACCOMMODATIONADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeNonLocalAcco.EMPID,
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

class _EmployeeNonLocalAccoModelType extends amplify_core.ModelType<EmployeeNonLocalAcco> {
  const _EmployeeNonLocalAccoModelType();
  
  @override
  EmployeeNonLocalAcco fromJson(Map<String, dynamic> jsonData) {
    return EmployeeNonLocalAcco.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'EmployeeNonLocalAcco';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [EmployeeNonLocalAcco] in your schema.
 */
class EmployeeNonLocalAccoModelIdentifier implements amplify_core.ModelIdentifier<EmployeeNonLocalAcco> {
  final String id;

  /** Create an instance of EmployeeNonLocalAccoModelIdentifier using [id] the primary key. */
  const EmployeeNonLocalAccoModelIdentifier({
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
  String toString() => 'EmployeeNonLocalAccoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EmployeeNonLocalAccoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}