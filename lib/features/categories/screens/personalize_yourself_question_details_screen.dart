import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/core/router/routes.dart';
import 'package:takhaty/features/categories/components/exam_step_item.dart';

import '../../../core/components/custom_rounded_back_button.dart';

class PersonalizeYourselfQuestionDetailsScreen extends StatelessWidget {
  const PersonalizeYourselfQuestionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 375.w,
                          height: 262.h,
                          decoration: const BoxDecoration(
                              color: ColorsManager.grey4Color),
                        ),
                        CustomRoundedBackButton()
                      ],
                    ),
                    24.h.ph,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "إختبار اضطراب الوسواس القهرى",
                              style: StylesManager.textStyle16BlackSemiBold
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                          ),
                          SvgPicture.asset(
                            ImagesManager.community,
                            color: ColorsManager.primaryColor,
                          ),
                          8.w.pw,
                          Text(
                            "+3.5k",
                            style: StylesManager.textStyle16BlackSemiBold
                                .copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: ColorsManager.primaryColor),
                          )
                        ],
                      ),
                    ),
                    16.h.ph,
                    Padding(
                      padding: EdgeInsets.only(right: 16.w, left: 40.w),
                      child: Text(
                        "كيف تعرف ان لديك وسواس قهرى ؟ وكيف تعرف درجة شدته لديك؟",
                        style: StylesManager.textStyle14GreyRegular
                            .copyWith(color: ColorsManager.grey2Color),
                      ),
                    ),
                    16.h.ph,
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.w),
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 16.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: ColorsManager.redColor),
                          color: ColorsManager.redLightColor),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(ImagesManager.alarm),
                          12.w.pw,
                          Expanded(
                            child: Text(
                              "مجموعة من الإختبارات و الأسئلة التى تعطيك تقيماً سريعاً لحالتك ومعرفة مستوى شدة ما تعانى منه ولا تغنى عن إستشارة الطبيب.",
                              style: StylesManager.textStyle14BlackRegular
                                  .copyWith(color: ColorsManager.redColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    24.h.ph,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        StringsManager.examSteps,
                        style: StylesManager.textStyle16BlackSemiBold
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                    ),
                    16.h.ph,
                    ...List.generate(3, (index) => ExamStepItem())
                  ],
                ),
              ),
            ),
            10.h.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: DefaultButtonWidget(
                  function: () {
                    context.push(AppRouter.examScreen);
                  },
                  text: StringsManager.startExam),
            ),
            10.h.ph,
          ],
        ),
      ),
    );
  }
}
