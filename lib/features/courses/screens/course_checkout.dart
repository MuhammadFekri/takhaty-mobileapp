import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/components/label_text.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/router/routes.dart';
import 'package:takhaty/features/courses/components/course_details_section.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class CourseCheckOutScreen extends StatelessWidget {
  const CourseCheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.reserveDetails),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.secondary4),
                  color: ColorsManager.primaryLightColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(StringsManager.courseReservationDetails,
                        style: StylesManager.textStyle14GrayRegular),
                    16.h.ph,
                    Text("التخلص من الإكتئاب",
                        style: StylesManager.textStyle16BlackRegular),
                  ],
                ),
              ),
              16.h.ph,
              const CourseDetailsSection(),
              24.h.ph,
              LabelText(title: StringsManager.discountCoupon),
              16.h.ph,
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorsManager.hintGreyColor)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: StringsManager.enterCouponCode),
                      ),
                    ),
                    DefaultButtonWidget(
                      width: 81.w,
                      function: () {},
                      text: StringsManager.apply,
                      disable: true,
                    )
                  ],
                ),
              ),
              16.h.ph,
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringsManager.checkOutDetails,
                        style: StylesManager.textStyle14GrayRegular
                            .copyWith(color: ColorsManager.grey2Color),
                      ),
                      24.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.cost,
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                          Text(
                            "300 ${StringsManager.currency}",
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                        ],
                      ),
                      24.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.tax,
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                          Text(
                            "300 ${StringsManager.currency}",
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                        ],
                      ),
                      24.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.discount,
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                          Text(
                            "300 ${StringsManager.currency}",
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                        ],
                      ),
                      24.h.ph,
                      const Divider(),
                      24.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.total,
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                          Text(
                            "300 ${StringsManager.currency}",
                            style: StylesManager.textStyle18WhiteLight.copyWith(
                                color: ColorsManager.primaryColor,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              16.h.ph,
              Center(
                child: Text(
                  StringsManager.youCanPayWith,
                  style: StylesManager.textStyle14GrayRegular,
                ),
              ),
              27.h.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(ImagesManager.wallet),
                    SvgPicture.asset(ImagesManager.amazonPay),
                    SvgPicture.asset(ImagesManager.visa),
                    SvgPicture.asset(ImagesManager.mastercard),
                  ],
                ),
              ),
              24.h.ph,
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringsManager.payWithWallet,
                        style: StylesManager.textStyle16GrayRegular,
                      ),
                      Switch.adaptive(
                        value: false,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
              ),
              32.h.ph,
              DefaultButtonWidget(
                  function: () {
                    context.push(AppRouter.completePaymentScreen);
                  },
                  text: StringsManager.payNow),
              16.h.ph,
              Center(
                child: SizedBox(
                  width: 311,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'بالضغط على متابعة فإنك توافق على',
                          style: StylesManager.textStyle14BlackRegular,
                        ),
                        TextSpan(
                          text: 'الشروط والأحكام وسياسة الخصوصية',
                          style: StylesManager.textStyle14PrimaryBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              10.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
