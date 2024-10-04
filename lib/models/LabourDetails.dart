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


/** This is an auto generated class representing the LabourDetails type in your schema. */
class LabourDetails extends amplify_core.Model {
  static const classType = const _LabourDetailsModelType();
  final String id;
  final String? _empID;
  final String? _workPermitType;
  final String? _arrivalStampingExpiry;
  final String? _employmentPassEndorsement;
  final String? _immigrationDeptDate;
  final String? _employmentPassExpiry;
  final String? _employmentPassStatus;
  final String? _overseasMedicalDate;
  final String? _overseasMedicalExpiry;
  final String? _bruhimsRegistrationDate;
  final String? _bruhimsRegistrationNumber;
  final String? _bruneiMedicalAppointmentDate;
  final String? _bruneiMedicalExpiry;
  final String? _passportLocation;
  final String? _reEntryVisaApplication;
  final String? _immigrationApprovalDate;
  final String? _reEntryVisaExpiry;
  final String? _airTicketStatus;
  final String? _remarks;
  final String? _dependentName;
  final String? _dependentPassportNumber;
  final String? _dependentPassportExpiry;
  final String? _relation;
  final String? _labourDepositPaidBy;
  final String? _labourDepositReceiptNumber;
  final String? _labourDepositAmount;
  final List<String>? _labourUploadDoc;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  LabourDetailsModelIdentifier get modelIdentifier {
      return LabourDetailsModelIdentifier(
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
  
  String get workPermitType {
    try {
      return _workPermitType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get arrivalStampingExpiry {
    try {
      return _arrivalStampingExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get employmentPassEndorsement {
    try {
      return _employmentPassEndorsement!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get immigrationDeptDate {
    try {
      return _immigrationDeptDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get employmentPassExpiry {
    try {
      return _employmentPassExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get employmentPassStatus {
    try {
      return _employmentPassStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get overseasMedicalDate {
    try {
      return _overseasMedicalDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get overseasMedicalExpiry {
    try {
      return _overseasMedicalExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bruhimsRegistrationDate {
    try {
      return _bruhimsRegistrationDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bruhimsRegistrationNumber {
    try {
      return _bruhimsRegistrationNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bruneiMedicalAppointmentDate {
    try {
      return _bruneiMedicalAppointmentDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get bruneiMedicalExpiry {
    try {
      return _bruneiMedicalExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get passportLocation {
    try {
      return _passportLocation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get reEntryVisaApplication {
    try {
      return _reEntryVisaApplication!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get immigrationApprovalDate {
    try {
      return _immigrationApprovalDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get reEntryVisaExpiry {
    try {
      return _reEntryVisaExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get airTicketStatus {
    try {
      return _airTicketStatus!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get remarks {
    try {
      return _remarks!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dependentName {
    try {
      return _dependentName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dependentPassportNumber {
    try {
      return _dependentPassportNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get dependentPassportExpiry {
    try {
      return _dependentPassportExpiry!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get relation {
    try {
      return _relation!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get labourDepositPaidBy {
    try {
      return _labourDepositPaidBy!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get labourDepositReceiptNumber {
    try {
      return _labourDepositReceiptNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get labourDepositAmount {
    try {
      return _labourDepositAmount!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get labourUploadDoc {
    return _labourUploadDoc;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const LabourDetails._internal({required this.id, required empID, required workPermitType, required arrivalStampingExpiry, required employmentPassEndorsement, required immigrationDeptDate, required employmentPassExpiry, required employmentPassStatus, required overseasMedicalDate, required overseasMedicalExpiry, required bruhimsRegistrationDate, required bruhimsRegistrationNumber, required bruneiMedicalAppointmentDate, required bruneiMedicalExpiry, required passportLocation, required reEntryVisaApplication, required immigrationApprovalDate, required reEntryVisaExpiry, required airTicketStatus, required remarks, required dependentName, required dependentPassportNumber, required dependentPassportExpiry, required relation, required labourDepositPaidBy, required labourDepositReceiptNumber, required labourDepositAmount, labourUploadDoc, createdAt, updatedAt}): _empID = empID, _workPermitType = workPermitType, _arrivalStampingExpiry = arrivalStampingExpiry, _employmentPassEndorsement = employmentPassEndorsement, _immigrationDeptDate = immigrationDeptDate, _employmentPassExpiry = employmentPassExpiry, _employmentPassStatus = employmentPassStatus, _overseasMedicalDate = overseasMedicalDate, _overseasMedicalExpiry = overseasMedicalExpiry, _bruhimsRegistrationDate = bruhimsRegistrationDate, _bruhimsRegistrationNumber = bruhimsRegistrationNumber, _bruneiMedicalAppointmentDate = bruneiMedicalAppointmentDate, _bruneiMedicalExpiry = bruneiMedicalExpiry, _passportLocation = passportLocation, _reEntryVisaApplication = reEntryVisaApplication, _immigrationApprovalDate = immigrationApprovalDate, _reEntryVisaExpiry = reEntryVisaExpiry, _airTicketStatus = airTicketStatus, _remarks = remarks, _dependentName = dependentName, _dependentPassportNumber = dependentPassportNumber, _dependentPassportExpiry = dependentPassportExpiry, _relation = relation, _labourDepositPaidBy = labourDepositPaidBy, _labourDepositReceiptNumber = labourDepositReceiptNumber, _labourDepositAmount = labourDepositAmount, _labourUploadDoc = labourUploadDoc, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory LabourDetails({String? id, required String empID, required String workPermitType, required String arrivalStampingExpiry, required String employmentPassEndorsement, required String immigrationDeptDate, required String employmentPassExpiry, required String employmentPassStatus, required String overseasMedicalDate, required String overseasMedicalExpiry, required String bruhimsRegistrationDate, required String bruhimsRegistrationNumber, required String bruneiMedicalAppointmentDate, required String bruneiMedicalExpiry, required String passportLocation, required String reEntryVisaApplication, required String immigrationApprovalDate, required String reEntryVisaExpiry, required String airTicketStatus, required String remarks, required String dependentName, required String dependentPassportNumber, required String dependentPassportExpiry, required String relation, required String labourDepositPaidBy, required String labourDepositReceiptNumber, required String labourDepositAmount, List<String>? labourUploadDoc}) {
    return LabourDetails._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      empID: empID,
      workPermitType: workPermitType,
      arrivalStampingExpiry: arrivalStampingExpiry,
      employmentPassEndorsement: employmentPassEndorsement,
      immigrationDeptDate: immigrationDeptDate,
      employmentPassExpiry: employmentPassExpiry,
      employmentPassStatus: employmentPassStatus,
      overseasMedicalDate: overseasMedicalDate,
      overseasMedicalExpiry: overseasMedicalExpiry,
      bruhimsRegistrationDate: bruhimsRegistrationDate,
      bruhimsRegistrationNumber: bruhimsRegistrationNumber,
      bruneiMedicalAppointmentDate: bruneiMedicalAppointmentDate,
      bruneiMedicalExpiry: bruneiMedicalExpiry,
      passportLocation: passportLocation,
      reEntryVisaApplication: reEntryVisaApplication,
      immigrationApprovalDate: immigrationApprovalDate,
      reEntryVisaExpiry: reEntryVisaExpiry,
      airTicketStatus: airTicketStatus,
      remarks: remarks,
      dependentName: dependentName,
      dependentPassportNumber: dependentPassportNumber,
      dependentPassportExpiry: dependentPassportExpiry,
      relation: relation,
      labourDepositPaidBy: labourDepositPaidBy,
      labourDepositReceiptNumber: labourDepositReceiptNumber,
      labourDepositAmount: labourDepositAmount,
      labourUploadDoc: labourUploadDoc != null ? List<String>.unmodifiable(labourUploadDoc) : labourUploadDoc);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LabourDetails &&
      id == other.id &&
      _empID == other._empID &&
      _workPermitType == other._workPermitType &&
      _arrivalStampingExpiry == other._arrivalStampingExpiry &&
      _employmentPassEndorsement == other._employmentPassEndorsement &&
      _immigrationDeptDate == other._immigrationDeptDate &&
      _employmentPassExpiry == other._employmentPassExpiry &&
      _employmentPassStatus == other._employmentPassStatus &&
      _overseasMedicalDate == other._overseasMedicalDate &&
      _overseasMedicalExpiry == other._overseasMedicalExpiry &&
      _bruhimsRegistrationDate == other._bruhimsRegistrationDate &&
      _bruhimsRegistrationNumber == other._bruhimsRegistrationNumber &&
      _bruneiMedicalAppointmentDate == other._bruneiMedicalAppointmentDate &&
      _bruneiMedicalExpiry == other._bruneiMedicalExpiry &&
      _passportLocation == other._passportLocation &&
      _reEntryVisaApplication == other._reEntryVisaApplication &&
      _immigrationApprovalDate == other._immigrationApprovalDate &&
      _reEntryVisaExpiry == other._reEntryVisaExpiry &&
      _airTicketStatus == other._airTicketStatus &&
      _remarks == other._remarks &&
      _dependentName == other._dependentName &&
      _dependentPassportNumber == other._dependentPassportNumber &&
      _dependentPassportExpiry == other._dependentPassportExpiry &&
      _relation == other._relation &&
      _labourDepositPaidBy == other._labourDepositPaidBy &&
      _labourDepositReceiptNumber == other._labourDepositReceiptNumber &&
      _labourDepositAmount == other._labourDepositAmount &&
      DeepCollectionEquality().equals(_labourUploadDoc, other._labourUploadDoc);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("LabourDetails {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("empID=" + "$_empID" + ", ");
    buffer.write("workPermitType=" + "$_workPermitType" + ", ");
    buffer.write("arrivalStampingExpiry=" + "$_arrivalStampingExpiry" + ", ");
    buffer.write("employmentPassEndorsement=" + "$_employmentPassEndorsement" + ", ");
    buffer.write("immigrationDeptDate=" + "$_immigrationDeptDate" + ", ");
    buffer.write("employmentPassExpiry=" + "$_employmentPassExpiry" + ", ");
    buffer.write("employmentPassStatus=" + "$_employmentPassStatus" + ", ");
    buffer.write("overseasMedicalDate=" + "$_overseasMedicalDate" + ", ");
    buffer.write("overseasMedicalExpiry=" + "$_overseasMedicalExpiry" + ", ");
    buffer.write("bruhimsRegistrationDate=" + "$_bruhimsRegistrationDate" + ", ");
    buffer.write("bruhimsRegistrationNumber=" + "$_bruhimsRegistrationNumber" + ", ");
    buffer.write("bruneiMedicalAppointmentDate=" + "$_bruneiMedicalAppointmentDate" + ", ");
    buffer.write("bruneiMedicalExpiry=" + "$_bruneiMedicalExpiry" + ", ");
    buffer.write("passportLocation=" + "$_passportLocation" + ", ");
    buffer.write("reEntryVisaApplication=" + "$_reEntryVisaApplication" + ", ");
    buffer.write("immigrationApprovalDate=" + "$_immigrationApprovalDate" + ", ");
    buffer.write("reEntryVisaExpiry=" + "$_reEntryVisaExpiry" + ", ");
    buffer.write("airTicketStatus=" + "$_airTicketStatus" + ", ");
    buffer.write("remarks=" + "$_remarks" + ", ");
    buffer.write("dependentName=" + "$_dependentName" + ", ");
    buffer.write("dependentPassportNumber=" + "$_dependentPassportNumber" + ", ");
    buffer.write("dependentPassportExpiry=" + "$_dependentPassportExpiry" + ", ");
    buffer.write("relation=" + "$_relation" + ", ");
    buffer.write("labourDepositPaidBy=" + "$_labourDepositPaidBy" + ", ");
    buffer.write("labourDepositReceiptNumber=" + "$_labourDepositReceiptNumber" + ", ");
    buffer.write("labourDepositAmount=" + "$_labourDepositAmount" + ", ");
    buffer.write("labourUploadDoc=" + (_labourUploadDoc != null ? _labourUploadDoc!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  LabourDetails copyWith({String? empID, String? workPermitType, String? arrivalStampingExpiry, String? employmentPassEndorsement, String? immigrationDeptDate, String? employmentPassExpiry, String? employmentPassStatus, String? overseasMedicalDate, String? overseasMedicalExpiry, String? bruhimsRegistrationDate, String? bruhimsRegistrationNumber, String? bruneiMedicalAppointmentDate, String? bruneiMedicalExpiry, String? passportLocation, String? reEntryVisaApplication, String? immigrationApprovalDate, String? reEntryVisaExpiry, String? airTicketStatus, String? remarks, String? dependentName, String? dependentPassportNumber, String? dependentPassportExpiry, String? relation, String? labourDepositPaidBy, String? labourDepositReceiptNumber, String? labourDepositAmount, List<String>? labourUploadDoc}) {
    return LabourDetails._internal(
      id: id,
      empID: empID ?? this.empID,
      workPermitType: workPermitType ?? this.workPermitType,
      arrivalStampingExpiry: arrivalStampingExpiry ?? this.arrivalStampingExpiry,
      employmentPassEndorsement: employmentPassEndorsement ?? this.employmentPassEndorsement,
      immigrationDeptDate: immigrationDeptDate ?? this.immigrationDeptDate,
      employmentPassExpiry: employmentPassExpiry ?? this.employmentPassExpiry,
      employmentPassStatus: employmentPassStatus ?? this.employmentPassStatus,
      overseasMedicalDate: overseasMedicalDate ?? this.overseasMedicalDate,
      overseasMedicalExpiry: overseasMedicalExpiry ?? this.overseasMedicalExpiry,
      bruhimsRegistrationDate: bruhimsRegistrationDate ?? this.bruhimsRegistrationDate,
      bruhimsRegistrationNumber: bruhimsRegistrationNumber ?? this.bruhimsRegistrationNumber,
      bruneiMedicalAppointmentDate: bruneiMedicalAppointmentDate ?? this.bruneiMedicalAppointmentDate,
      bruneiMedicalExpiry: bruneiMedicalExpiry ?? this.bruneiMedicalExpiry,
      passportLocation: passportLocation ?? this.passportLocation,
      reEntryVisaApplication: reEntryVisaApplication ?? this.reEntryVisaApplication,
      immigrationApprovalDate: immigrationApprovalDate ?? this.immigrationApprovalDate,
      reEntryVisaExpiry: reEntryVisaExpiry ?? this.reEntryVisaExpiry,
      airTicketStatus: airTicketStatus ?? this.airTicketStatus,
      remarks: remarks ?? this.remarks,
      dependentName: dependentName ?? this.dependentName,
      dependentPassportNumber: dependentPassportNumber ?? this.dependentPassportNumber,
      dependentPassportExpiry: dependentPassportExpiry ?? this.dependentPassportExpiry,
      relation: relation ?? this.relation,
      labourDepositPaidBy: labourDepositPaidBy ?? this.labourDepositPaidBy,
      labourDepositReceiptNumber: labourDepositReceiptNumber ?? this.labourDepositReceiptNumber,
      labourDepositAmount: labourDepositAmount ?? this.labourDepositAmount,
      labourUploadDoc: labourUploadDoc ?? this.labourUploadDoc);
  }
  
  LabourDetails copyWithModelFieldValues({
    ModelFieldValue<String>? empID,
    ModelFieldValue<String>? workPermitType,
    ModelFieldValue<String>? arrivalStampingExpiry,
    ModelFieldValue<String>? employmentPassEndorsement,
    ModelFieldValue<String>? immigrationDeptDate,
    ModelFieldValue<String>? employmentPassExpiry,
    ModelFieldValue<String>? employmentPassStatus,
    ModelFieldValue<String>? overseasMedicalDate,
    ModelFieldValue<String>? overseasMedicalExpiry,
    ModelFieldValue<String>? bruhimsRegistrationDate,
    ModelFieldValue<String>? bruhimsRegistrationNumber,
    ModelFieldValue<String>? bruneiMedicalAppointmentDate,
    ModelFieldValue<String>? bruneiMedicalExpiry,
    ModelFieldValue<String>? passportLocation,
    ModelFieldValue<String>? reEntryVisaApplication,
    ModelFieldValue<String>? immigrationApprovalDate,
    ModelFieldValue<String>? reEntryVisaExpiry,
    ModelFieldValue<String>? airTicketStatus,
    ModelFieldValue<String>? remarks,
    ModelFieldValue<String>? dependentName,
    ModelFieldValue<String>? dependentPassportNumber,
    ModelFieldValue<String>? dependentPassportExpiry,
    ModelFieldValue<String>? relation,
    ModelFieldValue<String>? labourDepositPaidBy,
    ModelFieldValue<String>? labourDepositReceiptNumber,
    ModelFieldValue<String>? labourDepositAmount,
    ModelFieldValue<List<String>>? labourUploadDoc
  }) {
    return LabourDetails._internal(
      id: id,
      empID: empID == null ? this.empID : empID.value,
      workPermitType: workPermitType == null ? this.workPermitType : workPermitType.value,
      arrivalStampingExpiry: arrivalStampingExpiry == null ? this.arrivalStampingExpiry : arrivalStampingExpiry.value,
      employmentPassEndorsement: employmentPassEndorsement == null ? this.employmentPassEndorsement : employmentPassEndorsement.value,
      immigrationDeptDate: immigrationDeptDate == null ? this.immigrationDeptDate : immigrationDeptDate.value,
      employmentPassExpiry: employmentPassExpiry == null ? this.employmentPassExpiry : employmentPassExpiry.value,
      employmentPassStatus: employmentPassStatus == null ? this.employmentPassStatus : employmentPassStatus.value,
      overseasMedicalDate: overseasMedicalDate == null ? this.overseasMedicalDate : overseasMedicalDate.value,
      overseasMedicalExpiry: overseasMedicalExpiry == null ? this.overseasMedicalExpiry : overseasMedicalExpiry.value,
      bruhimsRegistrationDate: bruhimsRegistrationDate == null ? this.bruhimsRegistrationDate : bruhimsRegistrationDate.value,
      bruhimsRegistrationNumber: bruhimsRegistrationNumber == null ? this.bruhimsRegistrationNumber : bruhimsRegistrationNumber.value,
      bruneiMedicalAppointmentDate: bruneiMedicalAppointmentDate == null ? this.bruneiMedicalAppointmentDate : bruneiMedicalAppointmentDate.value,
      bruneiMedicalExpiry: bruneiMedicalExpiry == null ? this.bruneiMedicalExpiry : bruneiMedicalExpiry.value,
      passportLocation: passportLocation == null ? this.passportLocation : passportLocation.value,
      reEntryVisaApplication: reEntryVisaApplication == null ? this.reEntryVisaApplication : reEntryVisaApplication.value,
      immigrationApprovalDate: immigrationApprovalDate == null ? this.immigrationApprovalDate : immigrationApprovalDate.value,
      reEntryVisaExpiry: reEntryVisaExpiry == null ? this.reEntryVisaExpiry : reEntryVisaExpiry.value,
      airTicketStatus: airTicketStatus == null ? this.airTicketStatus : airTicketStatus.value,
      remarks: remarks == null ? this.remarks : remarks.value,
      dependentName: dependentName == null ? this.dependentName : dependentName.value,
      dependentPassportNumber: dependentPassportNumber == null ? this.dependentPassportNumber : dependentPassportNumber.value,
      dependentPassportExpiry: dependentPassportExpiry == null ? this.dependentPassportExpiry : dependentPassportExpiry.value,
      relation: relation == null ? this.relation : relation.value,
      labourDepositPaidBy: labourDepositPaidBy == null ? this.labourDepositPaidBy : labourDepositPaidBy.value,
      labourDepositReceiptNumber: labourDepositReceiptNumber == null ? this.labourDepositReceiptNumber : labourDepositReceiptNumber.value,
      labourDepositAmount: labourDepositAmount == null ? this.labourDepositAmount : labourDepositAmount.value,
      labourUploadDoc: labourUploadDoc == null ? this.labourUploadDoc : labourUploadDoc.value
    );
  }
  
  LabourDetails.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _empID = json['empID'],
      _workPermitType = json['workPermitType'],
      _arrivalStampingExpiry = json['arrivalStampingExpiry'],
      _employmentPassEndorsement = json['employmentPassEndorsement'],
      _immigrationDeptDate = json['immigrationDeptDate'],
      _employmentPassExpiry = json['employmentPassExpiry'],
      _employmentPassStatus = json['employmentPassStatus'],
      _overseasMedicalDate = json['overseasMedicalDate'],
      _overseasMedicalExpiry = json['overseasMedicalExpiry'],
      _bruhimsRegistrationDate = json['bruhimsRegistrationDate'],
      _bruhimsRegistrationNumber = json['bruhimsRegistrationNumber'],
      _bruneiMedicalAppointmentDate = json['bruneiMedicalAppointmentDate'],
      _bruneiMedicalExpiry = json['bruneiMedicalExpiry'],
      _passportLocation = json['passportLocation'],
      _reEntryVisaApplication = json['reEntryVisaApplication'],
      _immigrationApprovalDate = json['immigrationApprovalDate'],
      _reEntryVisaExpiry = json['reEntryVisaExpiry'],
      _airTicketStatus = json['airTicketStatus'],
      _remarks = json['remarks'],
      _dependentName = json['dependentName'],
      _dependentPassportNumber = json['dependentPassportNumber'],
      _dependentPassportExpiry = json['dependentPassportExpiry'],
      _relation = json['relation'],
      _labourDepositPaidBy = json['labourDepositPaidBy'],
      _labourDepositReceiptNumber = json['labourDepositReceiptNumber'],
      _labourDepositAmount = json['labourDepositAmount'],
      _labourUploadDoc = json['labourUploadDoc']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'empID': _empID, 'workPermitType': _workPermitType, 'arrivalStampingExpiry': _arrivalStampingExpiry, 'employmentPassEndorsement': _employmentPassEndorsement, 'immigrationDeptDate': _immigrationDeptDate, 'employmentPassExpiry': _employmentPassExpiry, 'employmentPassStatus': _employmentPassStatus, 'overseasMedicalDate': _overseasMedicalDate, 'overseasMedicalExpiry': _overseasMedicalExpiry, 'bruhimsRegistrationDate': _bruhimsRegistrationDate, 'bruhimsRegistrationNumber': _bruhimsRegistrationNumber, 'bruneiMedicalAppointmentDate': _bruneiMedicalAppointmentDate, 'bruneiMedicalExpiry': _bruneiMedicalExpiry, 'passportLocation': _passportLocation, 'reEntryVisaApplication': _reEntryVisaApplication, 'immigrationApprovalDate': _immigrationApprovalDate, 'reEntryVisaExpiry': _reEntryVisaExpiry, 'airTicketStatus': _airTicketStatus, 'remarks': _remarks, 'dependentName': _dependentName, 'dependentPassportNumber': _dependentPassportNumber, 'dependentPassportExpiry': _dependentPassportExpiry, 'relation': _relation, 'labourDepositPaidBy': _labourDepositPaidBy, 'labourDepositReceiptNumber': _labourDepositReceiptNumber, 'labourDepositAmount': _labourDepositAmount, 'labourUploadDoc': _labourUploadDoc, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'empID': _empID,
    'workPermitType': _workPermitType,
    'arrivalStampingExpiry': _arrivalStampingExpiry,
    'employmentPassEndorsement': _employmentPassEndorsement,
    'immigrationDeptDate': _immigrationDeptDate,
    'employmentPassExpiry': _employmentPassExpiry,
    'employmentPassStatus': _employmentPassStatus,
    'overseasMedicalDate': _overseasMedicalDate,
    'overseasMedicalExpiry': _overseasMedicalExpiry,
    'bruhimsRegistrationDate': _bruhimsRegistrationDate,
    'bruhimsRegistrationNumber': _bruhimsRegistrationNumber,
    'bruneiMedicalAppointmentDate': _bruneiMedicalAppointmentDate,
    'bruneiMedicalExpiry': _bruneiMedicalExpiry,
    'passportLocation': _passportLocation,
    'reEntryVisaApplication': _reEntryVisaApplication,
    'immigrationApprovalDate': _immigrationApprovalDate,
    'reEntryVisaExpiry': _reEntryVisaExpiry,
    'airTicketStatus': _airTicketStatus,
    'remarks': _remarks,
    'dependentName': _dependentName,
    'dependentPassportNumber': _dependentPassportNumber,
    'dependentPassportExpiry': _dependentPassportExpiry,
    'relation': _relation,
    'labourDepositPaidBy': _labourDepositPaidBy,
    'labourDepositReceiptNumber': _labourDepositReceiptNumber,
    'labourDepositAmount': _labourDepositAmount,
    'labourUploadDoc': _labourUploadDoc,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<LabourDetailsModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<LabourDetailsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final EMPID = amplify_core.QueryField(fieldName: "empID");
  static final WORKPERMITTYPE = amplify_core.QueryField(fieldName: "workPermitType");
  static final ARRIVALSTAMPINGEXPIRY = amplify_core.QueryField(fieldName: "arrivalStampingExpiry");
  static final EMPLOYMENTPASSENDORSEMENT = amplify_core.QueryField(fieldName: "employmentPassEndorsement");
  static final IMMIGRATIONDEPTDATE = amplify_core.QueryField(fieldName: "immigrationDeptDate");
  static final EMPLOYMENTPASSEXPIRY = amplify_core.QueryField(fieldName: "employmentPassExpiry");
  static final EMPLOYMENTPASSSTATUS = amplify_core.QueryField(fieldName: "employmentPassStatus");
  static final OVERSEASMEDICALDATE = amplify_core.QueryField(fieldName: "overseasMedicalDate");
  static final OVERSEASMEDICALEXPIRY = amplify_core.QueryField(fieldName: "overseasMedicalExpiry");
  static final BRUHIMSREGISTRATIONDATE = amplify_core.QueryField(fieldName: "bruhimsRegistrationDate");
  static final BRUHIMSREGISTRATIONNUMBER = amplify_core.QueryField(fieldName: "bruhimsRegistrationNumber");
  static final BRUNEIMEDICALAPPOINTMENTDATE = amplify_core.QueryField(fieldName: "bruneiMedicalAppointmentDate");
  static final BRUNEIMEDICALEXPIRY = amplify_core.QueryField(fieldName: "bruneiMedicalExpiry");
  static final PASSPORTLOCATION = amplify_core.QueryField(fieldName: "passportLocation");
  static final REENTRYVISAAPPLICATION = amplify_core.QueryField(fieldName: "reEntryVisaApplication");
  static final IMMIGRATIONAPPROVALDATE = amplify_core.QueryField(fieldName: "immigrationApprovalDate");
  static final REENTRYVISAEXPIRY = amplify_core.QueryField(fieldName: "reEntryVisaExpiry");
  static final AIRTICKETSTATUS = amplify_core.QueryField(fieldName: "airTicketStatus");
  static final REMARKS = amplify_core.QueryField(fieldName: "remarks");
  static final DEPENDENTNAME = amplify_core.QueryField(fieldName: "dependentName");
  static final DEPENDENTPASSPORTNUMBER = amplify_core.QueryField(fieldName: "dependentPassportNumber");
  static final DEPENDENTPASSPORTEXPIRY = amplify_core.QueryField(fieldName: "dependentPassportExpiry");
  static final RELATION = amplify_core.QueryField(fieldName: "relation");
  static final LABOURDEPOSITPAIDBY = amplify_core.QueryField(fieldName: "labourDepositPaidBy");
  static final LABOURDEPOSITRECEIPTNUMBER = amplify_core.QueryField(fieldName: "labourDepositReceiptNumber");
  static final LABOURDEPOSITAMOUNT = amplify_core.QueryField(fieldName: "labourDepositAmount");
  static final LABOURUPLOADDOC = amplify_core.QueryField(fieldName: "labourUploadDoc");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "LabourDetails";
    modelSchemaDefinition.pluralName = "LabourDetails";
    
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
      key: LabourDetails.EMPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.WORKPERMITTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.ARRIVALSTAMPINGEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.EMPLOYMENTPASSENDORSEMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.IMMIGRATIONDEPTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.EMPLOYMENTPASSEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.EMPLOYMENTPASSSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.OVERSEASMEDICALDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.OVERSEASMEDICALEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.BRUHIMSREGISTRATIONDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.BRUHIMSREGISTRATIONNUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.BRUNEIMEDICALAPPOINTMENTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.BRUNEIMEDICALEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.PASSPORTLOCATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.REENTRYVISAAPPLICATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.IMMIGRATIONAPPROVALDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.REENTRYVISAEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.AIRTICKETSTATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.REMARKS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.DEPENDENTNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.DEPENDENTPASSPORTNUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.DEPENDENTPASSPORTEXPIRY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.RELATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.LABOURDEPOSITPAIDBY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.LABOURDEPOSITRECEIPTNUMBER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.LABOURDEPOSITAMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: LabourDetails.LABOURUPLOADDOC,
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

class _LabourDetailsModelType extends amplify_core.ModelType<LabourDetails> {
  const _LabourDetailsModelType();
  
  @override
  LabourDetails fromJson(Map<String, dynamic> jsonData) {
    return LabourDetails.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'LabourDetails';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [LabourDetails] in your schema.
 */
class LabourDetailsModelIdentifier implements amplify_core.ModelIdentifier<LabourDetails> {
  final String id;

  /** Create an instance of LabourDetailsModelIdentifier using [id] the primary key. */
  const LabourDetailsModelIdentifier({
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
  String toString() => 'LabourDetailsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is LabourDetailsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}