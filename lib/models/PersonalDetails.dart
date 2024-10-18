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


/** This is an auto generated class representing the PersonalDetails type in your schema. */
class PersonalDetails extends amplify_core.Model {
  static const classType = const _PersonalDetailsModelType();
  final String id;
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const PersonalDetails._internal({required this.id, icNo, icExpiry, icColour, passportNo, alternateNo, passportIssued, passportExpiry, passportDestination, required contactNo, required presentAddress, createdAt, updatedAt}): _icNo = icNo, _icExpiry = icExpiry, _icColour = icColour, _passportNo = passportNo, _alternateNo = alternateNo, _passportIssued = passportIssued, _passportExpiry = passportExpiry, _passportDestination = passportDestination, _contactNo = contactNo, _presentAddress = presentAddress, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PersonalDetails({String? id, String? icNo, String? icExpiry, String? icColour, String? passportNo, String? alternateNo, String? passportIssued, String? passportExpiry, String? passportDestination, required String contactNo, required String presentAddress}) {
    return PersonalDetails._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      icNo: icNo,
      icExpiry: icExpiry,
      icColour: icColour,
      passportNo: passportNo,
      alternateNo: alternateNo,
      passportIssued: passportIssued,
      passportExpiry: passportExpiry,
      passportDestination: passportDestination,
      contactNo: contactNo,
      presentAddress: presentAddress);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonalDetails &&
      id == other.id &&
      _icNo == other._icNo &&
      _icExpiry == other._icExpiry &&
      _icColour == other._icColour &&
      _passportNo == other._passportNo &&
      _alternateNo == other._alternateNo &&
      _passportIssued == other._passportIssued &&
      _passportExpiry == other._passportExpiry &&
      _passportDestination == other._passportDestination &&
      _contactNo == other._contactNo &&
      _presentAddress == other._presentAddress;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PersonalDetails {");
    buffer.write("id=" + "$id" + ", ");
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
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PersonalDetails copyWith({String? icNo, String? icExpiry, String? icColour, String? passportNo, String? alternateNo, String? passportIssued, String? passportExpiry, String? passportDestination, String? contactNo, String? presentAddress}) {
    return PersonalDetails._internal(
      id: id,
      icNo: icNo ?? this.icNo,
      icExpiry: icExpiry ?? this.icExpiry,
      icColour: icColour ?? this.icColour,
      passportNo: passportNo ?? this.passportNo,
      alternateNo: alternateNo ?? this.alternateNo,
      passportIssued: passportIssued ?? this.passportIssued,
      passportExpiry: passportExpiry ?? this.passportExpiry,
      passportDestination: passportDestination ?? this.passportDestination,
      contactNo: contactNo ?? this.contactNo,
      presentAddress: presentAddress ?? this.presentAddress);
  }
  
  PersonalDetails copyWithModelFieldValues({
    ModelFieldValue<String?>? icNo,
    ModelFieldValue<String?>? icExpiry,
    ModelFieldValue<String?>? icColour,
    ModelFieldValue<String?>? passportNo,
    ModelFieldValue<String?>? alternateNo,
    ModelFieldValue<String?>? passportIssued,
    ModelFieldValue<String?>? passportExpiry,
    ModelFieldValue<String?>? passportDestination,
    ModelFieldValue<String>? contactNo,
    ModelFieldValue<String>? presentAddress
  }) {
    return PersonalDetails._internal(
      id: id,
      icNo: icNo == null ? this.icNo : icNo.value,
      icExpiry: icExpiry == null ? this.icExpiry : icExpiry.value,
      icColour: icColour == null ? this.icColour : icColour.value,
      passportNo: passportNo == null ? this.passportNo : passportNo.value,
      alternateNo: alternateNo == null ? this.alternateNo : alternateNo.value,
      passportIssued: passportIssued == null ? this.passportIssued : passportIssued.value,
      passportExpiry: passportExpiry == null ? this.passportExpiry : passportExpiry.value,
      passportDestination: passportDestination == null ? this.passportDestination : passportDestination.value,
      contactNo: contactNo == null ? this.contactNo : contactNo.value,
      presentAddress: presentAddress == null ? this.presentAddress : presentAddress.value
    );
  }
  
  PersonalDetails.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
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
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'icNo': _icNo, 'icExpiry': _icExpiry, 'icColour': _icColour, 'passportNo': _passportNo, 'alternateNo': _alternateNo, 'passportIssued': _passportIssued, 'passportExpiry': _passportExpiry, 'passportDestination': _passportDestination, 'contactNo': _contactNo, 'presentAddress': _presentAddress, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
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
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PersonalDetailsModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PersonalDetailsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
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
      key: PersonalDetails.ICNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.ICEXPIRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.ICCOLOUR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PASSPORTNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.ALTERNATENO,
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
      key: PersonalDetails.CONTACTNO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PersonalDetails.PRESENTADDRESS,
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