import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/core/router/routes.dart';
import 'package:takhaty/features/categories/components/answer_item.dart';

import '../../../core/components/custom_rounded_back_button.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CustomRoundedBackButton(),
                Text(
                  "إختبار اضطراب الوسواس القهرى",
                  style: StylesManager.textStyle16BlackSemiBold
                      .copyWith(fontWeight: FontWeight.normal),
                )
              ],
            ),
            24.h.ph,
            SingleChildScrollView(
              child: Card(
                color: ColorsManager.lighterWhiteColor,
                shadowColor: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 24.h, right: 16.w, left: 16.w, bottom: 32.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "تسيطر عليك أفكار عدوانية ؟",
                              style: StylesManager.textStyle18BlackRegular,
                            ),
                          ),
                          Text(
                            "1/30",
                            style: StylesManager.textStyle16BlackSemiBold
                                .copyWith(
                                    color: ColorsManager.primaryColor,
                                    fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      32.h.ph,
                      ...List.generate(2, (index) {
                        return const AnswerItem();
                      }),
                      64.h.ph,
                      Row(
                        children: [
                          Expanded(
                            child: DefaultButtonWidget(
                              function: () {},
                              text: StringsManager.previous,
                              disable: true,
                            ),
                          ),
                          15.w.pw,
                          Expanded(
                            child: DefaultButtonWidget(
                              function: () {},
                              text: StringsManager.next,
                            ),
                          ),
                        ],
                      ),
                      24.h.ph,
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            context.push(AppRouter.examResultScreen);
                          },
                          child: Text(
                            StringsManager.finishExam,
                            style: StylesManager.textStyle16GrayRegular
                                .copyWith(
                                    color: ColorsManager.grey2Color,
                                    decoration: TextDecoration.underline,
                                    decorationColor: ColorsManager.grey2Color),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
