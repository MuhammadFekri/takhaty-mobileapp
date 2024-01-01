import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

class SuccessDialog extends StatelessWidget {
  final String title;
  const SuccessDialog({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 48.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(ImagesManager.successCalender),
            22.h.ph,
            Text(
              title,
              textAlign: TextAlign.center,
              style: StylesManager.textStyle16BlackRegular
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            24.h.ph,
            DefaultButtonWidget(
              function: () {},
              text: StringsManager.backToHome,
              width: 200.w,
            )
          ],
        ),
      ),
    );
  }
}
