import 'package:flutter/material.dart';

import '../resources/strings_manager.dart';
import '../resources/styles_manager.dart';

class LabelText extends StatelessWidget {
  final String title;
  const LabelText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: StylesManager.textStyle16BlackRegular,
    );
  }
}
