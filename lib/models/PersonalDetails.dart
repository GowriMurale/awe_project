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


/** This is an auto generated class representing the PersonalDetails type in your schema. */
class PersonalDetails extends amplify_core.Model {
  static const classType = const _PersonalDetailsModelType();
  final String id;
  final String? _empID;
  final int? _age;
  final String? _alternateNo;
  final String? _agent;
  final String? _contactNo;
  final String? _countryOfBirth;
  final String? _contractType;
  final String? _chinese;
  final String? _dateOfBirth;
  final String? _drivingLicense;
  final String? _email;
  final String? _employeeType;
  final List<String>? _educationDetails;
  final List<String>? _familyDetails;
  final String? _gender;
  final String? _bruneiIcNo;
  final String? _bruneiIcExpiry;
  final String? _bruneiIcColour;
  final String? _marital;
  final String? _name;
  final String? _nationality;
  final String? _otherNationality;
  final String? _otherRace;
  final String? _otherReligion;
  final String? _passportNo;
  final String? _passportIssued;
  final String? _passportExpiry;
  final String? _passportDestination;
  final String? _presentAddress;
  final String? _permanentAddress;
  final String? _profilePhoto;
  final String? _position;
  final String? _race;
  final String? _religion;
  final List<String>? _workExperience;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PersonalDetailsModelIdentifier get modelIdentifier {
      return PersonalDetailsModelIdentifier(
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
  
  String? get alternateNo {
    return _alternateNo;
  }
  
  String? get agent {
    return _agent;
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
  
  String? get chinese {
    return _chinese;
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
  
  String? get drivingLicense {
    return _drivingLicense;
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
  
  List<String>? get educationDetails {
    return _educationDetails;
  }
  
  List<String>? get familyDetails {
    return _familyDetails;
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
  
  String? get bruneiIcNo {
    return _bruneiIcNo;
  }
  
  String? get bruneiIcExpiry {
    return _bruneiIcExpiry;
  }
  
  String? get bruneiIcColour {
    return _bruneiIcColour;
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
  
  String? get otherRace {
    return _otherRace;
  }
  
  String? get otherReligion {
    return _otherReligion;
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
  
  List<String>? get workExperience {
    return _workExperience;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const PersonalDetails._internal({required this.id, required empID, required age, alternateNo, agent, required contactNo, required countryOfBirth, required contractType, chinese, required dateOfBirth, drivingLicense, required email, required employeeType, educationDetails, familyDetails, required gender, bruneiIcNo, bruneiIcExpiry, bruneiIcColour, required marital, required name, required nationality, otherNationality, otherRace, otherReligion, passportNo, passportIssued, passportExpiry, passportDestination, required presentAddress, required permanentAddress, required profilePhoto, required position, required race, required religion, workExperience, createdAt, updatedAt}): _empID = empID, _age = age, _alternateNo = alternateNo, _agent = agent, _contactNo = contactNo, _countryOfBirth = countryOfBirth, _contractType = contractType, _chinese = chinese, _dateOfBirth = dateOfBirth, _drivingLicense = drivingLicense, _email = email, _employeeType = employeeType, _educationDetails = educationDetails, _familyDetails = familyDetails, _gender = gender, _bruneiIcNo = bruneiIcNo, _bruneiIcExpiry = bruneiIcExpiry, _bruneiIcColour = bruneiIcColour, _marital = marital, _name = name, _nationality = nationality, _otherNationality = otherNationality, _otherRace = otherRace, _otherReligion = otherReligion, _passportNo = passportNo, _passportIssued = passportIssued, _passportExpiry = passportExpiry, _passportDestination = passportDestination, _presentAddress = presentAddress, _permanentAddress = permanentAddress, _profilePhoto = profilePhoto, _position = position, _race = race, _religion = religion, _workExperience = workExperience, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PersonalDetails({String? id, required String empID, required int age, String? alternateNo, String? agent, required String contactNo, required String countryOfBirth, required String contractType, String? chinese, required String dateOfBirth, String? drivingLicense, required String email, required String employeeType, List<String>? educationDetails, List<String>? familyDetails, required String gender, String? bruneiIcNo, String? bruneiIcExpiry, String? bruneiIcColour, required String marital, required String name, required String nationality, String? otherNationality, String? otherRace, String? otherReligion, String? passportNo, String? passportIssued, String? passportExpiry, String? passportDestination, required String presentAddress, required String permanentAddress, required String profilePhoto, required String position, required String race, required String religion, List<String>? workExperience}) {
    return PersonalDetails._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      age: age,
      alternateNo: alternateNo,
      agent: agent,
      contactNo: contactNo,
      countryOfBirth: countryOfBirth,
      contractType: contractType,
      chinese: chinese,
      dateOfBirth: dateOfBirth,
      drivingLicense: drivingLicense,
      email: email,
      employeeType: employeeType,
      educationDetails: educationDetails != null ? List<String>.unmodifiable(educationDetails) : educationDetails,
      familyDetails: familyDetails != null ? List<String>.unmodifiable(familyDetails) : familyDetails,
      gender: gender,
      bruneiIcNo: bruneiIcNo,
      bruneiIcExpiry: bruneiIcExpiry,
      bruneiIcColour: bruneiIcColour,
      marital: marital,
      name: name,
      nationality: nationality,
      otherNationality: otherNationality,
      otherRace: otherRace,
      otherReligion: otherReligion,
      passportNo: passportNo,
      passportIssued: passportIssued,
      passportExpiry: passportExpiry,
      passportDestination: passportDestination,
      presentAddress: presentAddress,
      permanentAddress: permanentAddress,
      profilePhoto: profilePhoto,
      position: position,
      race: race,
      religion: religion,
      workExperience: workExperience != null ? List<String>.unmodifiable(workExperience) : workExperience);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonalDetails &&
      id == other.id &&
      _empID == other._empID &&
      _age == other._age &&
      _alternateNo == other._alternateNo &&
      _agent == other._agent &&
      _contactNo == other._contactNo &&
      _countryOfBirth == other._countryOfBirth &&
      _contractType == other._contractType &&
      _chinese == other._chinese &&
      _dateOfBirth == other._dateOfBirth &&
      _drivingLicense == other._drivingLicense &&
      _email == other._email &&
      _employeeType == other._employeeType &&
      DeepCollectionEquality().equals(_educationDetails, other._educationDetails) &&
      DeepCollectionEquality().equals(_familyDetails, other._familyDetails) &&
      _gender == other._gender &&
      _bruneiIcNo == other._bruneiIcNo &&
      _bruneiIcExpiry == other._bruneiIcExpiry &&
      _bruneiIcColour == other._bruneiIcColour &&
      _marital == other._marital &&
      _name == other._name &&
      _nationality == other._nationality &&
      _otherNationality == other._otherNationality &&
      _otherRace == other._otherRace &&
      _otherReligion == other._otherReligion &&
      _passportNo == other._passportNo &&
      _passportIssued == other._passportIssued &&
      _passportExpiry == other._passportExpiry &&
      _passportDestination == other._passportDestination &&
      _presentAddress == other._presentAddress &&
      _permanentAddress == other._permanentAddress &&
      _profilePhoto == other._profilePhoto &&
      _position == other._position &&
      _race == other._race &&
      _religion == other._religion &&
      DeepCollectionEquality().equals(_workExperience, other._workExperience);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PersonalDetails {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("age=" + (_age != null ? _age!.toString() : "null") + ", ");
    buffer.write("alternateNo=" + "$_alternateNo" + ", ");
    buffer.write("agent=" + "$_agent" + ", ");
    buffer.write("contactNo=" + "$_contactNo" + ", ");
    buffer.write("countryOfBirth=" + "$_countryOfBirth" + ", ");
    buffer.write("contractType=" + "$_contractType" + ", ");
    buffer.write("chinese=" + "$_chinese" + ", ");
    buffer.write("dateOfBirth=" + "$_dateOfBirth" + ", ");
    buffer.write("drivingLicense=" + "$_drivingLicense" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("employeeType=" + "$_employeeType" + ", ");
    buffer.write("educationDetails=" + (_educationDetails != null ? _educationDetails!.toString() : "null") + ", ");
    buffer.write("familyDetails=" + (_familyDetails != null ? _familyDetails!.toString() : "null") + ", ");
    buffer.write("gender=" + "$_gender" + ", ");
    buffer.write("bruneiIcNo=" + "$_bruneiIcNo" + ", ");
    buffer.write("bruneiIcExpiry=" + "$_bruneiIcExpiry" + ", ");
    buffer.write("bruneiIcColour=" + "$_bruneiIcColour" + ", ");
    buffer.write("marital=" + "$_marital" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("nationality=" + "$_nationality" + ", ");
    buffer.write("otherNationality=" + "$_otherNationality" + ", ");
    buffer.write("otherRace=" + "$_otherRace" + ", ");
    buffer.write("otherReligion=" + "$_otherReligion" + ", ");
    buffer.write("passportNo=" + "$_passportNo" + ", ");
    buffer.write("passportIssued=" + "$_passportIssued" + ", ");
    buffer.write("passportExpiry=" + "$_passportExpiry" + ", ");
    buffer.write("passportDestination=" + "$_passportDestination" + ", ");
    buffer.write("presentAddress=" + "$_presentAddress" + ", ");
    buffer.write("permanentAddress=" + "$_permanentAddress" + ", ");
    buffer.write("profilePhoto=" + "$_profilePhoto" + ", ");
    buffer.write("position=" + "$_position" + ", ");
    buffer.write("race=" + "$_race" + ", ");
    buffer.write("religion=" + "$_religion" + ", ");
    buffer.write("workExperience=" + (_workExperience != null ? _workExperience!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PersonalDetails copyWith({String? empID, int? age, String? alternateNo, String? agent, String? contactNo, String? countryOfBirth, String? contractType, String? chinese, String? dateOfBirth, String? drivingLicense, String? email, String? employeeType, List<String>? educationDetails, List<String>? familyDetails, String? gender, String? bruneiIcNo, String? bruneiIcExpiry, String? bruneiIcColour, String? marital, String? name, String? nationality, String? otherNationality, String? otherRace, String? otherReligion, String? passportNo, String? passportIssued, String? passportExpiry, String? passportDestination, String? presentAddress, String? permanentAddress, String? profilePhoto, String? position, String? race, String? religion, List<String>? workExperience}) {
    return PersonalDetails._internal(
      id: id,
      empID: empID ?? this.empID,
      age: age ?? this.age,
      alternateNo: alternateNo ?? this.alternateNo,
      agent: agent ?? this.agent,
      contactNo: contactNo ?? this.contactNo,
      countryOfBirth: countryOfBirth ?? this.countryOfBirth,
      contractType: contractType ?? this.contractType,
      chinese: chinese ?? this.chinese,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      drivingLicense: drivingLicense ?? this.drivingLicense,
      email: email ?? this.email,
      employeeType: employeeType ?? this.employeeType,
      educationDetails: educationDetails ?? this.educationDetails,
      familyDetails: familyDetails ?? this.familyDetails,
      gender: gender ?? this.gender,
      bruneiIcNo: bruneiIcNo ?? this.bruneiIcNo,
      bruneiIcExpiry: bruneiIcExpiry ?? this.bruneiIcExpiry,
      bruneiIcColour: bruneiIcColour ?? this.bruneiIcColour,
      marital: marital ?? this.marital,
      name: name ?? this.name,
      nationality: nationality ?? this.nationality,
      otherNationality: otherNationality ?? this.otherNationality,
      otherRace: otherRace ?? this.otherRace,
      otherReligion: otherReligion ?? this.otherReligion,
      passportNo: passportNo ?? this.passportNo,
      passportIssued: passportIssued ?? this.passportIssued,
      passportExpiry: passportExpiry ?? this.passportExpiry,
      passportDestination: passportDestination ?? this.passportDestination,
      presentAddress: presentAddress ?? this.presentAddress,
      permanentAddress: permanentAddress ?? this.permanentAddress,
      profilePhoto: profilePhoto ?? this.profilePhoto,
      position: position ?? this.position,
      race: race ?? this.race,
      religion: religion ?? this.religion,
      workExperience: workExperience ?? this.workExperience);
  }
  
  PersonalDetails copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<int>? age,
    ModelFieldValue<String?>? alternateNo,
    ModelFieldValue<String?>? agent,
    ModelFieldValue<String>? contactNo,
    ModelFieldValue<String>? countryOfBirth,
    ModelFieldValue<String>? contractType,
    ModelFieldValue<String?>? chinese,
    ModelFieldValue<String>? dateOfBirth,
    ModelFieldValue<String?>? drivingLicense,
    ModelFieldValue<String>? email,
    ModelFieldValue<String>? employeeType,
    ModelFieldValue<List<String>>? educationDetails,
    ModelFieldValue<List<String>?>? familyDetails,
    ModelFieldValue<String>? gender,
    ModelFieldValue<String?>? bruneiIcNo,
    ModelFieldValue<String?>? bruneiIcExpiry,
    ModelFieldValue<String?>? bruneiIcColour,
    ModelFieldValue<String>? marital,
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? nationality,
    ModelFieldValue<String?>? otherNationality,
    ModelFieldValue<String?>? otherRace,
    ModelFieldValue<String?>? otherReligion,
    ModelFieldValue<String?>? passportNo,
    ModelFieldValue<String?>? passportIssued,
    ModelFieldValue<String?>? passportExpiry,
    ModelFieldValue<String?>? passportDestination,
    ModelFieldValue<String>? presentAddress,
    ModelFieldValue<String>? permanentAddress,
    ModelFieldValue<String>? profilePhoto,
    ModelFieldValue<String>? position,
    ModelFieldValue<String>? race,
    ModelFieldValue<String>? religion,
    ModelFieldValue<List<String>?>? workExperience
  }) {
    return PersonalDetails._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      age: age == null ? this.age : age.value,
      alternateNo: alternateNo == null ? this.alternateNo : alternateNo.value,
      agent: agent == null ? this.agent : agent.value,
      contactNo: contactNo == null ? this.contactNo : contactNo.value,
      countryOfBirth: countryOfBirth == null ? this.countryOfBirth : countryOfBirth.value,
      contractType: contractType == null ? this.contractType : contractType.value,
      chinese: chinese == null ? this.chinese : chinese.value,
      dateOfBirth: dateOfBirth == null ? this.dateOfBirth : dateOfBirth.value,
      drivingLicense: drivingLicense == null ? this.drivingLicense : drivingLicense.value,
      email: email == null ? this.email : email.value,
      employeeType: employeeType == null ? this.employeeType : employeeType.value,
      educationDetails: educationDetails == null ? this.educationDetails : educationDetails.value,
      familyDetails: familyDetails == null ? this.familyDetails : familyDetails.value,
      gender: gender == null ? this.gender : gender.value,
      bruneiIcNo: bruneiIcNo == null ? this.bruneiIcNo : bruneiIcNo.value,
      bruneiIcExpiry: bruneiIcExpiry == null ? this.bruneiIcExpiry : bruneiIcExpiry.value,
      bruneiIcColour: bruneiIcColour == null ? this.bruneiIcColour : bruneiIcColour.value,
      marital: marital == null ? this.marital : marital.value,
      name: name == null ? this.name : name.value,
      nationality: nationality == null ? this.nationality : nationality.value,
      otherNationality: otherNationality == null ? this.otherNationality : otherNationality.value,
      otherRace: otherRace == null ? this.otherRace : otherRace.value,
      otherReligion: otherReligion == null ? this.otherReligion : otherReligion.value,
      passportNo: passportNo == null ? this.passportNo : passportNo.value,
      passportIssued: passportIssued == null ? this.passportIssued : passportIssued.value,
      passportExpiry: passportExpiry == null ? this.passportExpiry : passportExpiry.value,
      passportDestination: passportDestination == null ? this.passportDestination : passportDestination.value,
      presentAddress: presentAddress == null ? this.presentAddress : presentAddress.value,
      permanentAddress: permanentAddress == null ? this.permanentAddress : permanentAddress.value,
      profilePhoto: profilePhoto == null ? this.profilePhoto : profilePhoto.value,
      position: position == null ? this.position : position.value,
      race: race == null ? this.race : race.value,
      religion: religion == null ? this.religion : religion.value,
      workExperience: workExperience == null ? this.workExperience : workExperience.value
    );
  }
  
  PersonalDetails.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _age = (json['age'] as num?)?.toInt(),
      _alternateNo = json['alternateNo'],
      _agent = json['agent'],
      _contactNo = json['contactNo'],
      _countryOfBirth = json['countryOfBirth'],
      _contractType = json['contractType'],
      _chinese = json['chinese'],
      _dateOfBirth = json['dateOfBirth'],
      _drivingLicense = json['drivingLicense'],
      _email = json['email'],
      _employeeType = json['employeeType'],
      _educationDetails = json['educationDetails']?.cast<String>(),
      _familyDetails = json['familyDetails']?.cast<String>(),
      _gender = json['gender'],
      _bruneiIcNo = json['bruneiIcNo'],
      _bruneiIcExpiry = json['bruneiIcExpiry'],
      _bruneiIcColour = json['bruneiIcColour'],
      _marital = json['marital'],
      _name = json['name'],
      _nationality = json['nationality'],
      _otherNationality = json['otherNationality'],
      _otherRace = json['otherRace'],
      _otherReligion = json['otherReligion'],
      _passportNo = json['passportNo'],
      _passportIssued = json['passportIssued'],
      _passportExpiry = json['passportExpiry'],
      _passportDestination = json['passportDestination'],
      _presentAddress = json['presentAddress'],
      _permanentAddress = json['permanentAddress'],
      _profilePhoto = json['profilePhoto'],
      _position = json['position'],
      _race = json['race'],
      _religion = json['religion'],
      _workExperience = json['workExperience']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'age': _age, 'alternateNo': _alternateNo, 'agent': _agent, 'contactNo': _contactNo, 'countryOfBirth': _countryOfBirth, 'contractType': _contractType, 'chinese': _chinese, 'dateOfBirth': _dateOfBirth, 'drivingLicense': _drivingLicense, 'email': _email, 'employeeType': _employeeType, 'educationDetails': _educationDetails, 'familyDetails': _familyDetails, 'gender': _gender, 'bruneiIcNo': _bruneiIcNo, 'bruneiIcExpiry': _bruneiIcExpiry, 'bruneiIcColour': _bruneiIcColour, 'marital': _marital, 'name': _name, 'nationality': _nationality, 'otherNationality': _otherNationality, 'otherRace': _otherRace, 'otherReligion': _otherReligion, 'passportNo': _passportNo, 'passportIssued': _passportIssued, 'passportExpiry': _passportExpiry, 'passportDestination': _passportDestination, 'presentAddress': _presentAddress, 'permanentAddress': _permanentAddress, 'profilePhoto': _profilePhoto, 'position': _position, 'race': _race, 'religion': _religion, 'workExperience': _workExperience, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'age': _age,
    'alternateNo': _alternateNo,
    'agent': _agent,
    'contactNo': _contactNo,
    'countryOfBirth': _countryOfBirth,
    'contractType': _contractType,
    'chinese': _chinese,
    'dateOfBirth': _dateOfBirth,
    'drivingLicense': _drivingLicense,
    'email': _email,
    'employeeType': _employeeType,
    'educationDetails': _educationDetails,
    'familyDetails': _familyDetails,
    'gender': _gender,
    'bruneiIcNo': _bruneiIcNo,
    'bruneiIcExpiry': _bruneiIcExpiry,
    'bruneiIcColour': _bruneiIcColour,
    'marital': _marital,
    'name': _name,
    'nationality': _nationality,
    'otherNationality': _otherNationality,
    'otherRace': _otherRace,
    'otherReligion': _otherReligion,
    'passportNo': _passportNo,
    'passportIssued': _passportIssued,
    'passportExpiry': _passportExpiry,
    'passportDestination': _passportDestination,
    'presentAddress': _presentAddress,
    'permanentAddress': _permanentAddress,
    'profilePhoto': _profilePhoto,
    'position': _position,
    'race': _race,
    'religion': _religion,
    'workExperience': _workExperience,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PersonalDetailsModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PersonalDetailsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final AGE = amplify_core.QueryField(fieldName: "age");
  static final ALTERNATENO = amplify_core.QueryField(fieldName: "alternateNo");
  static final AGENT = amplify_core.QueryField(fieldName: "agent");
  static final CONTACTNO = amplify_core.QueryField(fieldName: "contactNo");
  static final COUNTRYOFBIRTH = amplify_core.QueryField(fieldName: "countryOfBirth");
  static final CONTRACTTYPE = amplify_core.QueryField(fieldName: "contractType");
  static final CHINESE = amplify_core.QueryField(fieldName: "chinese");
  static final DATEOFBIRTH = amplify_core.QueryField(fieldName: "dateOfBirth");
  static final DRIVINGLICENSE = amplify_core.QueryField(fieldName: "drivingLicense");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final EMPLOYEETYPE = amplify_core.QueryField(fieldName: "employeeType");
  static final EDUCATIONDETAILS = amplify_core.QueryField(fieldName: "educationDetails");
  static final FAMILYDETAILS = amplify_core.QueryField(fieldName: "familyDetails");
  static final GENDER = amplify_core.QueryField(fieldName: "gender");
  static final BRUNEIICNO = amplify_core.QueryField(fieldName: "bruneiIcNo");
  static final BRUNEIICEXPIRY = amplify_core.QueryField(fieldName: "bruneiIcExpiry");
  static final BRUNEIICCOLOUR = amplify_core.QueryField(fieldName: "bruneiIcColour");
  static final MARITAL = amplify_core.QueryField(fieldName: "marital");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final NATIONALITY = amplify_core.QueryField(fieldName: "nationality");
  static final OTHERNATIONALITY = amplify_core.QueryField(fieldName: "otherNationality");
  static final OTHERRACE = amplify_core.QueryField(fieldName: "otherRace");
  static final OTHERRELIGION = amplify_core.QueryField(fieldName: "otherReligion");
  static final PASSPORTNO = amplify_core.QueryField(fieldName: "passportNo");
  static final PASSPORTISSUED = amplify_core.QueryField(fieldName: "passportIssued");
  static final PASSPORTEXPIRY = amplify_core.QueryField(fieldName: "passportExpiry");
  static final PASSPORTDESTINATION = amplify_core.QueryField(fieldName: "passportDestination");
  static final PRESENTADDRESS = amplify_core.QueryField(fieldName: "presentAddress");
  static final PERMANENTADDRESS = amplify_core.QueryField(fieldName: "permanentAddress");
  static final PROFILEPHOTO = amplify_core.QueryField(fieldName: "profilePhoto");
  static final POSITION = amplify_core.QueryField(fieldName: "position");
  static final RACE = amplify_core.QueryField(fieldName: "race");
  static final RELIGION = amplify_core.QueryField(fieldName: "religion");
  static final WORKEXPERIENCE = amplify_core.QueryField(fieldName: "workExperience");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PersonalDetails";
    modelSchemaDefinition.pluralName = "PersonalDetails";
    
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
      key: PersonalDetails.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.AGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.ALTERNATENO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.AGENT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.CONTACTNO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.COUNTRYOFBIRTH,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.CONTRACTTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.CHINESE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.DATEOFBIRTH,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.DRIVINGLICENSE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.EMPLOYEETYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.EDUCATIONDETAILS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.FAMILYDETAILS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.GENDER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.BRUNEIICNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.BRUNEIICEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.BRUNEIICCOLOUR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.MARITAL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.NATIONALITY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.OTHERNATIONALITY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.OTHERRACE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.OTHERRELIGION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PASSPORTNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PASSPORTISSUED,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PASSPORTEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PASSPORTDESTINATION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PRESENTADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PERMANENTADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PROFILEPHOTO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.POSITION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.RACE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.RELIGION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.WORKEXPERIENCE,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
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

class _PersonalDetailsModelType extends amplify_core.ModelType<PersonalDetails> {
  const _PersonalDetailsModelType();
  
  @override
  PersonalDetails fromJson(Map<String, dynamic> jsonData) {
    return PersonalDetails.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PersonalDetails';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PersonalDetails] in your schema.
 */
class PersonalDetailsModelIdentifier implements amplify_core.ModelIdentifier<PersonalDetails> {
  final String id;

  /** Create an instance of PersonalDetailsModelIdentifier using [id] the primary key. */
  const PersonalDetailsModelIdentifier({
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
  String toString() => 'PersonalDetailsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PersonalDetailsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}