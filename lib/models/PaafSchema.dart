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


/** This is an auto generated class representing the PaafSchema type in your schema. */
class PaafSchema extends amplify_core.Model {
  static const classType = const _PaafSchemaModelType();
  final String id;
  final amplify_core.TemporalDate? _paafApproveDate;
  final String? _paafFile;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PaafSchemaModelIdentifier get modelIdentifier {
      return PaafSchemaModelIdentifier(
        id: id
      );
  }
  
  amplify_core.TemporalDate get paafApproveDate {
    try {
      return _paafApproveDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get paafFile {
    try {
      return _paafFile!;
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
  
  const PaafSchema._internal({required this.id, required paafApproveDate, required paafFile, createdAt, updatedAt}): _paafApproveDate = paafApproveDate, _paafFile = paafFile, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PaafSchema({String? id, required amplify_core.TemporalDate paafApproveDate, required String paafFile}) {
    return PaafSchema._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      paafApproveDate: paafApproveDate,
      paafFile: paafFile);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaafSchema &&
      id == other.id &&
      _paafApproveDate == other._paafApproveDate &&
      _paafFile == other._paafFile;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PaafSchema {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("paafApproveDate=" + (_paafApproveDate != null ? _paafApproveDate!.format() : "null") + ", ");
    buffer.write("paafFile=" + "$_paafFile" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PaafSchema copyWith({amplify_core.TemporalDate? paafApproveDate, String? paafFile}) {
    return PaafSchema._internal(
      id: id,
      paafApproveDate: paafApproveDate ?? this.paafApproveDate,
      paafFile: paafFile ?? this.paafFile);
  }
  
  PaafSchema copyWithModelFieldValues({
    ModelFieldValue<amplify_core.TemporalDate>? paafApproveDate,
    ModelFieldValue<String>? paafFile
  }) {
    return PaafSchema._internal(
      id: id,
      paafApproveDate: paafApproveDate == null ? this.paafApproveDate : paafApproveDate.value,
      paafFile: paafFile == null ? this.paafFile : paafFile.value
    );
  }
  
  PaafSchema.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _paafApproveDate = json['paafApproveDate'] != null ? amplify_core.TemporalDate.fromString(json['paafApproveDate']) : null,
      _paafFile = json['paafFile'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'paafApproveDate': _paafApproveDate?.format(), 'paafFile': _paafFile, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'paafApproveDate': _paafApproveDate,
    'paafFile': _paafFile,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PaafSchemaModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PaafSchemaModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PAAFAPPROVEDATE = amplify_core.QueryField(fieldName: "paafApproveDate");
  static final PAAFFILE = amplify_core.QueryField(fieldName: "paafFile");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PaafSchema";
    modelSchemaDefinition.pluralName = "PaafSchemas";
    
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
      key: PaafSchema.PAAFAPPROVEDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PaafSchema.PAAFFILE,
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

class _PaafSchemaModelType extends amplify_core.ModelType<PaafSchema> {
  const _PaafSchemaModelType();
  
  @override
  PaafSchema fromJson(Map<String, dynamic> jsonData) {
    return PaafSchema.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PaafSchema';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PaafSchema] in your schema.
 */
class PaafSchemaModelIdentifier implements amplify_core.ModelIdentifier<PaafSchema> {
  final String id;

  /** Create an instance of PaafSchemaModelIdentifier using [id] the primary key. */
  const PaafSchemaModelIdentifier({
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
  String toString() => 'PaafSchemaModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PaafSchemaModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}