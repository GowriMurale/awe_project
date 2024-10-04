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


/** This is an auto generated class representing the CandidateApplicationForm type in your schema. */
class CandidateApplicationForm extends amplify_core.Model {
  static const classType = const _CandidateApplicationFormModelType();
  final String id;
  final String? _profilePhoto;
  final String? _agent;
  final String? _position;
  final String? _contractType;
  final String? _employeeType;
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
  final String? _icNo;
  final String? _icExpiry;
  final String? _icColour;
  final String? _passportNo;
  final String? _alternateNo;
  final String? _passportIssued;
  final String? _passportExpiry;
  final String? _passportDestination;
  final String? _contactNo;
  final String? _presentAddress;
  final String? _permanentAddress;
  final String? _drivingLicense;
  final String? _language;
  final List<String>? _familyDetails;
  final List<String>? _educationDetails;
  final List<String>? _workExperience;
  final List<String>? _referees;
  final List<String>? _relatives;
  final String? _description;
  final List<String>? _emergencyContact;
  final String? _disease;
  final String? _liquor;
  final String? _crime;
  final String? _diseaseDescription;
  final String? _liquorDescription;
  final String? _crimeDescription;
  final String? _salaryException;
  final String? _noticePeriod;
  final String? _employeeStatement;
  final String? _perInterviewStatus;
  final String? _perInterviewDescription;
  final String? _supportInfo;
  final String? _uploadResume;
  final String? _uploadCertificate;
  final String? _uploadPassport;
  final String? _dateOfBirth;
  final String? _tempID;
  final String? _experience;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CandidateApplicationFormModelIdentifier get modelIdentifier {
      return CandidateApplicationFormModelIdentifier(
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
  
  String get employeeType {
    try {
      return _employeeType!;
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
  
  String? get icNo {
    return _icNo;
  }
  
  String? get icExpiry {
    return _icExpiry;
  }
  
  String? get icColour {
    return _icColour;
  }
  
  String? get passportNo {
    return _passportNo;
  }
  
  String? get alternateNo {
    return _alternateNo;
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
  
  String get presentAddress {
    try {
      return _presentAddress!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get permanentAddress {
    try {
      return _permanentAddress!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get drivingLicense {
    return _drivingLicense;
  }
  
  String get language {
    try {
      return _language!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get familyDetails {
    return _familyDetails;
  }
  
  List<String>? get educationDetails {
    return _educationDetails;
  }
  
  List<String>? get workExperience {
    return _workExperience;
  }
  
  List<String>? get referees {
    return _referees;
  }
  
  List<String>? get relatives {
    return _relatives;
  }
  
  String? get description {
    return _description;
  }
  
  List<String>? get emergencyContact {
    return _emergencyContact;
  }
  
  String? get disease {
    return _disease;
  }
  
  String? get liquor {
    return _liquor;
  }
  
  String? get crime {
    return _crime;
  }
  
  String? get diseaseDescription {
    return _diseaseDescription;
  }
  
  String? get liquorDescription {
    return _liquorDescription;
  }
  
  String? get crimeDescription {
    return _crimeDescription;
  }
  
  String? get salaryException {
    return _salaryException;
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
  
  String get dateOfBirth {
    try {
      return _dateOfBirth!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get tempID {
    try {
      return _tempID!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const CandidateApplicationForm._internal({required this.id, required profilePhoto, agent, required position, required contractType, required employeeType, required name, chinese, required gender, required age, required email, required countryOfBirth, required nationality, otherNationality, required marital, required race, otherRace, required religion, otherReligion, icNo, icExpiry, icColour, passportNo, alternateNo, passportIssued, passportExpiry, passportDestination, required contactNo, required presentAddress, required permanentAddress, drivingLicense, required language, familyDetails, educationDetails, workExperience, referees, relatives, description, emergencyContact, disease, liquor, crime, diseaseDescription, liquorDescription, crimeDescription, salaryException, required noticePeriod, required employeeStatement, required perInterviewStatus, perInterviewDescription, supportInfo, required uploadResume, required uploadCertificate, required uploadPassport, required dateOfBirth, required tempID, required experience, createdAt, updatedAt}): _profilePhoto = profilePhoto, _agent = agent, _position = position, _contractType = contractType, _employeeType = employeeType, _name = name, _chinese = chinese, _gender = gender, _age = age, _email = email, _countryOfBirth = countryOfBirth, _nationality = nationality, _otherNationality = otherNationality, _marital = marital, _race = race, _otherRace = otherRace, _religion = religion, _otherReligion = otherReligion, _icNo = icNo, _icExpiry = icExpiry, _icColour = icColour, _passportNo = passportNo, _alternateNo = alternateNo, _passportIssued = passportIssued, _passportExpiry = passportExpiry, _passportDestination = passportDestination, _contactNo = contactNo, _presentAddress = presentAddress, _permanentAddress = permanentAddress, _drivingLicense = drivingLicense, _language = language, _familyDetails = familyDetails, _educationDetails = educationDetails, _workExperience = workExperience, _referees = referees, _relatives = relatives, _description = description, _emergencyContact = emergencyContact, _disease = disease, _liquor = liquor, _crime = crime, _diseaseDescription = diseaseDescription, _liquorDescription = liquorDescription, _crimeDescription = crimeDescription, _salaryException = salaryException, _noticePeriod = noticePeriod, _employeeStatement = employeeStatement, _perInterviewStatus = perInterviewStatus, _perInterviewDescription = perInterviewDescription, _supportInfo = supportInfo, _uploadResume = uploadResume, _uploadCertificate = uploadCertificate, _uploadPassport = uploadPassport, _dateOfBirth = dateOfBirth, _tempID = tempID, _experience = experience, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CandidateApplicationForm({String? id, required String profilePhoto, String? agent, required String position, required String contractType, required String employeeType, required String name, String? chinese, required String gender, required int age, required String email, required String countryOfBirth, required String nationality, String? otherNationality, required String marital, required String race, String? otherRace, required String religion, String? otherReligion, String? icNo, String? icExpiry, String? icColour, String? passportNo, String? alternateNo, String? passportIssued, String? passportExpiry, String? passportDestination, required String contactNo, required String presentAddress, required String permanentAddress, String? drivingLicense, required String language, List<String>? familyDetails, List<String>? educationDetails, List<String>? workExperience, List<String>? referees, List<String>? relatives, String? description, List<String>? emergencyContact, String? disease, String? liquor, String? crime, String? diseaseDescription, String? liquorDescription, String? crimeDescription, String? salaryException, required String noticePeriod, required String employeeStatement, required String perInterviewStatus, String? perInterviewDescription, String? supportInfo, required String uploadResume, required String uploadCertificate, required String uploadPassport, required String dateOfBirth, required String tempID, required String experience}) {
    return CandidateApplicationForm._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      profilePhoto: profilePhoto,
      agent: agent,
      position: position,
      contractType: contractType,
      employeeType: employeeType,
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
      otherReligion: otherReligion,
      icNo: icNo,
      icExpiry: icExpiry,
      icColour: icColour,
      passportNo: passportNo,
      alternateNo: alternateNo,
      passportIssued: passportIssued,
      passportExpiry: passportExpiry,
      passportDestination: passportDestination,
      contactNo: contactNo,
      presentAddress: presentAddress,
      permanentAddress: permanentAddress,
      drivingLicense: drivingLicense,
      language: language,
      familyDetails: familyDetails != null ? List<String>.unmodifiable(familyDetails) : familyDetails,
      educationDetails: educationDetails != null ? List<String>.unmodifiable(educationDetails) : educationDetails,
      workExperience: workExperience != null ? List<String>.unmodifiable(workExperience) : workExperience,
      referees: referees != null ? List<String>.unmodifiable(referees) : referees,
      relatives: relatives != null ? List<String>.unmodifiable(relatives) : relatives,
      description: description,
      emergencyContact: emergencyContact != null ? List<String>.unmodifiable(emergencyContact) : emergencyContact,
      disease: disease,
      liquor: liquor,
      crime: crime,
      diseaseDescription: diseaseDescription,
      liquorDescription: liquorDescription,
      crimeDescription: crimeDescription,
      salaryException: salaryException,
      noticePeriod: noticePeriod,
      employeeStatement: employeeStatement,
      perInterviewStatus: perInterviewStatus,
      perInterviewDescription: perInterviewDescription,
      supportInfo: supportInfo,
      uploadResume: uploadResume,
      uploadCertificate: uploadCertificate,
      uploadPassport: uploadPassport,
      dateOfBirth: dateOfBirth,
      tempID: tempID,
      experience: experience);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CandidateApplicationForm &&
      id == other.id &&
      _profilePhoto == other._profilePhoto &&
      _agent == other._agent &&
      _position == other._position &&
      _contractType == other._contractType &&
      _employeeType == other._employeeType &&
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
      _otherReligion == other._otherReligion &&
      _icNo == other._icNo &&
      _icExpiry == other._icExpiry &&
      _icColour == other._icColour &&
      _passportNo == other._passportNo &&
      _alternateNo == other._alternateNo &&
      _passportIssued == other._passportIssued &&
      _passportExpiry == other._passportExpiry &&
      _passportDestination == other._passportDestination &&
      _contactNo == other._contactNo &&
      _presentAddress == other._presentAddress &&
      _permanentAddress == other._permanentAddress &&
      _drivingLicense == other._drivingLicense &&
      _language == other._language &&
      DeepCollectionEquality().equals(_familyDetails, other._familyDetails) &&
      DeepCollectionEquality().equals(_educationDetails, other._educationDetails) &&
      DeepCollectionEquality().equals(_workExperience, other._workExperience) &&
      DeepCollectionEquality().equals(_referees, other._referees) &&
      DeepCollectionEquality().equals(_relatives, other._relatives) &&
      _description == other._description &&
      DeepCollectionEquality().equals(_emergencyContact, other._emergencyContact) &&
      _disease == other._disease &&
      _liquor == other._liquor &&
      _crime == other._crime &&
      _diseaseDescription == other._diseaseDescription &&
      _liquorDescription == other._liquorDescription &&
      _crimeDescription == other._crimeDescription &&
      _salaryException == other._salaryException &&
      _noticePeriod == other._noticePeriod &&
      _employeeStatement == other._employeeStatement &&
      _perInterviewStatus == other._perInterviewStatus &&
      _perInterviewDescription == other._perInterviewDescription &&
      _supportInfo == other._supportInfo &&
      _uploadResume == other._uploadResume &&
      _uploadCertificate == other._uploadCertificate &&
      _uploadPassport == other._uploadPassport &&
      _dateOfBirth == other._dateOfBirth &&
      _tempID == other._tempID &&
      _experience == other._experience;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CandidateApplicationForm {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("profilePhoto=" + "$_profilePhoto" + ", ");
    buffer.write("agent=" + "$_agent" + ", ");
    buffer.write("position=" + "$_position" + ", ");
    buffer.write("contractType=" + "$_contractType" + ", ");
    buffer.write("employeeType=" + "$_employeeType" + ", ");
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
    buffer.write("icNo=" + "$_icNo" + ", ");
    buffer.write("icExpiry=" + "$_icExpiry" + ", ");
    buffer.write("icColour=" + "$_icColour" + ", ");
    buffer.write("passportNo=" + "$_passportNo" + ", ");
    buffer.write("alternateNo=" + "$_alternateNo" + ", ");
    buffer.write("passportIssued=" + "$_passportIssued" + ", ");
    buffer.write("passportExpiry=" + "$_passportExpiry" + ", ");
    buffer.write("passportDestination=" + "$_passportDestination" + ", ");
    buffer.write("contactNo=" + "$_contactNo" + ", ");
    buffer.write("presentAddress=" + "$_presentAddress" + ", ");
    buffer.write("permanentAddress=" + "$_permanentAddress" + ", ");
    buffer.write("drivingLicense=" + "$_drivingLicense" + ", ");
    buffer.write("language=" + "$_language" + ", ");
    buffer.write("familyDetails=" + (_familyDetails != null ? _familyDetails!.toString() : "null") + ", ");
    buffer.write("educationDetails=" + (_educationDetails != null ? _educationDetails!.toString() : "null") + ", ");
    buffer.write("workExperience=" + (_workExperience != null ? _workExperience!.toString() : "null") + ", ");
    buffer.write("referees=" + (_referees != null ? _referees!.toString() : "null") + ", ");
    buffer.write("relatives=" + (_relatives != null ? _relatives!.toString() : "null") + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("emergencyContact=" + (_emergencyContact != null ? _emergencyContact!.toString() : "null") + ", ");
    buffer.write("disease=" + "$_disease" + ", ");
    buffer.write("liquor=" + "$_liquor" + ", ");
    buffer.write("crime=" + "$_crime" + ", ");
    buffer.write("diseaseDescription=" + "$_diseaseDescription" + ", ");
    buffer.write("liquorDescription=" + "$_liquorDescription" + ", ");
    buffer.write("crimeDescription=" + "$_crimeDescription" + ", ");
    buffer.write("salaryException=" + "$_salaryException" + ", ");
    buffer.write("noticePeriod=" + "$_noticePeriod" + ", ");
    buffer.write("employeeStatement=" + "$_employeeStatement" + ", ");
    buffer.write("perInterviewStatus=" + "$_perInterviewStatus" + ", ");
    buffer.write("perInterviewDescription=" + "$_perInterviewDescription" + ", ");
    buffer.write("supportInfo=" + "$_supportInfo" + ", ");
    buffer.write("uploadResume=" + "$_uploadResume" + ", ");
    buffer.write("uploadCertificate=" + "$_uploadCertificate" + ", ");
    buffer.write("uploadPassport=" + "$_uploadPassport" + ", ");
    buffer.write("dateOfBirth=" + "$_dateOfBirth" + ", ");
    buffer.write("tempID=" + "$_tempID" + ", ");
    buffer.write("experience=" + "$_experience" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CandidateApplicationForm copyWith({String? profilePhoto, String? agent, String? position, String? contractType, String? employeeType, String? name, String? chinese, String? gender, int? age, String? email, String? countryOfBirth, String? nationality, String? otherNationality, String? marital, String? race, String? otherRace, String? religion, String? otherReligion, String? icNo, String? icExpiry, String? icColour, String? passportNo, String? alternateNo, String? passportIssued, String? passportExpiry, String? passportDestination, String? contactNo, String? presentAddress, String? permanentAddress, String? drivingLicense, String? language, List<String>? familyDetails, List<String>? educationDetails, List<String>? workExperience, List<String>? referees, List<String>? relatives, String? description, List<String>? emergencyContact, String? disease, String? liquor, String? crime, String? diseaseDescription, String? liquorDescription, String? crimeDescription, String? salaryException, String? noticePeriod, String? employeeStatement, String? perInterviewStatus, String? perInterviewDescription, String? supportInfo, String? uploadResume, String? uploadCertificate, String? uploadPassport, String? dateOfBirth, String? tempID, String? experience}) {
    return CandidateApplicationForm._internal(
      id: id,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      agent: agent ?? this.agent,
      position: position ?? this.position,
      contractType: contractType ?? this.contractType,
      employeeType: employeeType ?? this.employeeType,
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
      otherReligion: otherReligion ?? this.otherReligion,
      icNo: icNo ?? this.icNo,
      icExpiry: icExpiry ?? this.icExpiry,
      icColour: icColour ?? this.icColour,
      passportNo: passportNo ?? this.passportNo,
      alternateNo: alternateNo ?? this.alternateNo,
      passportIssued: passportIssued ?? this.passportIssued,
      passportExpiry: passportExpiry ?? this.passportExpiry,
      passportDestination: passportDestination ?? this.passportDestination,
      contactNo: contactNo ?? this.contactNo,
      presentAddress: presentAddress ?? this.presentAddress,
      permanentAddress: permanentAddress ?? this.permanentAddress,
      drivingLicense: drivingLicense ?? this.drivingLicense,
      language: language ?? this.language,
      familyDetails: familyDetails ?? this.familyDetails,
      educationDetails: educationDetails ?? this.educationDetails,
      workExperience: workExperience ?? this.workExperience,
      referees: referees ?? this.referees,
      relatives: relatives ?? this.relatives,
      description: description ?? this.description,
      emergencyContact: emergencyContact ?? this.emergencyContact,
      disease: disease ?? this.disease,
      liquor: liquor ?? this.liquor,
      crime: crime ?? this.crime,
      diseaseDescription: diseaseDescription ?? this.diseaseDescription,
      liquorDescription: liquorDescription ?? this.liquorDescription,
      crimeDescription: crimeDescription ?? this.crimeDescription,
      salaryException: salaryException ?? this.salaryException,
      noticePeriod: noticePeriod ?? this.noticePeriod,
      employeeStatement: employeeStatement ?? this.employeeStatement,
      perInterviewStatus: perInterviewStatus ?? this.perInterviewStatus,
      perInterviewDescription: perInterviewDescription ?? this.perInterviewDescription,
      supportInfo: supportInfo ?? this.supportInfo,
      uploadResume: uploadResume ?? this.uploadResume,
      uploadCertificate: uploadCertificate ?? this.uploadCertificate,
      uploadPassport: uploadPassport ?? this.uploadPassport,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      tempID: tempID ?? this.tempID,
      experience: experience ?? this.experience);
  }
  
  CandidateApplicationForm copyWithModelFieldValues({
    ModelFieldValue<String>? profilePhoto,
    ModelFieldValue<String?>? agent,
    ModelFieldValue<String>? position,
    ModelFieldValue<String>? contractType,
    ModelFieldValue<String>? employeeType,
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
    ModelFieldValue<String?>? otherReligion,
    ModelFieldValue<String?>? icNo,
    ModelFieldValue<String?>? icExpiry,
    ModelFieldValue<String?>? icColour,
    ModelFieldValue<String?>? passportNo,
    ModelFieldValue<String?>? alternateNo,
    ModelFieldValue<String?>? passportIssued,
    ModelFieldValue<String?>? passportExpiry,
    ModelFieldValue<String?>? passportDestination,
    ModelFieldValue<String>? contactNo,
    ModelFieldValue<String>? presentAddress,
    ModelFieldValue<String>? permanentAddress,
    ModelFieldValue<String?>? drivingLicense,
    ModelFieldValue<String>? language,
    ModelFieldValue<List<String>?>? familyDetails,
    ModelFieldValue<List<String>>? educationDetails,
    ModelFieldValue<List<String>?>? workExperience,
    ModelFieldValue<List<String>?>? referees,
    ModelFieldValue<List<String>?>? relatives,
    ModelFieldValue<String?>? description,
    ModelFieldValue<List<String>>? emergencyContact,
    ModelFieldValue<String?>? disease,
    ModelFieldValue<String?>? liquor,
    ModelFieldValue<String?>? crime,
    ModelFieldValue<String?>? diseaseDescription,
    ModelFieldValue<String?>? liquorDescription,
    ModelFieldValue<String?>? crimeDescription,
    ModelFieldValue<String?>? salaryException,
    ModelFieldValue<String>? noticePeriod,
    ModelFieldValue<String>? employeeStatement,
    ModelFieldValue<String>? perInterviewStatus,
    ModelFieldValue<String?>? perInterviewDescription,
    ModelFieldValue<String?>? supportInfo,
    ModelFieldValue<String>? uploadResume,
    ModelFieldValue<String>? uploadCertificate,
    ModelFieldValue<String>? uploadPassport,
    ModelFieldValue<String>? dateOfBirth,
    ModelFieldValue<String>? tempID,
    ModelFieldValue<String>? experience
  }) {
    return CandidateApplicationForm._internal(
      id: id,
      profilePhoto: profilePhoto == null ? this.profilePhoto : profilePhoto.value,
      agent: agent == null ? this.agent : agent.value,
      position: position == null ? this.position : position.value,
      contractType: contractType == null ? this.contractType : contractType.value,
      employeeType: employeeType == null ? this.employeeType : employeeType.value,
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
      otherReligion: otherReligion == null ? this.otherReligion : otherReligion.value,
      icNo: icNo == null ? this.icNo : icNo.value,
      icExpiry: icExpiry == null ? this.icExpiry : icExpiry.value,
      icColour: icColour == null ? this.icColour : icColour.value,
      passportNo: passportNo == null ? this.passportNo : passportNo.value,
      alternateNo: alternateNo == null ? this.alternateNo : alternateNo.value,
      passportIssued: passportIssued == null ? this.passportIssued : passportIssued.value,
      passportExpiry: passportExpiry == null ? this.passportExpiry : passportExpiry.value,
      passportDestination: passportDestination == null ? this.passportDestination : passportDestination.value,
      contactNo: contactNo == null ? this.contactNo : contactNo.value,
      presentAddress: presentAddress == null ? this.presentAddress : presentAddress.value,
      permanentAddress: permanentAddress == null ? this.permanentAddress : permanentAddress.value,
      drivingLicense: drivingLicense == null ? this.drivingLicense : drivingLicense.value,
      language: language == null ? this.language : language.value,
      familyDetails: familyDetails == null ? this.familyDetails : familyDetails.value,
      educationDetails: educationDetails == null ? this.educationDetails : educationDetails.value,
      workExperience: workExperience == null ? this.workExperience : workExperience.value,
      referees: referees == null ? this.referees : referees.value,
      relatives: relatives == null ? this.relatives : relatives.value,
      description: description == null ? this.description : description.value,
      emergencyContact: emergencyContact == null ? this.emergencyContact : emergencyContact.value,
      disease: disease == null ? this.disease : disease.value,
      liquor: liquor == null ? this.liquor : liquor.value,
      crime: crime == null ? this.crime : crime.value,
      diseaseDescription: diseaseDescription == null ? this.diseaseDescription : diseaseDescription.value,
      liquorDescription: liquorDescription == null ? this.liquorDescription : liquorDescription.value,
      crimeDescription: crimeDescription == null ? this.crimeDescription : crimeDescription.value,
      salaryException: salaryException == null ? this.salaryException : salaryException.value,
      noticePeriod: noticePeriod == null ? this.noticePeriod : noticePeriod.value,
      employeeStatement: employeeStatement == null ? this.employeeStatement : employeeStatement.value,
      perInterviewStatus: perInterviewStatus == null ? this.perInterviewStatus : perInterviewStatus.value,
      perInterviewDescription: perInterviewDescription == null ? this.perInterviewDescription : perInterviewDescription.value,
      supportInfo: supportInfo == null ? this.supportInfo : supportInfo.value,
      uploadResume: uploadResume == null ? this.uploadResume : uploadResume.value,
      uploadCertificate: uploadCertificate == null ? this.uploadCertificate : uploadCertificate.value,
      uploadPassport: uploadPassport == null ? this.uploadPassport : uploadPassport.value,
      dateOfBirth: dateOfBirth == null ? this.dateOfBirth : dateOfBirth.value,
      tempID: tempID == null ? this.tempID : tempID.value,
      experience: experience == null ? this.experience : experience.value
    );
  }
  
  CandidateApplicationForm.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _profilePhoto = json['profilePhoto'],
      _agent = json['agent'],
      _position = json['position'],
      _contractType = json['contractType'],
      _employeeType = json['employeeType'],
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
      _icNo = json['icNo'],
      _icExpiry = json['icExpiry'],
      _icColour = json['icColour'],
      _passportNo = json['passportNo'],
      _alternateNo = json['alternateNo'],
      _passportIssued = json['passportIssued'],
      _passportExpiry = json['passportExpiry'],
      _passportDestination = json['passportDestination'],
      _contactNo = json['contactNo'],
      _presentAddress = json['presentAddress'],
      _permanentAddress = json['permanentAddress'],
      _drivingLicense = json['drivingLicense'],
      _language = json['language'],
      _familyDetails = json['familyDetails']?.cast<String>(),
      _educationDetails = json['educationDetails']?.cast<String>(),
      _workExperience = json['workExperience']?.cast<String>(),
      _referees = json['referees']?.cast<String>(),
      _relatives = json['relatives']?.cast<String>(),
      _description = json['description'],
      _emergencyContact = json['emergencyContact']?.cast<String>(),
      _disease = json['disease'],
      _liquor = json['liquor'],
      _crime = json['crime'],
      _diseaseDescription = json['diseaseDescription'],
      _liquorDescription = json['liquorDescription'],
      _crimeDescription = json['crimeDescription'],
      _salaryException = json['salaryException'],
      _noticePeriod = json['noticePeriod'],
      _employeeStatement = json['employeeStatement'],
      _perInterviewStatus = json['perInterviewStatus'],
      _perInterviewDescription = json['perInterviewDescription'],
      _supportInfo = json['supportInfo'],
      _uploadResume = json['uploadResume'],
      _uploadCertificate = json['uploadCertificate'],
      _uploadPassport = json['uploadPassport'],
      _dateOfBirth = json['dateOfBirth'],
      _tempID = json['tempID'],
      _experience = json['experience'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'profilePhoto': _profilePhoto, 'agent': _agent, 'position': _position, 'contractType': _contractType, 'employeeType': _employeeType, 'name': _name, 'chinese': _chinese, 'gender': _gender, 'age': _age, 'email': _email, 'countryOfBirth': _countryOfBirth, 'nationality': _nationality, 'otherNationality': _otherNationality, 'marital': _marital, 'race': _race, 'otherRace': _otherRace, 'religion': _religion, 'otherReligion': _otherReligion, 'icNo': _icNo, 'icExpiry': _icExpiry, 'icColour': _icColour, 'passportNo': _passportNo, 'alternateNo': _alternateNo, 'passportIssued': _passportIssued, 'passportExpiry': _passportExpiry, 'passportDestination': _passportDestination, 'contactNo': _contactNo, 'presentAddress': _presentAddress, 'permanentAddress': _permanentAddress, 'drivingLicense': _drivingLicense, 'language': _language, 'familyDetails': _familyDetails, 'educationDetails': _educationDetails, 'workExperience': _workExperience, 'referees': _referees, 'relatives': _relatives, 'description': _description, 'emergencyContact': _emergencyContact, 'disease': _disease, 'liquor': _liquor, 'crime': _crime, 'diseaseDescription': _diseaseDescription, 'liquorDescription': _liquorDescription, 'crimeDescription': _crimeDescription, 'salaryException': _salaryException, 'noticePeriod': _noticePeriod, 'employeeStatement': _employeeStatement, 'perInterviewStatus': _perInterviewStatus, 'perInterviewDescription': _perInterviewDescription, 'supportInfo': _supportInfo, 'uploadResume': _uploadResume, 'uploadCertificate': _uploadCertificate, 'uploadPassport': _uploadPassport, 'dateOfBirth': _dateOfBirth, 'tempID': _tempID, 'experience': _experience, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'profilePhoto': _profilePhoto,
    'agent': _agent,
    'position': _position,
    'contractType': _contractType,
    'employeeType': _employeeType,
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
    'icNo': _icNo,
    'icExpiry': _icExpiry,
    'icColour': _icColour,
    'passportNo': _passportNo,
    'alternateNo': _alternateNo,
    'passportIssued': _passportIssued,
    'passportExpiry': _passportExpiry,
    'passportDestination': _passportDestination,
    'contactNo': _contactNo,
    'presentAddress': _presentAddress,
    'permanentAddress': _permanentAddress,
    'drivingLicense': _drivingLicense,
    'language': _language,
    'familyDetails': _familyDetails,
    'educationDetails': _educationDetails,
    'workExperience': _workExperience,
    'referees': _referees,
    'relatives': _relatives,
    'description': _description,
    'emergencyContact': _emergencyContact,
    'disease': _disease,
    'liquor': _liquor,
    'crime': _crime,
    'diseaseDescription': _diseaseDescription,
    'liquorDescription': _liquorDescription,
    'crimeDescription': _crimeDescription,
    'salaryException': _salaryException,
    'noticePeriod': _noticePeriod,
    'employeeStatement': _employeeStatement,
    'perInterviewStatus': _perInterviewStatus,
    'perInterviewDescription': _perInterviewDescription,
    'supportInfo': _supportInfo,
    'uploadResume': _uploadResume,
    'uploadCertificate': _uploadCertificate,
    'uploadPassport': _uploadPassport,
    'dateOfBirth': _dateOfBirth,
    'tempID': _tempID,
    'experience': _experience,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CandidateApplicationFormModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CandidateApplicationFormModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PROFILEPHOTO = amplify_core.QueryField(fieldName: "profilePhoto");
  static final AGENT = amplify_core.QueryField(fieldName: "agent");
  static final POSITION = amplify_core.QueryField(fieldName: "position");
  static final CONTRACTTYPE = amplify_core.QueryField(fieldName: "contractType");
  static final EMPLOYEETYPE = amplify_core.QueryField(fieldName: "employeeType");
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
  static final ICNO = amplify_core.QueryField(fieldName: "icNo");
  static final ICEXPIRY = amplify_core.QueryField(fieldName: "icExpiry");
  static final ICCOLOUR = amplify_core.QueryField(fieldName: "icColour");
  static final PASSPORTNO = amplify_core.QueryField(fieldName: "passportNo");
  static final ALTERNATENO = amplify_core.QueryField(fieldName: "alternateNo");
  static final PASSPORTISSUED = amplify_core.QueryField(fieldName: "passportIssued");
  static final PASSPORTEXPIRY = amplify_core.QueryField(fieldName: "passportExpiry");
  static final PASSPORTDESTINATION = amplify_core.QueryField(fieldName: "passportDestination");
  static final CONTACTNO = amplify_core.QueryField(fieldName: "contactNo");
  static final PRESENTADDRESS = amplify_core.QueryField(fieldName: "presentAddress");
  static final PERMANENTADDRESS = amplify_core.QueryField(fieldName: "permanentAddress");
  static final DRIVINGLICENSE = amplify_core.QueryField(fieldName: "drivingLicense");
  static final LANGUAGE = amplify_core.QueryField(fieldName: "language");
  static final FAMILYDETAILS = amplify_core.QueryField(fieldName: "familyDetails");
  static final EDUCATIONDETAILS = amplify_core.QueryField(fieldName: "educationDetails");
  static final WORKEXPERIENCE = amplify_core.QueryField(fieldName: "workExperience");
  static final REFEREES = amplify_core.QueryField(fieldName: "referees");
  static final RELATIVES = amplify_core.QueryField(fieldName: "relatives");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final EMERGENCYCONTACT = amplify_core.QueryField(fieldName: "emergencyContact");
  static final DISEASE = amplify_core.QueryField(fieldName: "disease");
  static final LIQUOR = amplify_core.QueryField(fieldName: "liquor");
  static final CRIME = amplify_core.QueryField(fieldName: "crime");
  static final DISEASEDESCRIPTION = amplify_core.QueryField(fieldName: "diseaseDescription");
  static final LIQUORDESCRIPTION = amplify_core.QueryField(fieldName: "liquorDescription");
  static final CRIMEDESCRIPTION = amplify_core.QueryField(fieldName: "crimeDescription");
  static final SALARYEXCEPTION = amplify_core.QueryField(fieldName: "salaryException");
  static final NOTICEPERIOD = amplify_core.QueryField(fieldName: "noticePeriod");
  static final EMPLOYEESTATEMENT = amplify_core.QueryField(fieldName: "employeeStatement");
  static final PERINTERVIEWSTATUS = amplify_core.QueryField(fieldName: "perInterviewStatus");
  static final PERINTERVIEWDESCRIPTION = amplify_core.QueryField(fieldName: "perInterviewDescription");
  static final SUPPORTINFO = amplify_core.QueryField(fieldName: "supportInfo");
  static final UPLOADRESUME = amplify_core.QueryField(fieldName: "uploadResume");
  static final UPLOADCERTIFICATE = amplify_core.QueryField(fieldName: "uploadCertificate");
  static final UPLOADPASSPORT = amplify_core.QueryField(fieldName: "uploadPassport");
  static final DATEOFBIRTH = amplify_core.QueryField(fieldName: "dateOfBirth");
  static final TEMPID = amplify_core.QueryField(fieldName: "tempID");
  static final EXPERIENCE = amplify_core.QueryField(fieldName: "experience");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CandidateApplicationForm";
    modelSchemaDefinition.pluralName = "CandidateApplicationForms";
    
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
      key: CandidateApplicationForm.PROFILEPHOTO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.AGENT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.POSITION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.CONTRACTTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.EMPLOYEETYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.CHINESE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.GENDER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.AGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.COUNTRYOFBIRTH,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.NATIONALITY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.OTHERNATIONALITY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.MARITAL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.RACE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.OTHERRACE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.RELIGION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.OTHERRELIGION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.ICNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.ICEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.ICCOLOUR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.PASSPORTNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.ALTERNATENO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.PASSPORTISSUED,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.PASSPORTEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.PASSPORTDESTINATION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.CONTACTNO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.PRESENTADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.PERMANENTADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.DRIVINGLICENSE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.LANGUAGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.FAMILYDETAILS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.EDUCATIONDETAILS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.WORKEXPERIENCE,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.REFEREES,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.RELATIVES,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.EMERGENCYCONTACT,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.DISEASE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.LIQUOR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.CRIME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.DISEASEDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.LIQUORDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.CRIMEDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.SALARYEXCEPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.NOTICEPERIOD,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.EMPLOYEESTATEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.PERINTERVIEWSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.PERINTERVIEWDESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.SUPPORTINFO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.UPLOADRESUME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.UPLOADCERTIFICATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.UPLOADPASSPORT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.DATEOFBIRTH,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.TEMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: CandidateApplicationForm.EXPERIENCE,
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

class _CandidateApplicationFormModelType extends amplify_core.ModelType<CandidateApplicationForm> {
  const _CandidateApplicationFormModelType();
  
  @override
  CandidateApplicationForm fromJson(Map<String, dynamic> jsonData) {
    return CandidateApplicationForm.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'CandidateApplicationForm';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CandidateApplicationForm] in your schema.
 */
class CandidateApplicationFormModelIdentifier implements amplify_core.ModelIdentifier<CandidateApplicationForm> {
  final String id;

  /** Create an instance of CandidateApplicationFormModelIdentifier using [id] the primary key. */
  const CandidateApplicationFormModelIdentifier({
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
  String toString() => 'CandidateApplicationFormModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CandidateApplicationFormModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}