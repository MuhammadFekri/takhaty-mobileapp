import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/components/success_dialog.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/components/default_button.dart';
import '../../../core/components/text_field_with_label.dart';
import '../../../core/resources/strings_manager.dart';

class LectureRegisterScreen extends StatelessWidget {
  const LectureRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.lectureRegistration),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.h.ph,
                    Text(StringsManager.name),
                    16.h.ph,
                    const DefaultTextField(
                      keyboardType: TextInputType.name,
                      inputAction: TextInputAction.done,
                    ),
                    24.h.ph,
                    Text(StringsManager.phoneNumber),
                    16.h.ph,
                    const DefaultTextField(
                      keyboardType: TextInputType.phone,
                      inputAction: TextInputAction.done,
                    ),
                    24.h.ph,
                    Text(StringsManager.email),
                    16.h.ph,
                    const DefaultTextField(
                      keyboardType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: DefaultButtonWidget(
                  function: () {
                    showDialog(
                      context: context,
                      builder: (context) => SuccessDialog(
                          title: StringsManager.registerLectureSuccess),
                    );
                  },
                  text: StringsManager.confirm),
            ),
            10.h.ph
          ],
        ),
      ),
    );
  }
}
