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


/** This is an auto generated class representing the EmployeePersonalDoc type in your schema. */
class EmployeePersonalDoc extends amplify_core.Model {
  static const classType = const _EmployeePersonalDocModelType();
  final String id;
  final String? _passportNo;
  final String? _passportIssued;
  final String? _passportExpiry;
  final String? _passportDestination;
  final String? _contactNo;
  final String? _address;
  final String? _employeeBadgeNumber;
  final String? _sapNumber;
  final String? _nationalCategory;
  final String? _countryOfOrigin;
  final String? _otherCountryOfOrigin;
  final String? _educationLevel;
  final String? _academicTechnicalQualification;
  final List<String>? _nextOfKin;
  final String? _inductionBriefing;
  final String? _previousEmployment;
  final String? _previousEmploymentPeriod;
  final String? _empID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EmployeePersonalDocModelIdentifier get modelIdentifier {
      return EmployeePersonalDocModelIdentifier(
        id: id
      );
  }
  
  String? get passportNo {
    return _passportNo;
  }
  
  String? get passportIssued {
    return _passportIssued;
  }
  
  String? get passportExpiry {
    return _passportExpiry;
  }
  
  String? get passportDestination {
    return _passportDestination;
  }
  
  String get contactNo {
    try {
      return _contactNo!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  String? get otherCountryOfOrigin {
    return _otherCountryOfOrigin;
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
  
  const EmployeePersonalDoc._internal({required this.id, passportNo, passportIssued, passportExpiry, passportDestination, required contactNo, required address, required employeeBadgeNumber, required sapNumber, required nationalCategory, required countryOfOrigin, otherCountryOfOrigin, required educationLevel, required academicTechnicalQualification, nextOfKin, required inductionBriefing, required previousEmployment, required previousEmploymentPeriod, required empID, createdAt, updatedAt}): _passportNo = passportNo, _passportIssued = passportIssued, _passportExpiry = passportExpiry, _passportDestination = passportDestination, _contactNo = contactNo, _address = address, _employeeBadgeNumber = employeeBadgeNumber, _sapNumber = sapNumber, _nationalCategory = nationalCategory, _countryOfOrigin = countryOfOrigin, _otherCountryOfOrigin = otherCountryOfOrigin, _educationLevel = educationLevel, _academicTechnicalQualification = academicTechnicalQualification, _nextOfKin = nextOfKin, _inductionBriefing = inductionBriefing, _previousEmployment = previousEmployment, _previousEmploymentPeriod = previousEmploymentPeriod, _empID = empID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory EmployeePersonalDoc({String? id, String? passportNo, String? passportIssued, String? passportExpiry, String? passportDestination, required String contactNo, required String address, required String employeeBadgeNumber, required String sapNumber, required String nationalCategory, required String countryOfOrigin, String? otherCountryOfOrigin, required String educationLevel, required String academicTechnicalQualification, List<String>? nextOfKin, required String inductionBriefing, required String previousEmployment, required String previousEmploymentPeriod, required String empID}) {
    return EmployeePersonalDoc._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      passportNo: passportNo,
      passportIssued: passportIssued,
      passportExpiry: passportExpiry,
      passportDestination: passportDestination,
      contactNo: contactNo,
      address: address,
      employeeBadgeNumber: employeeBadgeNumber,
      sapNumber: sapNumber,
      nationalCategory: nationalCategory,
      countryOfOrigin: countryOfOrigin,
      otherCountryOfOrigin: otherCountryOfOrigin,
      educationLevel: educationLevel,
      academicTechnicalQualification: academicTechnicalQualification,
      nextOfKin: nextOfKin != null ? List<String>.unmodifiable(nextOfKin) : nextOfKin,
      inductionBriefing: inductionBriefing,
      previousEmployment: previousEmployment,
      previousEmploymentPeriod: previousEmploymentPeriod,
      empID: empID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeePersonalDoc &&
      id == other.id &&
      _passportNo == other._passportNo &&
      _passportIssued == other._passportIssued &&
      _passportExpiry == other._passportExpiry &&
      _passportDestination == other._passportDestination &&
      _contactNo == other._contactNo &&
      _address == other._address &&
      _employeeBadgeNumber == other._employeeBadgeNumber &&
      _sapNumber == other._sapNumber &&
      _nationalCategory == other._nationalCategory &&
      _countryOfOrigin == other._countryOfOrigin &&
      _otherCountryOfOrigin == other._otherCountryOfOrigin &&
      _educationLevel == other._educationLevel &&
      _academicTechnicalQualification == other._academicTechnicalQualification &&
      DeepCollectionEquality().equals(_nextOfKin, other._nextOfKin) &&
      _inductionBriefing == other._inductionBriefing &&
      _previousEmployment == other._previousEmployment &&
      _previousEmploymentPeriod == other._previousEmploymentPeriod &&
      _empID == other._empID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("EmployeePersonalDoc {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("passportNo=" + "$_passportNo" + ", ");
    buffer.write("passportIssued=" + "$_passportIssued" + ", ");
    buffer.write("passportExpiry=" + "$_passportExpiry" + ", ");
    buffer.write("passportDestination=" + "$_passportDestination" + ", ");
    buffer.write("contactNo=" + "$_contactNo" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("employeeBadgeNumber=" + "$_employeeBadgeNumber" + ", ");
    buffer.write("sapNumber=" + "$_sapNumber" + ", ");
    buffer.write("nationalCategory=" + "$_nationalCategory" + ", ");
    buffer.write("countryOfOrigin=" + "$_countryOfOrigin" + ", ");
    buffer.write("otherCountryOfOrigin=" + "$_otherCountryOfOrigin" + ", ");
    buffer.write("educationLevel=" + "$_educationLevel" + ", ");
    buffer.write("academicTechnicalQualification=" + "$_academicTechnicalQualification" + ", ");
    buffer.write("nextOfKin=" + (_nextOfKin != null ? _nextOfKin!.toString() : "null") + ", ");
    buffer.write("inductionBriefing=" + "$_inductionBriefing" + ", ");
    buffer.write("previousEmployment=" + "$_previousEmployment" + ", ");
    buffer.write("previousEmploymentPeriod=" + "$_previousEmploymentPeriod" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  EmployeePersonalDoc copyWith({String? passportNo, String? passportIssued, String? passportExpiry, String? passportDestination, String? contactNo, String? address, String? employeeBadgeNumber, String? sapNumber, String? nationalCategory, String? countryOfOrigin, String? otherCountryOfOrigin, String? educationLevel, String? academicTechnicalQualification, List<String>? nextOfKin, String? inductionBriefing, String? previousEmployment, String? previousEmploymentPeriod, String? empID}) {
    return EmployeePersonalDoc._internal(
      id: id,
      passportNo: passportNo ?? this.passportNo,
      passportIssued: passportIssued ?? this.passportIssued,
      passportExpiry: passportExpiry ?? this.passportExpiry,
      passportDestination: passportDestination ?? this.passportDestination,
      contactNo: contactNo ?? this.contactNo,
      address: address ?? this.address,
      employeeBadgeNumber: employeeBadgeNumber ?? this.employeeBadgeNumber,
      sapNumber: sapNumber ?? this.sapNumber,
      nationalCategory: nationalCategory ?? this.nationalCategory,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
      otherCountryOfOrigin: otherCountryOfOrigin ?? this.otherCountryOfOrigin,
      educationLevel: educationLevel ?? this.educationLevel,
      academicTechnicalQualification: academicTechnicalQualification ?? this.academicTechnicalQualification,
      nextOfKin: nextOfKin ?? this.nextOfKin,
      inductionBriefing: inductionBriefing ?? this.inductionBriefing,
      previousEmployment: previousEmployment ?? this.previousEmployment,
      previousEmploymentPeriod: previousEmploymentPeriod ?? this.previousEmploymentPeriod,
      empID: empID ?? this.empID);
  }
  
  EmployeePersonalDoc copyWithModelFieldValues({
    ModelFieldValue<String?>? passportNo,
    ModelFieldValue<String?>? passportIssued,
    ModelFieldValue<String?>? passportExpiry,
    ModelFieldValue<String?>? passportDestination,
    ModelFieldValue<String>? contactNo,
    ModelFieldValue<String>? address,
    ModelFieldValue<String>? employeeBadgeNumber,
    ModelFieldValue<String>? sapNumber,
    ModelFieldValue<String>? nationalCategory,
    ModelFieldValue<String>? countryOfOrigin,
    ModelFieldValue<String?>? otherCountryOfOrigin,
    ModelFieldValue<String>? educationLevel,
    ModelFieldValue<String>? academicTechnicalQualification,
    ModelFieldValue<List<String>>? nextOfKin,
    ModelFieldValue<String>? inductionBriefing,
    ModelFieldValue<String>? previousEmployment,
    ModelFieldValue<String>? previousEmploymentPeriod,
    ModelFieldValue<String>? empID
  }) {
    return EmployeePersonalDoc._internal(
      id: id,
      passportNo: passportNo == null ? this.passportNo : passportNo.value,
      passportIssued: passportIssued == null ? this.passportIssued : passportIssued.value,
      passportExpiry: passportExpiry == null ? this.passportExpiry : passportExpiry.value,
      passportDestination: passportDestination == null ? this.passportDestination : passportDestination.value,
      contactNo: contactNo == null ? this.contactNo : contactNo.value,
      address: address == null ? this.address : address.value,
      employeeBadgeNumber: employeeBadgeNumber == null ? this.employeeBadgeNumber : employeeBadgeNumber.value,
      sapNumber: sapNumber == null ? this.sapNumber : sapNumber.value,
      nationalCategory: nationalCategory == null ? this.nationalCategory : nationalCategory.value,
      countryOfOrigin: countryOfOrigin == null ? this.countryOfOrigin : countryOfOrigin.value,
      otherCountryOfOrigin: otherCountryOfOrigin == null ? this.otherCountryOfOrigin : otherCountryOfOrigin.value,
      educationLevel: educationLevel == null ? this.educationLevel : educationLevel.value,
      academicTechnicalQualification: academicTechnicalQualification == null ? this.academicTechnicalQualification : academicTechnicalQualification.value,
      nextOfKin: nextOfKin == null ? this.nextOfKin : nextOfKin.value,
      inductionBriefing: inductionBriefing == null ? this.inductionBriefing : inductionBriefing.value,
      previousEmployment: previousEmployment == null ? this.previousEmployment : previousEmployment.value,
      previousEmploymentPeriod: previousEmploymentPeriod == null ? this.previousEmploymentPeriod : previousEmploymentPeriod.value,
      empID: empID == null ? this.empID : empID.value
    );
  }
  
  EmployeePersonalDoc.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _passportNo = json['passportNo'],
      _passportIssued = json['passportIssued'],
      _passportExpiry = json['passportExpiry'],
      _passportDestination = json['passportDestination'],
      _contactNo = json['contactNo'],
      _address = json['address'],
      _employeeBadgeNumber = json['employeeBadgeNumber'],
      _sapNumber = json['sapNumber'],
      _nationalCategory = json['nationalCategory'],
      _countryOfOrigin = json['countryOfOrigin'],
      _otherCountryOfOrigin = json['otherCountryOfOrigin'],
      _educationLevel = json['educationLevel'],
      _academicTechnicalQualification = json['academicTechnicalQualification'],
      _nextOfKin = json['nextOfKin']?.cast<String>(),
      _inductionBriefing = json['inductionBriefing'],
      _previousEmployment = json['previousEmployment'],
      _previousEmploymentPeriod = json['previousEmploymentPeriod'],
      _empID = json['empID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'passportNo': _passportNo, 'passportIssued': _passportIssued, 'passportExpiry': _passportExpiry, 'passportDestination': _passportDestination, 'contactNo': _contactNo, 'address': _address, 'employeeBadgeNumber': _employeeBadgeNumber, 'sapNumber': _sapNumber, 'nationalCategory': _nationalCategory, 'countryOfOrigin': _countryOfOrigin, 'otherCountryOfOrigin': _otherCountryOfOrigin, 'educationLevel': _educationLevel, 'academicTechnicalQualification': _academicTechnicalQualification, 'nextOfKin': _nextOfKin, 'inductionBriefing': _inductionBriefing, 'previousEmployment': _previousEmployment, 'previousEmploymentPeriod': _previousEmploymentPeriod, 'empID': _empID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'passportNo': _passportNo,
    'passportIssued': _passportIssued,
    'passportExpiry': _passportExpiry,
    'passportDestination': _passportDestination,
    'contactNo': _contactNo,
    'address': _address,
    'employeeBadgeNumber': _employeeBadgeNumber,
    'sapNumber': _sapNumber,
    'nationalCategory': _nationalCategory,
    'countryOfOrigin': _countryOfOrigin,
    'otherCountryOfOrigin': _otherCountryOfOrigin,
    'educationLevel': _educationLevel,
    'academicTechnicalQualification': _academicTechnicalQualification,
    'nextOfKin': _nextOfKin,
    'inductionBriefing': _inductionBriefing,
    'previousEmployment': _previousEmployment,
    'previousEmploymentPeriod': _previousEmploymentPeriod,
    'empID': _empID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<EmployeePersonalDocModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<EmployeePersonalDocModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PASSPORTNO = amplify_core.QueryField(fieldName: "passportNo");
  static final PASSPORTISSUED = amplify_core.QueryField(fieldName: "passportIssued");
  static final PASSPORTEXPIRY = amplify_core.QueryField(fieldName: "passportExpiry");
  static final PASSPORTDESTINATION = amplify_core.QueryField(fieldName: "passportDestination");
  static final CONTACTNO = amplify_core.QueryField(fieldName: "contactNo");
  static final ADDRESS = amplify_core.QueryField(fieldName: "address");
  static final EMPLOYEEBADGENUMBER = amplify_core.QueryField(fieldName: "employeeBadgeNumber");
  static final SAPNUMBER = amplify_core.QueryField(fieldName: "sapNumber");
  static final NATIONALCATEGORY = amplify_core.QueryField(fieldName: "nationalCategory");
  static final COUNTRYOFORIGIN = amplify_core.QueryField(fieldName: "countryOfOrigin");
  static final OTHERCOUNTRYOFORIGIN = amplify_core.QueryField(fieldName: "otherCountryOfOrigin");
  static final EDUCATIONLEVEL = amplify_core.QueryField(fieldName: "educationLevel");
  static final ACADEMICTECHNICALQUALIFICATION = amplify_core.QueryField(fieldName: "academicTechnicalQualification");
  static final NEXTOFKIN = amplify_core.QueryField(fieldName: "nextOfKin");
  static final INDUCTIONBRIEFING = amplify_core.QueryField(fieldName: "inductionBriefing");
  static final PREVIOUSEMPLOYMENT = amplify_core.QueryField(fieldName: "previousEmployment");
  static final PREVIOUSEMPLOYMENTPERIOD = amplify_core.QueryField(fieldName: "previousEmploymentPeriod");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EmployeePersonalDoc";
    modelSchemaDefinition.pluralName = "EmployeePersonalDocs";
    
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
      key: EmployeePersonalDoc.PASSPORTNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.PASSPORTISSUED,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.PASSPORTEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.PASSPORTDESTINATION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.CONTACTNO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.ADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.EMPLOYEEBADGENUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.SAPNUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.NATIONALCATEGORY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.COUNTRYOFORIGIN,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.OTHERCOUNTRYOFORIGIN,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.EDUCATIONLEVEL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.ACADEMICTECHNICALQUALIFICATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.NEXTOFKIN,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.INDUCTIONBRIEFING,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.PREVIOUSEMPLOYMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.PREVIOUSEMPLOYMENTPERIOD,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EmployeePersonalDoc.EMPID,
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

class _EmployeePersonalDocModelType extends amplify_core.ModelType<EmployeePersonalDoc> {
  const _EmployeePersonalDocModelType();
  
  @override
  EmployeePersonalDoc fromJson(Map<String, dynamic> jsonData) {
    return EmployeePersonalDoc.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'EmployeePersonalDoc';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [EmployeePersonalDoc] in your schema.
 */
class EmployeePersonalDocModelIdentifier implements amplify_core.ModelIdentifier<EmployeePersonalDoc> {
  final String id;

  /** Create an instance of EmployeePersonalDocModelIdentifier using [id] the primary key. */
  const EmployeePersonalDocModelIdentifier({
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
  String toString() => 'EmployeePersonalDocModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EmployeePersonalDocModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}