import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';

import '../../../core/components/custom_rounded_back_button.dart';
import '../../../core/components/label_text.dart';
import '../../../core/resources/styles_manager.dart';
import '../../experts/components/top_rated_expert_item.dart';
import '../../home/components/book_consultant_item.dart';

class ExamResultScreen extends StatelessWidget {
  const ExamResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CustomRoundedBackButton(),
                  Text(
                    StringsManager.examResult,
                    style: StylesManager.textStyle16BlackSemiBold
                        .copyWith(fontWeight: FontWeight.normal),
                  )
                ],
              ),
              39.h.ph,
              Center(
                child: Text(
                  StringsManager.yourResultShow,
                  style: StylesManager.textStyle16GrayRegular
                      .copyWith(color: ColorsManager.hintGreyColor),
                ),
              ),
              16.h.ph,
              Center(
                child: CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 10.0,
                  arcType: ArcType.HALF,
                  circularStrokeCap: CircularStrokeCap.round,
                  percent: 0.5,
                  center: Text(
                    "إضطراب وسواس قهرى",
                    textAlign: TextAlign.center,
                    style: StylesManager.textStyle16BlackRegular
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  progressColor: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "يظهر أن لديك اضطراب وسواس قهرى بشكل مرتفع, الجيد هو أنه تقوم بالمتابعة مع مختص للتخلص من هذه الحالة",
                  style: StylesManager.textStyle14GreyRegular,
                ),
              ),
              29.h.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  StringsManager.recommendAnImmediateSession,
                  style: StylesManager.textStyle14BlackRegular
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ),
              16.h.ph,
              SizedBox(
                height: 215.h,
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const TopRatedExpertItem();
                    },
                    separatorBuilder: (context, index) {
                      return 12.w.pw;
                    },
                    itemCount: 3),
              ),
              24.h.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  StringsManager.bookConsultationNow,
                  style: StylesManager.textStyle14BlackRegular
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ),
              16.h.ph,
              SizedBox(
                height: 140.h,
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const BookConsultantItem();
                    },
                    separatorBuilder: (context, index) {
                      return 16.w.pw;
                    },
                    itemCount: 2),
              ),
              24.h.ph,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    color: ColorsManager.lighterWhiteColor,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                        color: ColorsManager.lighterWhiteBorderColor)),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: ColorsManager.secondaryDarkColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(ImagesManager.examChoice),
                    ),
                    16.w.pw,
                    Expanded(
                      child: Text(
                          StringsManager
                              .sendNotificationToStartExamEverySixWeeks,
                          style: StylesManager.textStyle16GrayRegular),
                    ),
                    Switch.adaptive(value: false, onChanged: (value) {})
                  ],
                ),
              ),
              24.h.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: DefaultButtonWidget(
                    function: () {}, text: StringsManager.backToExams),
              ),
              10.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
