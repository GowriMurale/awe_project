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


/** This is an auto generated class representing the InterviewSchema type in your schema. */
class InterviewSchema extends amplify_core.Model {
  static const classType = const _InterviewSchemaModelType();
  final String id;
  final amplify_core.TemporalDate? _date;
  final String? _time;
  final String? _venue;
  final String? _interviewer;
  final String? _interviewType;
  final String? _message;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  InterviewSchemaModelIdentifier get modelIdentifier {
      return InterviewSchemaModelIdentifier(
        id: id
      );
  }
  
  amplify_core.TemporalDate get date {
    try {
      return _date!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get time {
    try {
      return _time!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get venue {
    try {
      return _venue!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get interviewer {
    try {
      return _interviewer!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get interviewType {
    try {
      return _interviewType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get message {
    try {
      return _message!;
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
  
  const InterviewSchema._internal({required this.id, required date, required time, required venue, required interviewer, required interviewType, required message, createdAt, updatedAt}): _date = date, _time = time, _venue = venue, _interviewer = interviewer, _interviewType = interviewType, _message = message, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory InterviewSchema({String? id, required amplify_core.TemporalDate date, required String time, required String venue, required String interviewer, required String interviewType, required String message}) {
    return InterviewSchema._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      date: date,
      time: time,
      venue: venue,
      interviewer: interviewer,
      interviewType: interviewType,
      message: message);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InterviewSchema &&
      id == other.id &&
      _date == other._date &&
      _time == other._time &&
      _venue == other._venue &&
      _interviewer == other._interviewer &&
      _interviewType == other._interviewType &&
      _message == other._message;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("InterviewSchema {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("time=" + "$_time" + ", ");
    buffer.write("venue=" + "$_venue" + ", ");
    buffer.write("interviewer=" + "$_interviewer" + ", ");
    buffer.write("interviewType=" + "$_interviewType" + ", ");
    buffer.write("message=" + "$_message" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InterviewSchema copyWith({amplify_core.TemporalDate? date, String? time, String? venue, String? interviewer, String? interviewType, String? message}) {
    return InterviewSchema._internal(
      id: id,
      date: date ?? this.date,
      time: time ?? this.time,
      venue: venue ?? this.venue,
      interviewer: interviewer ?? this.interviewer,
      interviewType: interviewType ?? this.interviewType,
      message: message ?? this.message);
  }
  
  InterviewSchema copyWithModelFieldValues({
    ModelFieldValue<amplify_core.TemporalDate>? date,
    ModelFieldValue<String>? time,
    ModelFieldValue<String>? venue,
    ModelFieldValue<String>? interviewer,
    ModelFieldValue<String>? interviewType,
    ModelFieldValue<String>? message
  }) {
    return InterviewSchema._internal(
      id: id,
      date: date == null ? this.date : date.value,
      time: time == null ? this.time : time.value,
      venue: venue == null ? this.venue : venue.value,
      interviewer: interviewer == null ? this.interviewer : interviewer.value,
      interviewType: interviewType == null ? this.interviewType : interviewType.value,
      message: message == null ? this.message : message.value
    );
  }
  
  InterviewSchema.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _date = json['date'] != null ? amplify_core.TemporalDate.fromString(json['date']) : null,
      _time = json['time'],
      _venue = json['venue'],
      _interviewer = json['interviewer'],
      _interviewType = json['interviewType'],
      _message = json['message'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'date': _date?.format(), 'time': _time, 'venue': _venue, 'interviewer': _interviewer, 'interviewType': _interviewType, 'message': _message, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'date': _date,
    'time': _time,
    'venue': _venue,
    'interviewer': _interviewer,
    'interviewType': _interviewType,
    'message': _message,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<InterviewSchemaModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<InterviewSchemaModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final DATE = amplify_core.QueryField(fieldName: "date");
  static final TIME = amplify_core.QueryField(fieldName: "time");
  static final VENUE = amplify_core.QueryField(fieldName: "venue");
  static final INTERVIEWER = amplify_core.QueryField(fieldName: "interviewer");
  static final INTERVIEWTYPE = amplify_core.QueryField(fieldName: "interviewType");
  static final MESSAGE = amplify_core.QueryField(fieldName: "message");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "InterviewSchema";
    modelSchemaDefinition.pluralName = "InterviewSchemas";
    
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
      key: InterviewSchema.DATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: InterviewSchema.TIME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: InterviewSchema.VENUE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: InterviewSchema.INTERVIEWER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: InterviewSchema.INTERVIEWTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: InterviewSchema.MESSAGE,
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

class _InterviewSchemaModelType extends amplify_core.ModelType<InterviewSchema> {
  const _InterviewSchemaModelType();
  
  @override
  InterviewSchema fromJson(Map<String, dynamic> jsonData) {
    return InterviewSchema.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'InterviewSchema';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [InterviewSchema] in your schema.
 */
class InterviewSchemaModelIdentifier implements amplify_core.ModelIdentifier<InterviewSchema> {
  final String id;

  /** Create an instance of InterviewSchemaModelIdentifier using [id] the primary key. */
  const InterviewSchemaModelIdentifier({
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
  String toString() => 'InterviewSchemaModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is InterviewSchemaModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}