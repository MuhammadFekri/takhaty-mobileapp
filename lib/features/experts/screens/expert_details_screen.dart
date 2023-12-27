import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/components/label_text.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/router/routes.dart';
import 'package:takhaty/features/experts/components/rating_item.dart';
import 'package:takhaty/features/search/components/custom_filter_chip_widget.dart';

import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';
import '../../search/components/custom_expert_action.dart';
import '../components/expert_data_item.dart';
import '../components/program_item.dart';

class ExpertDetailsScreen extends StatelessWidget {
  const ExpertDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.expertDetails),
        actions: const [
          CustomExpertAction(icon: ImagesManager.share),
          CustomExpertAction(icon: ImagesManager.fav),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.h.ph,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsManager.primaryColor),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/50x50"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(4.5.h),
                              decoration: const BoxDecoration(
                                  color: ColorsManager.primaryColor,
                                  shape: BoxShape.circle),
                              height: 24.h,
                              width: 24.w,
                              child:
                                  SvgPicture.asset(ImagesManager.recommended),
                            )
                          ],
                        ),
                        12.w.pw,
                        Text(
                          "د.رضوى محمد",
                          style: StylesManager.textStyle18WhiteLight.copyWith(
                              color: ColorsManager.blackColor,
                              fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            color: ColorsManager.primaryLightColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            "أخصائى نفسي",
                            style: StylesManager.textStyle12BlackRegular
                                .copyWith(
                                    color: ColorsManager.primaryColor,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  16.h.ph,
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
                                icon: ImagesManager.type,
                                label: StringsManager.type,
                                data: "أسرية",
                              ),
                              16.h.ph,
                              ExpertDataItem(
                                icon: ImagesManager.presentation,
                                label: StringsManager.presentation,
                                data: "صوت/فيديو",
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ExpertDataItem(
                              icon: ImagesManager.time,
                              label: StringsManager.nearestTime,
                              data: "20 نوفمبر. 01:45 م",
                            ),
                            16.h.ph,
                            ExpertDataItem(
                              icon: ImagesManager.language,
                              label: StringsManager.language,
                              data: "اللغة العربية",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  24.h.ph,
                  LabelText(title: StringsManager.aboutExpert),
                  12.h.ph,
                  Text(
                    "أخصائى مساعد حاصلة على درجة الماجيستير فى علم النفس جامعة القاهرة و ماجيستير صحة نفسية من جامعة الإسكندرية.",
                    style: StylesManager.textStyle14GreyRegular,
                  ),
                  24.h.ph,
                  LabelText(title: StringsManager.specialties),
                  12.h.ph,
                  Wrap(
                    spacing: 10.w,
                    children: List.generate(5,
                        (index) => const CustomFilterChip(title: "صمت الزوج")),
                  ),
                  24.h.ph,
                  LabelText(title: StringsManager.programs),
                  16.h.ph,
                  SizedBox(
                    height: 180.h,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProgramItem();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 16.w);
                        },
                        itemCount: 3),
                  ),
                  24.h.ph,
                  LabelText(title: StringsManager.ratings),
                  16.h.ph,
                  Row(
                    children: [
                      Text(
                        "4.5",
                        style: StylesManager.textStyle24BlackBold,
                      ),
                      10.w.pw,
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        ignoreGestures: true,
                        itemCount: 5,
                        itemSize: 20.w,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      )
                    ],
                  ),
                  24.h.ph,
                  ...List.generate(5, (index) {
                    return const RatingItem();
                  })
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "500 ${StringsManager.currencyPerHour2}",
                        style: StylesManager.textStyle16BlackRegular
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "${StringsManager.insteadOf} 650 ${StringsManager.currency}",
                        style: StylesManager.textStyle14GreyRegular.copyWith(
                            color: ColorsManager.grey2Color,
                            decorationColor: ColorsManager.grey2Color,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  DefaultButtonWidget(
                      width: 115.w,
                      function: () {
                        context.push(AppRouter.addAppointmentScreen);
                      },
                      text: StringsManager.reserveNow)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
