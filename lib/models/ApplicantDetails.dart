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


/** This is an auto generated class representing the ApplicantDetails type in your schema. */
class ApplicantDetails extends amplify_core.Model {
  static const classType = const _ApplicantDetailsModelType();
  final String id;
  final String? _profilePhoto;
  final String? _agent;
  final String? _position;
  final String? _contractType;
  final String? _name;
  final String? _chinese;
  final String? _gender;
  final int? _age;
  final String? _email;
  final String? _countryOfBirth;
  final String? _nationality;
  final String? _otherNationality;
  final String? _marital;
  final String? _race;
  final String? _otherRace;
  final String? _religion;
  final String? _otherReligion;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ApplicantDetailsModelIdentifier get modelIdentifier {
      return ApplicantDetailsModelIdentifier(
        id: id
      );
  }
  
  String get profilePhoto {
    try {
      return _profilePhoto!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get agent {
    return _agent;
  }
  
  String get position {
    try {
      return _position!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contractType {
    try {
      return _contractType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get chinese {
    return _chinese;
  }
  
  String get gender {
    try {
      return _gender!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get age {
    try {
      return _age!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get countryOfBirth {
    try {
      return _countryOfBirth!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get nationality {
    try {
      return _nationality!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get otherNationality {
    return _otherNationality;
  }
  
  String get marital {
    try {
      return _marital!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get race {
    try {
      return _race!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get otherRace {
    return _otherRace;
  }
  
  String get religion {
    try {
      return _religion!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get otherReligion {
    return _otherReligion;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ApplicantDetails._internal({required this.id, required profilePhoto, agent, required position, required contractType, required name, chinese, required gender, required age, required email, required countryOfBirth, required nationality, otherNationality, required marital, required race, otherRace, required religion, otherReligion, createdAt, updatedAt}): _profilePhoto = profilePhoto, _agent = agent, _position = position, _contractType = contractType, _name = name, _chinese = chinese, _gender = gender, _age = age, _email = email, _countryOfBirth = countryOfBirth, _nationality = nationality, _otherNationality = otherNationality, _marital = marital, _race = race, _otherRace = otherRace, _religion = religion, _otherReligion = otherReligion, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ApplicantDetails({String? id, required String profilePhoto, String? agent, required String position, required String contractType, required String name, String? chinese, required String gender, required int age, required String email, required String countryOfBirth, required String nationality, String? otherNationality, required String marital, required String race, String? otherRace, required String religion, String? otherReligion}) {
    return ApplicantDetails._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      profilePhoto: profilePhoto,
      agent: agent,
      position: position,
      contractType: contractType,
      name: name,
      chinese: chinese,
      gender: gender,
      age: age,
      email: email,
      countryOfBirth: countryOfBirth,
      nationality: nationality,
      otherNationality: otherNationality,
      marital: marital,
      race: race,
      otherRace: otherRace,
      religion: religion,
      otherReligion: otherReligion);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicantDetails &&
      id == other.id &&
      _profilePhoto == other._profilePhoto &&
      _agent == other._agent &&
      _position == other._position &&
      _contractType == other._contractType &&
      _name == other._name &&
      _chinese == other._chinese &&
      _gender == other._gender &&
      _age == other._age &&
      _email == other._email &&
      _countryOfBirth == other._countryOfBirth &&
      _nationality == other._nationality &&
      _otherNationality == other._otherNationality &&
      _marital == other._marital &&
      _race == other._race &&
      _otherRace == other._otherRace &&
      _religion == other._religion &&
      _otherReligion == other._otherReligion;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ApplicantDetails {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("profilePhoto=" + "$_profilePhoto" + ", ");
    buffer.write("agent=" + "$_agent" + ", ");
    buffer.write("position=" + "$_position" + ", ");
    buffer.write("contractType=" + "$_contractType" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("chinese=" + "$_chinese" + ", ");
    buffer.write("gender=" + "$_gender" + ", ");
    buffer.write("age=" + (_age != null ? _age!.toString() : "null") + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("countryOfBirth=" + "$_countryOfBirth" + ", ");
    buffer.write("nationality=" + "$_nationality" + ", ");
    buffer.write("otherNationality=" + "$_otherNationality" + ", ");
    buffer.write("marital=" + "$_marital" + ", ");
    buffer.write("race=" + "$_race" + ", ");
    buffer.write("otherRace=" + "$_otherRace" + ", ");
    buffer.write("religion=" + "$_religion" + ", ");
    buffer.write("otherReligion=" + "$_otherReligion" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ApplicantDetails copyWith({String? profilePhoto, String? agent, String? position, String? contractType, String? name, String? chinese, String? gender, int? age, String? email, String? countryOfBirth, String? nationality, String? otherNationality, String? marital, String? race, String? otherRace, String? religion, String? otherReligion}) {
    return ApplicantDetails._internal(
      id: id,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      agent: agent ?? this.agent,
      position: position ?? this.position,
      contractType: contractType ?? this.contractType,
      name: name ?? this.name,
      chinese: chinese ?? this.chinese,
      gender: gender ?? this.gender,
      age: age ?? this.age,
      email: email ?? this.email,
      countryOfBirth: countryOfBirth ?? this.countryOfBirth,
      nationality: nationality ?? this.nationality,
      otherNationality: otherNationality ?? this.otherNationality,
      marital: marital ?? this.marital,
      race: race ?? this.race,
      otherRace: otherRace ?? this.otherRace,
      religion: religion ?? this.religion,
      otherReligion: otherReligion ?? this.otherReligion);
  }
  
  ApplicantDetails copyWithModelFieldValues({
    ModelFieldValue<String>? profilePhoto,
    ModelFieldValue<String?>? agent,
    ModelFieldValue<String>? position,
    ModelFieldValue<String>? contractType,
    ModelFieldValue<String>? name,
    ModelFieldValue<String?>? chinese,
    ModelFieldValue<String>? gender,
    ModelFieldValue<int>? age,
    ModelFieldValue<String>? email,
    ModelFieldValue<String>? countryOfBirth,
    ModelFieldValue<String>? nationality,
    ModelFieldValue<String?>? otherNationality,
    ModelFieldValue<String>? marital,
    ModelFieldValue<String>? race,
    ModelFieldValue<String?>? otherRace,
    ModelFieldValue<String>? religion,
    ModelFieldValue<String?>? otherReligion
  }) {
    return ApplicantDetails._internal(
      id: id,
      profilePhoto: profilePhoto == null ? this.profilePhoto : profilePhoto.value,
      agent: agent == null ? this.agent : agent.value,
      position: position == null ? this.position : position.value,
      contractType: contractType == null ? this.contractType : contractType.value,
      name: name == null ? this.name : name.value,
      chinese: chinese == null ? this.chinese : chinese.value,
      gender: gender == null ? this.gender : gender.value,
      age: age == null ? this.age : age.value,
      email: email == null ? this.email : email.value,
      countryOfBirth: countryOfBirth == null ? this.countryOfBirth : countryOfBirth.value,
      nationality: nationality == null ? this.nationality : nationality.value,
      otherNationality: otherNationality == null ? this.otherNationality : otherNationality.value,
      marital: marital == null ? this.marital : marital.value,
      race: race == null ? this.race : race.value,
      otherRace: otherRace == null ? this.otherRace : otherRace.value,
      religion: religion == null ? this.religion : religion.value,
      otherReligion: otherReligion == null ? this.otherReligion : otherReligion.value
    );
  }
  
  ApplicantDetails.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _profilePhoto = json['profilePhoto'],
      _agent = json['agent'],
      _position = json['position'],
      _contractType = json['contractType'],
      _name = json['name'],
      _chinese = json['chinese'],
      _gender = json['gender'],
      _age = (json['age'] as num?)?.toInt(),
      _email = json['email'],
      _countryOfBirth = json['countryOfBirth'],
      _nationality = json['nationality'],
      _otherNationality = json['otherNationality'],
      _marital = json['marital'],
      _race = json['race'],
      _otherRace = json['otherRace'],
      _religion = json['religion'],
      _otherReligion = json['otherReligion'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'profilePhoto': _profilePhoto, 'agent': _agent, 'position': _position, 'contractType': _contractType, 'name': _name, 'chinese': _chinese, 'gender': _gender, 'age': _age, 'email': _email, 'countryOfBirth': _countryOfBirth, 'nationality': _nationality, 'otherNationality': _otherNationality, 'marital': _marital, 'race': _race, 'otherRace': _otherRace, 'religion': _religion, 'otherReligion': _otherReligion, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'profilePhoto': _profilePhoto,
    'agent': _agent,
    'position': _position,
    'contractType': _contractType,
    'name': _name,
    'chinese': _chinese,
    'gender': _gender,
    'age': _age,
    'email': _email,
    'countryOfBirth': _countryOfBirth,
    'nationality': _nationality,
    'otherNationality': _otherNationality,
    'marital': _marital,
    'race': _race,
    'otherRace': _otherRace,
    'religion': _religion,
    'otherReligion': _otherReligion,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ApplicantDetailsModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ApplicantDetailsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PROFILEPHOTO = amplify_core.QueryField(fieldName: "profilePhoto");
  static final AGENT = amplify_core.QueryField(fieldName: "agent");
  static final POSITION = amplify_core.QueryField(fieldName: "position");
  static final CONTRACTTYPE = amplify_core.QueryField(fieldName: "contractType");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final CHINESE = amplify_core.QueryField(fieldName: "chinese");
  static final GENDER = amplify_core.QueryField(fieldName: "gender");
  static final AGE = amplify_core.QueryField(fieldName: "age");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final COUNTRYOFBIRTH = amplify_core.QueryField(fieldName: "countryOfBirth");
  static final NATIONALITY = amplify_core.QueryField(fieldName: "nationality");
  static final OTHERNATIONALITY = amplify_core.QueryField(fieldName: "otherNationality");
  static final MARITAL = amplify_core.QueryField(fieldName: "marital");
  static final RACE = amplify_core.QueryField(fieldName: "race");
  static final OTHERRACE = amplify_core.QueryField(fieldName: "otherRace");
  static final RELIGION = amplify_core.QueryField(fieldName: "religion");
  static final OTHERRELIGION = amplify_core.QueryField(fieldName: "otherReligion");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ApplicantDetails";
    modelSchemaDefinition.pluralName = "ApplicantDetails";
    
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
      key: ApplicantDetails.PROFILEPHOTO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.AGENT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.POSITION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.CONTRACTTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.CHINESE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.GENDER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.AGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.COUNTRYOFBIRTH,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.NATIONALITY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.OTHERNATIONALITY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.MARITAL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.RACE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.OTHERRACE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.RELIGION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ApplicantDetails.OTHERRELIGION,
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

class _ApplicantDetailsModelType extends amplify_core.ModelType<ApplicantDetails> {
  const _ApplicantDetailsModelType();
  
  @override
  ApplicantDetails fromJson(Map<String, dynamic> jsonData) {
    return ApplicantDetails.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ApplicantDetails';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ApplicantDetails] in your schema.
 */
class ApplicantDetailsModelIdentifier implements amplify_core.ModelIdentifier<ApplicantDetails> {
  final String id;

  /** Create an instance of ApplicantDetailsModelIdentifier using [id] the primary key. */
  const ApplicantDetailsModelIdentifier({
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
  String toString() => 'ApplicantDetailsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ApplicantDetailsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}