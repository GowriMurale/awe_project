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

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'CandidateApplicationForm.dart';
import 'CvevSchema.dart';
import 'EmployeeInfo.dart';
import 'EmployeeNonLocalAcco.dart';
import 'InterviewScheduleSchema.dart';
import 'InterviewSchema.dart';
import 'LabourDetails.dart';
import 'LeaveStatus.dart';
import 'PaafSchema.dart';
import 'SampleTest1.dart';
import 'SelectedCandidateSchema.dart';
import 'Todo.dart';
import 'User.dart';
import 'WorkInfoSchema.dart';

export 'CandidateApplicationForm.dart';
export 'CvevSchema.dart';
export 'EmployeeInfo.dart';
export 'EmployeeNonLocalAcco.dart';
export 'InterviewScheduleSchema.dart';
export 'InterviewSchema.dart';
export 'LabourDetails.dart';
export 'LeaveStatus.dart';
export 'PaafSchema.dart';
export 'SampleTest1.dart';
export 'SelectedCandidateSchema.dart';
export 'Todo.dart';
export 'User.dart';
export 'WorkInfoSchema.dart';

class ModelProvider implements amplify_core.ModelProviderInterface {
  @override
  String version = "13527bc4bae2323f4f16490007b4f4dd";
  @override
  List<amplify_core.ModelSchema> modelSchemas = [CandidateApplicationForm.schema, CvevSchema.schema, EmployeeInfo.schema, EmployeeNonLocalAcco.schema, InterviewScheduleSchema.schema, InterviewSchema.schema, LabourDetails.schema, LeaveStatus.schema, PaafSchema.schema, SampleTest1.schema, SelectedCandidateSchema.schema, Todo.schema, User.schema, WorkInfoSchema.schema];
  @override
  List<amplify_core.ModelSchema> customTypeSchemas = [];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  amplify_core.ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "CandidateApplicationForm":
        return CandidateApplicationForm.classType;
      case "CvevSchema":
        return CvevSchema.classType;
      case "EmployeeInfo":
        return EmployeeInfo.classType;
      case "EmployeeNonLocalAcco":
        return EmployeeNonLocalAcco.classType;
      case "InterviewScheduleSchema":
        return InterviewScheduleSchema.classType;
      case "InterviewSchema":
        return InterviewSchema.classType;
      case "LabourDetails":
        return LabourDetails.classType;
      case "LeaveStatus":
        return LeaveStatus.classType;
      case "PaafSchema":
        return PaafSchema.classType;
      case "SampleTest1":
        return SampleTest1.classType;
      case "SelectedCandidateSchema":
        return SelectedCandidateSchema.classType;
      case "Todo":
        return Todo.classType;
      case "User":
        return User.classType;
      case "WorkInfoSchema":
        return WorkInfoSchema.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}


class ModelFieldValue<T> {
  const ModelFieldValue.value(this.value);

  final T value;
}
