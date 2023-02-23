import 'package:flutter/material.dart';

import '../String Constant File/text_string_file.dart';

class jobTypeModel {
  final IconData? icons;
  final String? Tital;
  final String? subText;

  jobTypeModel({
    this.icons,
    this.Tital,
    this.subText,
  });
}

List<jobTypeModel> joblist = [
  jobTypeModel(icons: Icons.work, Tital: find_a_job, subText: find_a_job_sub),
  jobTypeModel(
      icons: Icons.switch_account,
      Tital: find_an_employee,
      subText: find_an_employee_sub),
];
