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


/** This is an auto generated class representing the EducationDetails type in your schema. */
class EducationDetails extends amplify_core.Model {
  static const classType = const _EducationDetailsModelType();
  final String id;
  final String? _empID;
  final String? _crime;
  final String? _crimeDescription;
  final List<String>? _emergencyContact;
  final String? _experience;
  final String? _employeeStatement;
  final String? _description;
  final String? _disease;
  final String? _diseaseDescription;
  final String? _liquor;
  final String? _liquorDescription;
  final String? _noticePeriod;
  final String? _perInterviewStatus;
  final String? _perInterviewDescription;
  final List<String>? _referees;
  final List<String>? _relatives;
  final String? _salaryException;
  final String? _supportInfo;
  final String? _uploadResume;
  final String? _uploadCertificate;
  final String? _uploadPassport;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  EducationDetailsModelIdentifier get modelIdentifier {
      return EducationDetailsModelIdentifier(
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
  
  String? get crime {
    return _crime;
  }
  
  String? get crimeDescription {
    return _crimeDescription;
  }
  
  List<String>? get emergencyContact {
    return _emergencyContact;
  }
  
  String get experience {
    try {
      return _experience!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get employeeStatement {
    try {
      return _employeeStatement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get description {
    return _description;
  }
  
  String? get disease {
    return _disease;
  }
  
  String? get diseaseDescription {
    return _diseaseDescription;
  }
  
  String? get liquor {
    return _liquor;
  }
  
  String? get liquorDescription {
    return _liquorDescription;
  }
  
  String get noticePeriod {
    try {
      return _noticePeriod!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get perInterviewStatus {
    try {
      return _perInterviewStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get perInterviewDescription {
    return _perInterviewDescription;
  }
  
  List<String>? get referees {
    return _referees;
  }
  
  List<String>? get relatives {
    return _relatives;
  }
  
  String? get salaryException {
    return _salaryException;
  }
  
  String? get supportInfo {
    return _supportInfo;
  }
  
  String get uploadResume {
    try {
      return _uploadResume!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get uploadCertificate {
    try {
      return _uploadCertificate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get uploadPassport {
    try {
      return _uploadPassport!;
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
  
  const EducationDetails._internal({required this.id, required empID, crime, crimeDescription, emergencyContact, required experience, required employeeStatement, description, disease, diseaseDescription, liquor, liquorDescription, required noticePeriod, required perInterviewStatus, perInterviewDescription, referees, relatives, salaryException, supportInfo, required uploadResume, required uploadCertificate, required uploadPassport, createdAt, updatedAt}): _empID = empID, _crime = crime, _crimeDescription = crimeDescription, _emergencyContact = emergencyContact, _experience = experience, _employeeStatement = employeeStatement, _description = description, _disease = disease, _diseaseDescription = diseaseDescription, _liquor = liquor, _liquorDescription = liquorDescription, _noticePeriod = noticePeriod, _perInterviewStatus = perInterviewStatus, _perInterviewDescription = perInterviewDescription, _referees = referees, _relatives = relatives, _salaryException = salaryException, _supportInfo = supportInfo, _uploadResume = uploadResume, _uploadCertificate = uploadCertificate, _uploadPassport = uploadPassport, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory EducationDetails({String? id, required String empID, String? crime, String? crimeDescription, List<String>? emergencyContact, required String experience, required String employeeStatement, String? description, String? disease, String? diseaseDescription, String? liquor, String? liquorDescription, required String noticePeriod, required String perInterviewStatus, String? perInterviewDescription, List<String>? referees, List<String>? relatives, String? salaryException, String? supportInfo, required String uploadResume, required String uploadCertificate, required String uploadPassport}) {
    return EducationDetails._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      crime: crime,
      crimeDescription: crimeDescription,
      emergencyContact: emergencyContact != null ? List<String>.unmodifiable(emergencyContact) : emergencyContact,
      experience: experience,
      employeeStatement: employeeStatement,
      description: description,
      disease: disease,
      diseaseDescription: diseaseDescription,
      liquor: liquor,
      liquorDescription: liquorDescription,
      noticePeriod: noticePeriod,
      perInterviewStatus: perInterviewStatus,
      perInterviewDescription: perInterviewDescription,
      referees: referees != null ? List<String>.unmodifiable(referees) : referees,
      relatives: relatives != null ? List<String>.unmodifiable(relatives) : relatives,
      salaryException: salaryException,
      supportInfo: supportInfo,
      uploadResume: uploadResume,
      uploadCertificate: uploadCertificate,
      uploadPassport: uploadPassport);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EducationDetails &&
      id == other.id &&
      _empID == other._empID &&
      _crime == other._crime &&
      _crimeDescription == other._crimeDescription &&
      DeepCollectionEquality().equals(_emergencyContact, other._emergencyContact) &&
      _experience == other._experience &&
      _employeeStatement == other._employeeStatement &&
      _description == other._description &&
      _disease == other._disease &&
      _diseaseDescription == other._diseaseDescription &&
      _liquor == other._liquor &&
      _liquorDescription == other._liquorDescription &&
      _noticePeriod == other._noticePeriod &&
      _perInterviewStatus == other._perInterviewStatus &&
      _perInterviewDescription == other._perInterviewDescription &&
      DeepCollectionEquality().equals(_referees, other._referees) &&
      DeepCollectionEquality().equals(_relatives, other._relatives) &&
      _salaryException == other._salaryException &&
      _supportInfo == other._supportInfo &&
      _uploadResume == other._uploadResume &&
      _uploadCertificate == other._uploadCertificate &&
      _uploadPassport == other._uploadPassport;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("EducationDetails {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("crime=" + "$_crime" + ", ");
    buffer.write("crimeDescription=" + "$_crimeDescription" + ", ");
    buffer.write("emergencyContact=" + (_emergencyContact != null ? _emergencyContact!.toString() : "null") + ", ");
    buffer.write("experience=" + "$_experience" + ", ");
    buffer.write("employeeStatement=" + "$_employeeStatement" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("disease=" + "$_disease" + ", ");
    buffer.write("diseaseDescription=" + "$_diseaseDescription" + ", ");
    buffer.write("liquor=" + "$_liquor" + ", ");
    buffer.write("liquorDescription=" + "$_liquorDescription" + ", ");
    buffer.write("noticePeriod=" + "$_noticePeriod" + ", ");
    buffer.write("perInterviewStatus=" + "$_perInterviewStatus" + ", ");
    buffer.write("perInterviewDescription=" + "$_perInterviewDescription" + ", ");
    buffer.write("referees=" + (_referees != null ? _referees!.toString() : "null") + ", ");
    buffer.write("relatives=" + (_relatives != null ? _relatives!.toString() : "null") + ", ");
    buffer.write("salaryException=" + "$_salaryException" + ", ");
    buffer.write("supportInfo=" + "$_supportInfo" + ", ");
    buffer.write("uploadResume=" + "$_uploadResume" + ", ");
    buffer.write("uploadCertificate=" + "$_uploadCertificate" + ", ");
    buffer.write("uploadPassport=" + "$_uploadPassport" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  EducationDetails copyWith({String? empID, String? crime, String? crimeDescription, List<String>? emergencyContact, String? experience, String? employeeStatement, String? description, String? disease, String? diseaseDescription, String? liquor, String? liquorDescription, String? noticePeriod, String? perInterviewStatus, String? perInterviewDescription, List<String>? referees, List<String>? relatives, String? salaryException, String? supportInfo, String? uploadResume, String? uploadCertificate, String? uploadPassport}) {
    return EducationDetails._internal(
      id: id,
      empID: empID ?? this.empID,
      crime: crime ?? this.crime,
      crimeDescription: crimeDescription ?? this.crimeDescription,
      emergencyContact: emergencyContact ?? this.emergencyContact,
      experience: experience ?? this.experience,
      employeeStatement: employeeStatement ?? this.employeeStatement,
      description: description ?? this.description,
      disease: disease ?? this.disease,
      diseaseDescription: diseaseDescription ?? this.diseaseDescription,
      liquor: liquor ?? this.liquor,
      liquorDescription: liquorDescription ?? this.liquorDescription,
      noticePeriod: noticePeriod ?? this.noticePeriod,
      perInterviewStatus: perInterviewStatus ?? this.perInterviewStatus,
      perInterviewDescription: perInterviewDescription ?? this.perInterviewDescription,
      referees: referees ?? this.referees,
      relatives: relatives ?? this.relatives,
      salaryException: salaryException ?? this.salaryException,
      supportInfo: supportInfo ?? this.supportInfo,
      uploadResume: uploadResume ?? this.uploadResume,
      uploadCertificate: uploadCertificate ?? this.uploadCertificate,
      uploadPassport: uploadPassport ?? this.uploadPassport);
  }
  
  EducationDetails copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String?>? crime,
    ModelFieldValue<String?>? crimeDescription,
    ModelFieldValue<List<String>>? emergencyContact,
    ModelFieldValue<String>? experience,
    ModelFieldValue<String>? employeeStatement,
    ModelFieldValue<String?>? description,
    ModelFieldValue<String?>? disease,
    ModelFieldValue<String?>? diseaseDescription,
    ModelFieldValue<String?>? liquor,
    ModelFieldValue<String?>? liquorDescription,
    ModelFieldValue<String>? noticePeriod,
    ModelFieldValue<String>? perInterviewStatus,
    ModelFieldValue<String?>? perInterviewDescription,
    ModelFieldValue<List<String>?>? referees,
    ModelFieldValue<List<String>?>? relatives,
    ModelFieldValue<String?>? salaryException,
    ModelFieldValue<String?>? supportInfo,
    ModelFieldValue<String>? uploadResume,
    ModelFieldValue<String>? uploadCertificate,
    ModelFieldValue<String>? uploadPassport
  }) {
    return EducationDetails._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      crime: crime == null ? this.crime : crime.value,
      crimeDescription: crimeDescription == null ? this.crimeDescription : crimeDescription.value,
      emergencyContact: emergencyContact == null ? this.emergencyContact : emergencyContact.value,
      experience: experience == null ? this.experience : experience.value,
      employeeStatement: employeeStatement == null ? this.employeeStatement : employeeStatement.value,
      description: description == null ? this.description : description.value,
      disease: disease == null ? this.disease : disease.value,
      diseaseDescription: diseaseDescription == null ? this.diseaseDescription : diseaseDescription.value,
      liquor: liquor == null ? this.liquor : liquor.value,
      liquorDescription: liquorDescription == null ? this.liquorDescription : liquorDescription.value,
      noticePeriod: noticePeriod == null ? this.noticePeriod : noticePeriod.value,
      perInterviewStatus: perInterviewStatus == null ? this.perInterviewStatus : perInterviewStatus.value,
      perInterviewDescription: perInterviewDescription == null ? this.perInterviewDescription : perInterviewDescription.value,
      referees: referees == null ? this.referees : referees.value,
      relatives: relatives == null ? this.relatives : relatives.value,
      salaryException: salaryException == null ? this.salaryException : salaryException.value,
      supportInfo: supportInfo == null ? this.supportInfo : supportInfo.value,
      uploadResume: uploadResume == null ? this.uploadResume : uploadResume.value,
      uploadCertificate: uploadCertificate == null ? this.uploadCertificate : uploadCertificate.value,
      uploadPassport: uploadPassport == null ? this.uploadPassport : uploadPassport.value
    );
  }
  
  EducationDetails.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _crime = json['crime'],
      _crimeDescription = json['crimeDescription'],
      _emergencyContact = json['emergencyContact']?.cast<String>(),
      _experience = json['experience'],
      _employeeStatement = json['employeeStatement'],
      _description = json['description'],
      _disease = json['disease'],
      _diseaseDescription = json['diseaseDescription'],
      _liquor = json['liquor'],
      _liquorDescription = json['liquorDescription'],
      _noticePeriod = json['noticePeriod'],
      _perInterviewStatus = json['perInterviewStatus'],
      _perInterviewDescription = json['perInterviewDescription'],
      _referees = json['referees']?.cast<String>(),
      _relatives = json['relatives']?.cast<String>(),
      _salaryException = json['salaryException'],
      _supportInfo = json['supportInfo'],
      _uploadResume = json['uploadResume'],
      _uploadCertificate = json['uploadCertificate'],
      _uploadPassport = json['uploadPassport'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'crime': _crime, 'crimeDescription': _crimeDescription, 'emergencyContact': _emergencyContact, 'experience': _experience, 'employeeStatement': _employeeStatement, 'description': _description, 'disease': _disease, 'diseaseDescription': _diseaseDescription, 'liquor': _liquor, 'liquorDescription': _liquorDescription, 'noticePeriod': _noticePeriod, 'perInterviewStatus': _perInterviewStatus, 'perInterviewDescription': _perInterviewDescription, 'referees': _referees, 'relatives': _relatives, 'salaryException': _salaryException, 'supportInfo': _supportInfo, 'uploadResume': _uploadResume, 'uploadCertificate': _uploadCertificate, 'uploadPassport': _uploadPassport, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'crime': _crime,
    'crimeDescription': _crimeDescription,
    'emergencyContact': _emergencyContact,
    'experience': _experience,
    'employeeStatement': _employeeStatement,
    'description': _description,
    'disease': _disease,
    'diseaseDescription': _diseaseDescription,
    'liquor': _liquor,
    'liquorDescription': _liquorDescription,
    'noticePeriod': _noticePeriod,
    'perInterviewStatus': _perInterviewStatus,
    'perInterviewDescription': _perInterviewDescription,
    'referees': _referees,
    'relatives': _relatives,
    'salaryException': _salaryException,
    'supportInfo': _supportInfo,
    'uploadResume': _uploadResume,
    'uploadCertificate': _uploadCertificate,
    'uploadPassport': _uploadPassport,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<EducationDetailsModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<EducationDetailsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final CRIME = amplify_core.QueryField(fieldName: "crime");
  static final CRIMEDESCRIPTION = amplify_core.QueryField(fieldName: "crimeDescription");
  static final EMERGENCYCONTACT = amplify_core.QueryField(fieldName: "emergencyContact");
  static final EXPERIENCE = amplify_core.QueryField(fieldName: "experience");
  static final EMPLOYEESTATEMENT = amplify_core.QueryField(fieldName: "employeeStatement");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final DISEASE = amplify_core.QueryField(fieldName: "disease");
  static final DISEASEDESCRIPTION = amplify_core.QueryField(fieldName: "diseaseDescription");
  static final LIQUOR = amplify_core.QueryField(fieldName: "liquor");
  static final LIQUORDESCRIPTION = amplify_core.QueryField(fieldName: "liquorDescription");
  static final NOTICEPERIOD = amplify_core.QueryField(fieldName: "noticePeriod");
  static final PERINTERVIEWSTATUS = amplify_core.QueryField(fieldName: "perInterviewStatus");
  static final PERINTERVIEWDESCRIPTION = amplify_core.QueryField(fieldName: "perInterviewDescription");
  static final REFEREES = amplify_core.QueryField(fieldName: "referees");
  static final RELATIVES = amplify_core.QueryField(fieldName: "relatives");
  static final SALARYEXCEPTION = amplify_core.QueryField(fieldName: "salaryException");
  static final SUPPORTINFO = amplify_core.QueryField(fieldName: "supportInfo");
  static final UPLOADRESUME = amplify_core.QueryField(fieldName: "uploadResume");
  static final UPLOADCERTIFICATE = amplify_core.QueryField(fieldName: "uploadCertificate");
  static final UPLOADPASSPORT = amplify_core.QueryField(fieldName: "uploadPassport");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EducationDetails";
    modelSchemaDefinition.pluralName = "EducationDetails";
    
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
      key: EducationDetails.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.CRIME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.CRIMEDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.EMERGENCYCONTACT,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.EXPERIENCE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.EMPLOYEESTATEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.DISEASE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.DISEASEDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.LIQUOR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.LIQUORDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.NOTICEPERIOD,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.PERINTERVIEWSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.PERINTERVIEWDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.REFEREES,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.RELATIVES,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.SALARYEXCEPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.SUPPORTINFO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.UPLOADRESUME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.UPLOADCERTIFICATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: EducationDetails.UPLOADPASSPORT,
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

class _EducationDetailsModelType extends amplify_core.ModelType<EducationDetails> {
  const _EducationDetailsModelType();
  
  @override
  EducationDetails fromJson(Map<String, dynamic> jsonData) {
    return EducationDetails.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'EducationDetails';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [EducationDetails] in your schema.
 */
class EducationDetailsModelIdentifier implements amplify_core.ModelIdentifier<EducationDetails> {
  final String id;

  /** Create an instance of EducationDetailsModelIdentifier using [id] the primary key. */
  const EducationDetailsModelIdentifier({
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
  String toString() => 'EducationDetailsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is EducationDetailsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}