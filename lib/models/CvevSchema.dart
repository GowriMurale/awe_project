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


/** This is an auto generated class representing the CvevSchema type in your schema. */
class CvevSchema extends amplify_core.Model {
  static const classType = const _CvevSchemaModelType();
  final String id;
  final amplify_core.TemporalDate? _cvecApproveDate;
  final String? _cvecFile;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CvevSchemaModelIdentifier get modelIdentifier {
      return CvevSchemaModelIdentifier(
        id: id
      );
  }
  
  amplify_core.TemporalDate get cvecApproveDate {
    try {
      return _cvecApproveDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get cvecFile {
    try {
      return _cvecFile!;
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
  
  const CvevSchema._internal({required this.id, required cvecApproveDate, required cvecFile, createdAt, updatedAt}): _cvecApproveDate = cvecApproveDate, _cvecFile = cvecFile, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CvevSchema({String? id, required amplify_core.TemporalDate cvecApproveDate, required String cvecFile}) {
    return CvevSchema._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      cvecApproveDate: cvecApproveDate,
      cvecFile: cvecFile);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CvevSchema &&
      id == other.id &&
      _cvecApproveDate == other._cvecApproveDate &&
      _cvecFile == other._cvecFile;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CvevSchema {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("cvecApproveDate=" + (_cvecApproveDate != null ? _cvecApproveDate!.format() : "null") + ", ");
    buffer.write("cvecFile=" + "$_cvecFile" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CvevSchema copyWith({amplify_core.TemporalDate? cvecApproveDate, String? cvecFile}) {
    return CvevSchema._internal(
      id: id,
      cvecApproveDate: cvecApproveDate ?? this.cvecApproveDate,
      cvecFile: cvecFile ?? this.cvecFile);
  }
  
  CvevSchema copyWithModelFieldValues({
    ModelFieldValue<amplify_core.TemporalDate>? cvecApproveDate,
    ModelFieldValue<String>? cvecFile
  }) {
    return CvevSchema._internal(
      id: id,
      cvecApproveDate: cvecApproveDate == null ? this.cvecApproveDate : cvecApproveDate.value,
      cvecFile: cvecFile == null ? this.cvecFile : cvecFile.value
    );
  }
  
  CvevSchema.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _cvecApproveDate = json['cvecApproveDate'] != null ? amplify_core.TemporalDate.fromString(json['cvecApproveDate']) : null,
      _cvecFile = json['cvecFile'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'cvecApproveDate': _cvecApproveDate?.format(), 'cvecFile': _cvecFile, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'cvecApproveDate': _cvecApproveDate,
    'cvecFile': _cvecFile,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CvevSchemaModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CvevSchemaModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CVECAPPROVEDATE = amplify_core.QueryField(fieldName: "cvecApproveDate");
  static final CVECFILE = amplify_core.QueryField(fieldName: "cvecFile");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CvevSchema";
    modelSchemaDefinition.pluralName = "CvevSchemas";
    
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
      key: CvevSchema.CVECAPPROVEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CvevSchema.CVECFILE,
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

class _CvevSchemaModelType extends amplify_core.ModelType<CvevSchema> {
  const _CvevSchemaModelType();
  
  @override
  CvevSchema fromJson(Map<String, dynamic> jsonData) {
    return CvevSchema.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'CvevSchema';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CvevSchema] in your schema.
 */
class CvevSchemaModelIdentifier implements amplify_core.ModelIdentifier<CvevSchema> {
  final String id;

  /** Create an instance of CvevSchemaModelIdentifier using [id] the primary key. */
  const CvevSchemaModelIdentifier({
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
  String toString() => 'CvevSchemaModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CvevSchemaModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}