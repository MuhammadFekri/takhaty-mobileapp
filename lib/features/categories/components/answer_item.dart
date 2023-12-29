import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/styles_manager.dart';

class AnswerItem extends StatelessWidget {
  const AnswerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 24.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorsManager.primaryColor),
      ),
      child: Text(
        "1- الإجابة على الأسئلة المطروحة.",
        style: StylesManager.textStyle16BlackRegular
            .copyWith(color: ColorsManager.grey2Color),
      ),
    );
  }
}
