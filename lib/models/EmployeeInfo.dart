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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the EmployeeInfo type in your schema. */
class EmployeeInfo extends amplify_core.Model {
  static const classType = const _EmployeeInfoModelType();
  final String id;
  final String? _empID;
  final String? _employeeBadgeNumber;
  final String? _sapNumber;
  final String? _countryOfOrigin;
  final String? _educationLevel;
  final String? _academicTechnicalQualification;
  final List<String>? _nextOfKin;
  final String? _inductionBriefing;
  final String? _previousEmployment;
  final String? _previousEmploymentPeriod;
  final String? _nationalCategory;
  final String? _malaysianIcNumber;
  final String? _address;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EmployeeInfoModelIdentifier get modelIdentifier {
      return EmployeeInfoModelIdentifier(
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
  
  String get employeeBadgeNumber {
    try {
      return _employeeBadgeNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get sapNumber {
    try {
      return _sapNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get countryOfOrigin {
    try {
      return _countryOfOrigin!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get educationLevel {
    try {
      return _educationLevel!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get academicTechnicalQualification {
    try {
      return _academicTechnicalQualification!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get nextOfKin {
    return _nextOfKin;
  }
  
  String get inductionBriefing {
    try {
      return _inductionBriefing!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get previousEmployment {
    try {
      return _previousEmployment!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get previousEmploymentPeriod {
    try {
      return _previousEmploymentPeriod!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get nationalCategory {
    try {
      return _nationalCategory!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get malaysianIcNumber {
    return _malaysianIcNumber;
  }
  
  String get address {
    try {
      return _address!;
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
  
  const EmployeeInfo._internal({required this.id, required empID, required employeeBadgeNumber, required sapNumber, required countryOfOrigin, required educationLevel, required academicTechnicalQualification, nextOfKin, required inductionBriefing, required previousEmployment, required previousEmploymentPeriod, required nationalCategory, malaysianIcNumber, required address, createdAt, updatedAt}): _empID = empID, _employeeBadgeNumber = employeeBadgeNumber, _sapNumber = sapNumber, _countryOfOrigin = countryOfOrigin, _educationLevel = educationLevel, _academicTechnicalQualification = academicTechnicalQualification, _nextOfKin = nextOfKin, _inductionBriefing = inductionBriefing, _previousEmployment = previousEmployment, _previousEmploymentPeriod = previousEmploymentPeriod, _nationalCategory = nationalCategory, _malaysianIcNumber = malaysianIcNumber, _address = address, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory EmployeeInfo({String? id, required String empID, required String employeeBadgeNumber, required String sapNumber, required String countryOfOrigin, required String educationLevel, required String academicTechnicalQualification, List<String>? nextOfKin, required String inductionBriefing, required String previousEmployment, required String previousEmploymentPeriod, required String nationalCategory, String? malaysianIcNumber, required String address}) {
    return EmployeeInfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      employeeBadgeNumber: employeeBadgeNumber,
      sapNumber: sapNumber,
      countryOfOrigin: countryOfOrigin,
      educationLevel: educationLevel,
      academicTechnicalQualification: academicTechnicalQualification,
      nextOfKin: nextOfKin != null ? List<String>.unmodifiable(nextOfKin) : nextOfKin,
      inductionBriefing: inductionBriefing,
      previousEmployment: previousEmployment,
      previousEmploymentPeriod: previousEmploymentPeriod,
      nationalCategory: nationalCategory,
      malaysianIcNumber: malaysianIcNumber,
      address: address);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeInfo &&
      id == other.id &&
      _empID == other._empID &&
      _employeeBadgeNumber == other._employeeBadgeNumber &&
      _sapNumber == other._sapNumber &&
      _countryOfOrigin == other._countryOfOrigin &&
      _educationLevel == other._educationLevel &&
      _academicTechnicalQualification == other._academicTechnicalQualification &&
      DeepCollectionEquality().equals(_nextOfKin, other._nextOfKin) &&
      _inductionBriefing == other._inductionBriefing &&
      _previousEmployment == other._previousEmployment &&
      _previousEmploymentPeriod == other._previousEmploymentPeriod &&
      _nationalCategory == other._nationalCategory &&
      _malaysianIcNumber == other._malaysianIcNumber &&
      _address == other._address;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("EmployeeInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("employeeBadgeNumber=" + "$_employeeBadgeNumber" + ", ");
    buffer.write("sapNumber=" + "$_sapNumber" + ", ");
    buffer.write("countryOfOrigin=" + "$_countryOfOrigin" + ", ");
    buffer.write("educationLevel=" + "$_educationLevel" + ", ");
    buffer.write("academicTechnicalQualification=" + "$_academicTechnicalQualification" + ", ");
    buffer.write("nextOfKin=" + (_nextOfKin != null ? _nextOfKin!.toString() : "null") + ", ");
    buffer.write("inductionBriefing=" + "$_inductionBriefing" + ", ");
    buffer.write("previousEmployment=" + "$_previousEmployment" + ", ");
    buffer.write("previousEmploymentPeriod=" + "$_previousEmploymentPeriod" + ", ");
    buffer.write("nationalCategory=" + "$_nationalCategory" + ", ");
    buffer.write("malaysianIcNumber=" + "$_malaysianIcNumber" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  EmployeeInfo copyWith({String? empID, String? employeeBadgeNumber, String? sapNumber, String? countryOfOrigin, String? educationLevel, String? academicTechnicalQualification, List<String>? nextOfKin, String? inductionBriefing, String? previousEmployment, String? previousEmploymentPeriod, String? nationalCategory, String? malaysianIcNumber, String? address}) {
    return EmployeeInfo._internal(
      id: id,
      empID: empID ?? this.empID,
      employeeBadgeNumber: employeeBadgeNumber ?? this.employeeBadgeNumber,
      sapNumber: sapNumber ?? this.sapNumber,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
      educationLevel: educationLevel ?? this.educationLevel,
      academicTechnicalQualification: academicTechnicalQualification ?? this.academicTechnicalQualification,
      nextOfKin: nextOfKin ?? this.nextOfKin,
      inductionBriefing: inductionBriefing ?? this.inductionBriefing,
      previousEmployment: previousEmployment ?? this.previousEmployment,
      previousEmploymentPeriod: previousEmploymentPeriod ?? this.previousEmploymentPeriod,
      nationalCategory: nationalCategory ?? this.nationalCategory,
      malaysianIcNumber: malaysianIcNumber ?? this.malaysianIcNumber,
      address: address ?? this.address);
  }
  
  EmployeeInfo copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String>? employeeBadgeNumber,
    ModelFieldValue<String>? sapNumber,
    ModelFieldValue<String>? countryOfOrigin,
    ModelFieldValue<String>? educationLevel,
    ModelFieldValue<String>? academicTechnicalQualification,
    ModelFieldValue<List<String>>? nextOfKin,
    ModelFieldValue<String>? inductionBriefing,
    ModelFieldValue<String>? previousEmployment,
    ModelFieldValue<String>? previousEmploymentPeriod,
    ModelFieldValue<String>? nationalCategory,
    ModelFieldValue<String?>? malaysianIcNumber,
    ModelFieldValue<String>? address
  }) {
    return EmployeeInfo._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      employeeBadgeNumber: employeeBadgeNumber == null ? this.employeeBadgeNumber : employeeBadgeNumber.value,
      sapNumber: sapNumber == null ? this.sapNumber : sapNumber.value,
      countryOfOrigin: countryOfOrigin == null ? this.countryOfOrigin : countryOfOrigin.value,
      educationLevel: educationLevel == null ? this.educationLevel : educationLevel.value,
      academicTechnicalQualification: academicTechnicalQualification == null ? this.academicTechnicalQualification : academicTechnicalQualification.value,
      nextOfKin: nextOfKin == null ? this.nextOfKin : nextOfKin.value,
      inductionBriefing: inductionBriefing == null ? this.inductionBriefing : inductionBriefing.value,
      previousEmployment: previousEmployment == null ? this.previousEmployment : previousEmployment.value,
      previousEmploymentPeriod: previousEmploymentPeriod == null ? this.previousEmploymentPeriod : previousEmploymentPeriod.value,
      nationalCategory: nationalCategory == null ? this.nationalCategory : nationalCategory.value,
      malaysianIcNumber: malaysianIcNumber == null ? this.malaysianIcNumber : malaysianIcNumber.value,
      address: address == null ? this.address : address.value
    );
  }
  
  EmployeeInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _employeeBadgeNumber = json['employeeBadgeNumber'],
      _sapNumber = json['sapNumber'],
      _countryOfOrigin = json['countryOfOrigin'],
      _educationLevel = json['educationLevel'],
      _academicTechnicalQualification = json['academicTechnicalQualification'],
      _nextOfKin = json['nextOfKin']?.cast<String>(),
      _inductionBriefing = json['inductionBriefing'],
      _previousEmployment = json['previousEmployment'],
      _previousEmploymentPeriod = json['previousEmploymentPeriod'],
      _nationalCategory = json['nationalCategory'],
      _malaysianIcNumber = json['malaysianIcNumber'],
      _address = json['address'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'employeeBadgeNumber': _employeeBadgeNumber, 'sapNumber': _sapNumber, 'countryOfOrigin': _countryOfOrigin, 'educationLevel': _educationLevel, 'academicTechnicalQualification': _academicTechnicalQualification, 'nextOfKin': _nextOfKin, 'inductionBriefing': _inductionBriefing, 'previousEmployment': _previousEmployment, 'previousEmploymentPeriod': _previousEmploymentPeriod, 'nationalCategory': _nationalCategory, 'malaysianIcNumber': _malaysianIcNumber, 'address': _address, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'employeeBadgeNumber': _employeeBadgeNumber,
    'sapNumber': _sapNumber,
    'countryOfOrigin': _countryOfOrigin,
    'educationLevel': _educationLevel,
    'academicTechnicalQualification': _academicTechnicalQualification,
    'nextOfKin': _nextOfKin,
    'inductionBriefing': _inductionBriefing,
    'previousEmployment': _previousEmployment,
    'previousEmploymentPeriod': _previousEmploymentPeriod,
    'nationalCategory': _nationalCategory,
    'malaysianIcNumber': _malaysianIcNumber,
    'address': _address,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<EmployeeInfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<EmployeeInfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final EMPLOYEEBADGENUMBER = amplify_core.QueryField(fieldName: "employeeBadgeNumber");
  static final SAPNUMBER = amplify_core.QueryField(fieldName: "sapNumber");
  static final COUNTRYOFORIGIN = amplify_core.QueryField(fieldName: "countryOfOrigin");
  static final EDUCATIONLEVEL = amplify_core.QueryField(fieldName: "educationLevel");
  static final ACADEMICTECHNICALQUALIFICATION = amplify_core.QueryField(fieldName: "academicTechnicalQualification");
  static final NEXTOFKIN = amplify_core.QueryField(fieldName: "nextOfKin");
  static final INDUCTIONBRIEFING = amplify_core.QueryField(fieldName: "inductionBriefing");
  static final PREVIOUSEMPLOYMENT = amplify_core.QueryField(fieldName: "previousEmployment");
  static final PREVIOUSEMPLOYMENTPERIOD = amplify_core.QueryField(fieldName: "previousEmploymentPeriod");
  static final NATIONALCATEGORY = amplify_core.QueryField(fieldName: "nationalCategory");
  static final MALAYSIANICNUMBER = amplify_core.QueryField(fieldName: "malaysianIcNumber");
  static final ADDRESS = amplify_core.QueryField(fieldName: "address");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EmployeeInfo";
    modelSchemaDefinition.pluralName = "EmployeeInfos";
    
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
      key: EmployeeInfo.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.EMPLOYEEBADGENUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.SAPNUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.COUNTRYOFORIGIN,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.EDUCATIONLEVEL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.ACADEMICTECHNICALQUALIFICATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.NEXTOFKIN,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.INDUCTIONBRIEFING,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.PREVIOUSEMPLOYMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.PREVIOUSEMPLOYMENTPERIOD,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.NATIONALCATEGORY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.MALAYSIANICNUMBER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeeInfo.ADDRESS,
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

class _EmployeeInfoModelType extends amplify_core.ModelType<EmployeeInfo> {
  const _EmployeeInfoModelType();
  
  @override
  EmployeeInfo fromJson(Map<String, dynamic> jsonData) {
    return EmployeeInfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'EmployeeInfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [EmployeeInfo] in your schema.
 */
class EmployeeInfoModelIdentifier implements amplify_core.ModelIdentifier<EmployeeInfo> {
  final String id;

  /** Create an instance of EmployeeInfoModelIdentifier using [id] the primary key. */
  const EmployeeInfoModelIdentifier({
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
  String toString() => 'EmployeeInfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EmployeeInfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}