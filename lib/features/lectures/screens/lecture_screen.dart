import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/custom_rounded_back_button.dart';
import 'package:takhaty/core/components/label_text.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/features/courses/components/course_goal_item.dart';

import '../../../core/components/default_button.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/router/routes.dart';
import '../../experts/components/expert_data_item.dart';
import '../../search/components/custom_expert_action.dart';
import '../components/lecture_goal_item.dart';

class LectureScreen extends StatelessWidget {
  const LectureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 340.h,
                flexibleSpace: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 302.h,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/375x302"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          height: 40.h,
                        )
                      ],
                    ),
                    const Positioned(
                        right: 0, top: 16, child: CustomRoundedBackButton()),
                    Positioned(
                      bottom: 40.h,
                      left: 16.w,
                      right: 16.w,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: ColorsManager.grey8Color),
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "التخلص من الإكتئاب",
                              style: StylesManager.textStyle16BlackRegular
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                            8.h.ph,
                            Row(
                              children: [
                                SizedBox(
                                  height: 16.h,
                                  width: 16.w,
                                  child: SvgPicture.asset(
                                    ImagesManager.community,
                                    color: ColorsManager.primaryColor,
                                  ),
                                ),
                                8.w.pw,
                                Text(
                                  "20 ${StringsManager.placesRemaining}",
                                  style: StylesManager.textStyle14GrayRegular,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.w,
                      bottom: 20.h,
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomExpertAction(
                              icon: ImagesManager.share,
                              radius: 44,
                              padding: 10),
                          CustomExpertAction(
                            icon: ImagesManager.fav,
                            radius: 44,
                            padding: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ];
          },
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: ColorsManager.grey5Color),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ExpertDataItem(
                                    icon: ImagesManager.health,
                                    label: StringsManager.lecturer,
                                    data: "د.رضوى محمد",
                                  ),
                                  16.h.ph,
                                  ExpertDataItem(
                                    icon: ImagesManager.presentation,
                                    label: StringsManager.lecturePresentation,
                                    data: "صوت",
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ExpertDataItem(
                                  icon: ImagesManager.time,
                                  label: StringsManager.lecturePeriod,
                                  data: "1 ${StringsManager.hours}",
                                ),
                                16.h.ph,
                                ExpertDataItem(
                                  icon: ImagesManager.appointmentCalender,
                                  label: StringsManager.dateAndTime,
                                  data: "4:00 pm - 22/12/2023",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      24.h.ph,
                      Text(
                        StringsManager.lectureDetails,
                        style: StylesManager.textStyle16BlackRegular
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      16.h.ph,
                      Card(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 12.h),
                          child: Text(
                            "نهدف فى هذه الدورة الى التوصل لحلول علمية وعملية للتخلص والتعافى الدائم من الإكتئاب وأثره على النفس. فى هذه الدورة ستكون لك القدرة على مشاركة افكارك و كل ما تشعر به و القيام بتحليله وتقديم كل الحلول الممكنة للوصول بحالتك إلى الأفضل.",
                            style: StylesManager.textStyle14GrayRegular,
                          ),
                        ),
                      ),
                      24.h.ph,
                      Text(
                        StringsManager.lectureGoals,
                        style: StylesManager.textStyle16BlackRegular
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      20.h.ph,
                      ...List.generate(4, (index) {
                        return const LectureGoalItem();
                      }),
                      12.h.ph,
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 12.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: ColorsManager.redColor),
                          color: ColorsManager.redLightColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(ImagesManager.alert),
                                8.w.pw,
                                Text(
                                  StringsManager.returnAndCancellationPolicy,
                                  style: StylesManager.textStyle14BlackRegular
                                      .copyWith(color: ColorsManager.redColor),
                                )
                              ],
                            ),
                            12.h.ph,
                            Text(
                              StringsManager
                                  .youCanCancelYourOrder24HoursBeforeLecture,
                              style: StylesManager.textStyle14GrayRegular
                                  .copyWith(color: ColorsManager.grey9Color),
                            )
                          ],
                        ),
                      ),
                      50.h.ph
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: DefaultButtonWidget(
                    function: () {
                      context.push(AppRouter.lectureRegisterScreen);
                    },
                    text: StringsManager.registerNow),
              ),
              10.h.ph
            ],
          )),
    );
  }
}
