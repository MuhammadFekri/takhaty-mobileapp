import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/styles_manager.dart';

class ExamStepItem extends StatelessWidget {
  const ExamStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h, left: 16.w, right: 16.w),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: Colors.white,
          shadowColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Text(
              "1- الإجابة على الأسئلة المطروحة.",
              style: StylesManager.textStyle14GrayRegular
                  .copyWith(color: ColorsManager.grey2Color),
            ),
          ),
        ),
      ),
    );
  }
}
